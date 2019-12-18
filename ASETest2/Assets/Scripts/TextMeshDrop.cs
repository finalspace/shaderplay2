using UnityEngine;
using System.Collections;


namespace TMPro.Examples
{

    public class TextMeshDrop : MonoBehaviour
    {
        public float DropHeight = 1.0f;
        public float DropTime = 1.0f;
        public float TimeDiff = 0.1f;

        private float scaleTime = 0.1f;

        private bool playing = false;
        private System.DateTime startTime;
        private float totalTime = 0f;
        private float timeElapse = 0f;
        private float er = 0.0f;

        private TMP_TextInfo textInfo;
        private int characterCount = 0;
        private Matrix4x4 matrix;
        TMP_MeshInfo[] cachedMeshInfo;
        private TMP_Text m_TextComponent;

        void Awake()
        {
            m_TextComponent = GetComponent<TMP_Text>();
        }

        private void Start()
        {
            Play();
        }

        private void Update()
        {
            if (!playing)
            {
                return;
            }

            timeElapse = (float)(System.DateTime.UtcNow - startTime).TotalSeconds;
            if (timeElapse > totalTime)
            {
                playing = false;
            }

            UpdateText();
        }

        private void Play()
        {
            m_TextComponent.ForceMeshUpdate();
            textInfo = m_TextComponent.textInfo;

            // Cache the vertex data of the text object as the Jitter FX is applied to the original position of the characters.
            cachedMeshInfo = textInfo.CopyMeshInfoVertexData();

            characterCount = textInfo.characterCount;
            if (characterCount == 0)
            {
                return;
            }

            InitPosition();
            Reset();     
        }

        private void Reset()
        {
            startTime = System.DateTime.UtcNow;
            totalTime = characterCount * TimeDiff + DropTime;
            playing = true;
        }


