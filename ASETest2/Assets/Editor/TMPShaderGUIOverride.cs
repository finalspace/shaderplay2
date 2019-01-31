using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Linq;

public class TMPShaderGUIOverride : TMPro.EditorUtilities.TMP_SDFShaderGUI
{
    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        base.OnGUI(materialEditor, properties);
        MaterialProperty colorProperty = ShaderGUI.FindProperty("_OutlineColor2", properties);
        materialEditor.ShaderProperty(colorProperty, colorProperty.displayName);

        colorProperty = ShaderGUI.FindProperty("_OutlineWidth2", properties);
        materialEditor.ShaderProperty(colorProperty, colorProperty.displayName);
    }
}