        private void InitPosition()
        {
            for(int i = 0; i < characterCount; i++)
            {
                TMP_CharacterInfo charInfo = textInfo.characterInfo[i];
                // Skip characters that are not visible and thus have no geometry to manipulate.
                if (!charInfo.isVisible)
                    continue;

                // Get the index of the material used by the current character.
                int materialIndex = textInfo.characterInfo[i].materialReferenceIndex;

                // Get the index of the first vertex used by this text element.
                int vertexIndex = textInfo.characterInfo[i].vertexIndex;

                // Get the cached vertices of the mesh used by this text element (character or sprite).
                Vector3[] sourceVertices = cachedMeshInfo[materialIndex].vertices;

                // Determine the center point of each character at the baseline.
                //Vector2 charMidBasline = new Vector2((sourceVertices[vertexIndex + 0].x + sourceVertices[vertexIndex + 2].x) / 2, charInfo.baseLine);
                // Determine the center point of each character.
                Vector2 charMidTopBasline = new Vector2((sourceVertices[vertexIndex + 0].x + sourceVertices[vertexIndex + 2].x) / 2, charInfo.bottomRight.y);

                // Need to translate all 4 vertices of each quad to aligned with middle of character / baseline.
                // This is needed so the matrix TRS is applied at the origin for each character.
                Vector3 offset = charMidTopBasline;

                Vector3[] destinationVertices = textInfo.meshInfo[materialIndex].vertices;

                destinationVertices[vertexIndex + 0] = sourceVertices[vertexIndex + 0] - offset;
                destinationVertices[vertexIndex + 1] = sourceVertices[vertexIndex + 1] - offset;
                destinationVertices[vertexIndex + 2] = sourceVertices[vertexIndex + 2] - offset;
                destinationVertices[vertexIndex + 3] = sourceVertices[vertexIndex + 3] - offset;

                Vector3 newPosition = new Vector3(0, DropHeight, 0);
                matrix = Matrix4x4.TRS(newPosition, Quaternion.identity, Vector3.one);

                destinationVertices[vertexIndex + 0] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 0]);
                destinationVertices[vertexIndex + 1] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 1]);
                destinationVertices[vertexIndex + 2] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 2]);
                destinationVertices[vertexIndex + 3] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 3]);

                destinationVertices[vertexIndex + 0] += offset;
                destinationVertices[vertexIndex + 1] += offset;
                destinationVertices[vertexIndex + 2] += offset;
                destinationVertices[vertexIndex + 3] += offset;
            }

            // Push changes into meshes
            for (int i = 0; i < textInfo.meshInfo.Length; i++)
            {
                textInfo.meshInfo[i].mesh.vertices = textInfo.meshInfo[i].vertices;
                m_TextComponent.UpdateGeometry(textInfo.meshInfo[i].mesh, i);
            }
        }

        private void UpdateText()
        {
            for (int i = 0; i < characterCount; i++)
            {
                TMP_CharacterInfo charInfo = textInfo.characterInfo[i];
                // Skip characters that are not visible and thus have no geometry to manipulate.
                if (!charInfo.isVisible)
                    continue;


                float st = i * TimeDiff;
                float ed = i * TimeDiff + DropTime;
                //if does not fall in the window, ignore
                /*
                if (timeElapse < st - er || timeElapse > ed + er)
                    continue;
                */

                float p = (Mathf.Clamp(timeElapse, st, ed) - st) / DropTime;
                float h = Mathf.Lerp(DropHeight, 0, p);
                Vector3 newPosition = new Vector3(0, h, 0);


                float h_scale = 1;
                float t1_scale = i * TimeDiff;
                float t2_scale = i * TimeDiff + DropTime;
                float t3_scale = i * TimeDiff + DropTime + scaleTime;
                float t4_scale = i * TimeDiff + DropTime + scaleTime * 2f;


                if (timeElapse < t2_scale)
                    h_scale = 1.5f;
                else if (timeElapse > t4_scale)
                    h_scale = 1.0f;
                else if (timeElapse > t2_scale && timeElapse < t3_scale)
                {
                    float p_scale = (Mathf.Clamp(timeElapse, t2_scale, t3_scale) - t2_scale) / scaleTime;
                    h_scale = Mathf.Lerp(1.5f, 0.8f, p_scale);
                }
                else
                {
                    float p_scale = (Mathf.Clamp(timeElapse, t3_scale, t4_scale) - t3_scale) / scaleTime;
                    h_scale = Mathf.Lerp(0.8f, 1.0f, p_scale);
                }
                Vector3 newScale = new Vector3(1, h_scale, 0);

                // Get the index of the material used by the current character.
                int materialIndex = textInfo.characterInfo[i].materialReferenceIndex;

                // Get the index of the first vertex used by this text element.
                int vertexIndex = textInfo.characterInfo[i].vertexIndex;

                // Get the cached vertices of the mesh used by this text element (character or sprite).
                Vector3[] sourceVertices = cachedMeshInfo[materialIndex].vertices;

                // Determine the center point of each character at the baseline.
                //Vector2 charMidBasline = new Vector2((sourceVertices[vertexIndex + 0].x + sourceVertices[vertexIndex + 2].x) / 2, charInfo.baseLine);
                // Determine the center point of each character.
                Vector2 charMidTopBasline = new Vector2((sourceVertices[vertexIndex + 0].x + sourceVertices[vertexIndex + 2].x) / 2, charInfo.bottomRight.y);

                // Need to translate all 4 vertices of each quad to aligned with middle of character / baseline.
                // This is needed so the matrix TRS is applied at the origin for each character.
                Vector3 offset = charMidTopBasline;

                Vector3[] destinationVertices = textInfo.meshInfo[materialIndex].vertices;

                destinationVertices[vertexIndex + 0] = sourceVertices[vertexIndex + 0] - offset;
                destinationVertices[vertexIndex + 1] = sourceVertices[vertexIndex + 1] - offset;
                destinationVertices[vertexIndex + 2] = sourceVertices[vertexIndex + 2] - offset;
                destinationVertices[vertexIndex + 3] = sourceVertices[vertexIndex + 3] - offset;

                matrix = Matrix4x4.TRS(newPosition, Quaternion.identity, newScale);

                destinationVertices[vertexIndex + 0] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 0]);
                destinationVertices[vertexIndex + 1] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 1]);
                destinationVertices[vertexIndex + 2] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 2]);
                destinationVertices[vertexIndex + 3] = matrix.MultiplyPoint3x4(destinationVertices[vertexIndex + 3]);

                destinationVertices[vertexIndex + 0] += offset;
                destinationVertices[vertexIndex + 1] += offset;
                destinationVertices[vertexIndex + 2] += offset;
                destinationVertices[vertexIndex + 3] += offset;
            }

            // Push changes into meshes
            for (int i = 0; i < textInfo.meshInfo.Length; i++)
            {
                textInfo.meshInfo[i].mesh.vertices = textInfo.meshInfo[i].vertices;
                m_TextComponent.UpdateGeometry(textInfo.meshInfo[i].mesh, i);
            }
        }

    }
}