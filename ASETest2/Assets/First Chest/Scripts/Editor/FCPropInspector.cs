// First Chest
// Version: 1.4.0
// Compatilble: Unity 5.6.1 or higher, see more info in Readme.txt file.
//
// Developer:			Gold Experience Team (https://www.assetstore.unity3d.com/en/#!/search/page=1/sortby=popularity/query=publisher:4162)
// Unity Asset Store:	https://www.assetstore.unity3d.com/en/#!/content/18353
//
// Please direct any bugs/comments/suggestions to geteamdev@gmail.com

using UnityEngine;
using System.Collections.Generic;
using UnityEditor;
using System.Reflection;
using System;
using Object = UnityEngine.Object;
using InspectorPlusVar = FCPropInspector.InspectorPlusVar;

[CanEditMultipleObjects]
[CustomEditor(typeof(FCProp))]
public class FCPropInspector : Editor {
	public class InspectorPlusVar
	{
		public enum LimitType { None, Max, Min, Range };
		public enum VectorDrawType { None, Direction, Point, PositionHandle, Scale, Rotation };
		public LimitType limitType = LimitType.None;
		public float min = -0.0f;
		public float max = -0.0f;
		public bool progressBar;
		public int iMin = -0;
		public int iMax = -0;
		public bool active = true;
		public string type;
		public string name;
		public string dispName;
		public VectorDrawType vectorDrawType;
		public bool relative = false;
		public bool scale = false;
		public float space = 0.0f;
		public bool[] labelEnabled = new bool[4];
		public string[] label = new string[4];
		public bool[] labelBold = new bool[4];
		public bool[] labelItalic = new bool[4];
		public int[] labelAlign = new int[4];
		public bool[] buttonEnabled = new bool[16];
		public string[] buttonText = new string[16];
		public string[] buttonCallback = new string[16];
		public bool[] buttonCondense = new bool[4];

		public int numSpace = 0;
		public string classType;
		public Vector3 offset = new Vector3(0.5f, 0.5f);
		public bool QuaternionHandle;
		public bool canWrite = true;
		public string tooltip;
		public bool hasTooltip = false;
		public bool toggleStart = false;
		public int toggleSize = 0;
		public int toggleLevel = 0;
		public bool largeTexture;
		public float textureSize;

		public string textFieldDefault;
		public bool textArea;

	public InspectorPlusVar(LimitType _limitType, float _min, float _max, bool _progressBar, int _iMin, int _iMax, bool _active, string _type, string _name, string _dispName,
						VectorDrawType _vectorDrawType, bool _relative, bool _scale, float _space, bool[] _labelEnabled, string[] _label, bool[] _labelBold, bool[] _labelItalic, int[] _labelAlign, bool[] _buttonEnabled, string[] _buttonText,
						string[] _buttonCallback, bool[] buttonCondense, int _numSpace, string _classType, Vector3 _offset, bool _QuaternionHandle, bool _canWrite, string _tooltip, bool _hasTooltip,
						bool _toggleStart, int _toggleSize, int _toggleLevel, bool _largeTexture, float _textureSize, string _textFieldDefault, bool _textArea)
	{
		limitType = _limitType;
		min = _min;
		max = _max;
		progressBar = _progressBar;
		iMax = _iMax;
		iMin = _iMin;
		active = _active;
		type = _type;
		name = _name;
		dispName = _dispName;
		vectorDrawType = _vectorDrawType;
		relative = _relative;
		scale = _scale;
		space = _space;
		labelEnabled = _labelEnabled;
		label = _label;
		labelBold = _labelBold;
		labelItalic = _labelItalic;
		labelAlign = _labelAlign;
		buttonEnabled = _buttonEnabled;
		buttonText = _buttonText;
		buttonCallback = _buttonCallback;
		numSpace = _numSpace;
		classType = _classType;
		offset = _offset;
		QuaternionHandle = _QuaternionHandle;
		canWrite = _canWrite;
		tooltip = _tooltip;
		hasTooltip = _hasTooltip;
		toggleStart = _toggleStart;
		toggleSize = _toggleSize;
		toggleLevel = _toggleLevel;
		largeTexture = _largeTexture;
		textureSize = _textureSize;
		textFieldDefault = _textFieldDefault;
		textArea = _textArea;
	}
	}	
	SerializedObject so;
	SerializedProperty[] properties;
	new string name;
	string dispName;
	Rect tooltipRect;	
	List<InspectorPlusVar> vars;
	void RefreshVars(){for (int i = 0; i < vars.Count; i += 1) properties[i] = so.FindProperty (vars[i].name);}
	void OnEnable ()
	{
		vars = new List<InspectorPlusVar>();
		so = serializedObject;
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"GameObject","m_Prefab","Prefab",InspectorPlusVar.VectorDrawType.None,false,false,27,new System.Boolean[]{true,false,false,false},new System.String[]{"--- Position ---","","",""},new System.Boolean[]{true,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{1,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},1,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Reference to a Prefab",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"eEaseType","m_PosEaseType","EaseType",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is OutElastic",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Vector3","m_PosBegin","Begin",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0,0,0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Vector3","m_PosEnd","End",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0,1,0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,false,"Single","m_PosValue","Value",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Tooltip",false,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_PosDelay"," Delay",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0.25",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_PosDuration"," Duration",InspectorPlusVar.VectorDrawType.None,false,false,25,new System.Boolean[]{true,false,false,false},new System.String[]{"--- Rotation ---","","",""},new System.Boolean[]{true,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{1,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},1,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 1.0f",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"eRotationType","m_RotationType","Type",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is Endless",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"eEaseType","m_RotationEaseType","EaseType",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is InOutQuad",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Vector3","m_Rotation","Rotate",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0,-1,0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,false,"Single","m_RotationValue","Value",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Tooltip",false,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Int32","m_MaxRotationRound","Round",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 5",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_RotationDelay"," Delay",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_RotationDurationPerRound"," Duration",InspectorPlusVar.VectorDrawType.None,false,false,25,new System.Boolean[]{true,false,false,false},new System.String[]{"--- Scale ---","","",""},new System.Boolean[]{true,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{1,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},1,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 2",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"eScaleType","m_ScaleType","Type",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is Disable",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"eEaseType","m_ScaleEaseType","EaseType",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is OutElastic",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Vector3","m_ScaleBegin","Begin",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 1,1,1",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Vector3","m_ScaleEnd","End",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 2,2,2",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,false,"Single","m_ScaleValue","Value",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Tooltip",false,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_ScaleDelay"," Delay",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 0.5",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_ScaleDuration"," Duration",InspectorPlusVar.VectorDrawType.None,false,false,25,new System.Boolean[]{true,false,false,false},new System.String[]{"--- When Chest Closed ---","","",""},new System.Boolean[]{true,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{1,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},1,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 1.0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Boolean","m_RemovedWhenChestClose","Removed",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is Yes",true,false,1,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Boolean","m_FadeOut","Fade Out",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is Yes",true,false,1,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_FadeOutDuration"," Duration",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 1.0",true,false,0,0,false,70,"",false));
		vars.Add(new InspectorPlusVar(InspectorPlusVar.LimitType.None,0,0,false,0,0,true,"Single","m_RemoveDelay"," Delay",InspectorPlusVar.VectorDrawType.None,false,false,0,new System.Boolean[]{false,false,false,false},new System.String[]{"","","",""},new System.Boolean[]{false,false,false,false},new System.Boolean[]{false,false,false,false},new System.Int32[]{0,0,0,0},new System.Boolean[]{false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false},new System.String[]{"","","","","","","","","","","","","","","",""},new System.String[]{"","","","","","","","","","","","","","","",""},new System.Boolean[]{false,false,false,false},0,"FCProp",new Vector3(0.5f,0.5f,0f),false,true,"Default is 1.0",true,false,0,0,false,70,"",false));	
		int count = vars.Count;
		properties = new SerializedProperty[count];
	}
	
	void ProgressBar (float value, string label)
	{
		GUILayout.Space (3.0f);
		Rect rect = GUILayoutUtility.GetRect (18, 18, "TextField");
		EditorGUI.ProgressBar (rect, value, label);
		GUILayout.Space (3.0f);
	}
	void FloatField(SerializedProperty sp, InspectorPlusVar v)
	{
		if (v.limitType == InspectorPlusVar.LimitType.Min && !sp.hasMultipleDifferentValues)
			sp.floatValue = Mathf.Max (v.min, sp.floatValue);
		else if (v.limitType == InspectorPlusVar.LimitType.Max && !sp.hasMultipleDifferentValues)
			sp.floatValue = Mathf.Min (v.max, sp.floatValue);
		
		if (v.limitType == InspectorPlusVar.LimitType.Range) {
			if (!v.progressBar)
				EditorGUILayout.Slider (sp, v.min, v.max);
			else {
				if (!sp.hasMultipleDifferentValues) {
					sp.floatValue = Mathf.Clamp (sp.floatValue, v.min, v.max);
					ProgressBar ((sp.floatValue - v.min) / v.max, dispName);
				} else
					ProgressBar ((sp.floatValue - v.min) / v.max, dispName);
			}
		}
		else EditorGUILayout.PropertyField(sp, new GUIContent(dispName));
	}
	void IntField(SerializedProperty sp, InspectorPlusVar v)
	{
		if (v.limitType == InspectorPlusVar.LimitType.Min && !sp.hasMultipleDifferentValues)
			sp.intValue = Mathf.Max (v.iMin, sp.intValue);
		else if (v.limitType == InspectorPlusVar.LimitType.Max && !sp.hasMultipleDifferentValues)
			sp.intValue = Mathf.Min (v.iMax, sp.intValue);
		
		if (v.limitType == InspectorPlusVar.LimitType.Range)
		{
			if (!v.progressBar)
			{
				EditorGUI.BeginProperty(new Rect(0.0f, 0.0f, 0.0f, 0.0f), new GUIContent(), sp);
				EditorGUI.BeginChangeCheck ();

				var newValue = EditorGUI.IntSlider(GUILayoutUtility.GetRect(18.0f, 18.0f), new GUIContent(dispName), sp.intValue, v.iMin, v.iMax);
				
				if (EditorGUI.EndChangeCheck ())
					sp.intValue = newValue;
				EditorGUI.EndProperty ();
			}
			else {
				if (!sp.hasMultipleDifferentValues) {
					sp.intValue = Mathf.Clamp (sp.intValue, v.iMin, v.iMax);
					ProgressBar ((float)(sp.intValue - v.iMin) / v.iMax, dispName);
				} else
					ProgressBar ((float)(sp.intValue - v.iMin) / v.iMax, dispName);
			}
		}
		else EditorGUILayout.PropertyField(sp, new GUIContent(dispName));
	}
	int BoolField(SerializedProperty sp, InspectorPlusVar v)
	{
		if (v.toggleStart)
		{
			EditorGUI.BeginProperty(new Rect(0.0f, 0.0f, 0.0f, 0.0f), new GUIContent(), sp);

			EditorGUI.BeginChangeCheck();
			var newValue = EditorGUILayout.Toggle(dispName, sp.boolValue);
			
			if (EditorGUI.EndChangeCheck())
				sp.boolValue = newValue;
			
			EditorGUI.EndProperty();

			if (!sp.boolValue)
				return v.toggleSize;
		}
		else EditorGUILayout.PropertyField(sp, new GUIContent(dispName));

		return 0;
	}
	void PropertyField (SerializedProperty sp, string name)
	{
		if (sp.hasChildren) {
			GUILayout.BeginVertical();
			while (true) {
				if (sp.propertyPath != name && !sp.propertyPath.StartsWith (name + "."))
					break;

				EditorGUI.indentLevel = sp.depth;
				bool child = false;

				if (sp.depth == 0)
					child = EditorGUILayout.PropertyField(sp, new GUIContent(dispName));
				else
					child = EditorGUILayout.PropertyField(sp);

				if (!sp.NextVisible (child))
					break;
			}
			EditorGUI.indentLevel = 0;
			GUILayout.EndVertical();
		} else EditorGUILayout.PropertyField(sp, new GUIContent(dispName));
	}
	public override void OnInspectorGUI ()
	{	
		so.Update ();
		RefreshVars();
		
		//EditorGUIUtility.LookLikeControls (135.0f, 50.0f);
		EditorGUIUtility.labelWidth = 135;
		EditorGUIUtility.fieldWidth = 50;

		for (int i = 0; i < properties.Length; i += 1) 
		{
			InspectorPlusVar v = vars[i];
			
			if (v.active && properties[i] != null) 
			{
				SerializedProperty sp = properties [i];string s = v.type;
						bool skip = false;
				name = v.name;
				dispName = v.dispName;

				GUI.enabled = v.canWrite;

				GUILayout.BeginHorizontal();

				if (v.toggleLevel != 0)
	GUILayout.Space(v.toggleLevel * 10.0f);
				
				if (s == typeof(float).Name){
					FloatField(sp, v);
					skip = true;
				}
				if (s == typeof(int).Name){
					IntField(sp, v);
					skip = true;
				}
				if (s == typeof(bool).Name){
					i += BoolField(sp, v);
					skip = true;
				}
				if (!skip)
					PropertyField(sp, name);
				GUILayout.EndHorizontal();
				GUI.enabled = true;
				if (v.hasTooltip)
				{
					Rect last = GUILayoutUtility.GetLastRect();
					GUI.Label(last, new GUIContent("", v.tooltip));

					GUIStyle style = new GUIStyle();
					style.fixedWidth = 250.0f;
					style.wordWrap = true;

					Vector2 size = new GUIStyle().CalcSize(new GUIContent(GUI.tooltip));
					tooltipRect = new Rect(Event.current.mousePosition.x + 4.0f, Event.current.mousePosition.y + 12.0f, 28.0f + size.x, 9.0f + size.y);

					if (tooltipRect.width > 250.0f)
					{
						float delt = (tooltipRect.width - 250.0f);
						tooltipRect.width -= delt;
						tooltipRect.height += size.y * Mathf.CeilToInt(delt / 250.0f);
					}
				}
			}
			if (v.space == 0.0f)
				continue;
			float usedSpace = 0.0f;
			for (int j = 0; j < v.numSpace; j += 1) {
				if (v.labelEnabled [j] || v.buttonEnabled [j])
					usedSpace += 18.0f;
			}
			if (v.space == 0.0f)
				continue;
			float space = Mathf.Max (0.0f, (v.space - usedSpace) / 2.0f);
			GUILayout.Space (space);
			for (int j = 0; j < v.numSpace; j += 1) {
				bool buttonLine = false;
				for (int k = 0; k < 4; k += 1) if (v.buttonEnabled[j * 4 + k]) buttonLine = true;
				if (!v.labelEnabled[j] && !buttonLine)
					continue;


				GUILayout.BeginHorizontal();
				if (v.labelEnabled[j])
				{
					GUIStyle boldItalic = new GUIStyle();
					boldItalic.margin = new RectOffset(5, 5, 5, 5);
					
					if (v.labelAlign[j] == 0)
						boldItalic.alignment = TextAnchor.MiddleLeft;
					else if (v.labelAlign[j] == 1)
						boldItalic.alignment = TextAnchor.MiddleCenter;
					else if (v.labelAlign[j] == 2)
						boldItalic.alignment = TextAnchor.MiddleRight;
					
					if (v.labelBold[j] && v.labelItalic[j])
						boldItalic.fontStyle = FontStyle.BoldAndItalic;
					else if (v.labelBold[j])
						boldItalic.fontStyle = FontStyle.Bold;
					else if (v.labelItalic[j])
						boldItalic.fontStyle = FontStyle.Italic;

					GUILayout.Label(v.label[j], boldItalic);
					boldItalic.alignment = TextAnchor.MiddleLeft;
				}
				bool alignRight = (v.labelEnabled[j] && buttonLine);

				if (!alignRight)
				{
					GUILayout.EndHorizontal();
					GUILayout.BeginHorizontal();
				}

				GUILayout.FlexibleSpace();
				for (int k = 0; k < 4; k += 1)
				{
					if (v.buttonEnabled[j * 4 + k])
					{
						if (!v.buttonCondense[j] && !alignRight)
							GUILayout.FlexibleSpace();

						string style = "Button";
						if (v.buttonCondense[j])
						{
							bool hasLeft = false;
							bool hasRight = false;
							for(int p = k - 1; p >= 0; p -= 1)
								if (v.buttonEnabled[j * 4 + p])
									hasLeft = true;
							for (int p = k + 1; p < 4; p += 1)
								if (v.buttonEnabled[j * 4 + p])
									hasRight = true;

							if (!hasLeft && hasRight)
								style = "ButtonLeft";
							else if (hasLeft && hasRight)
								style = "ButtonMid";
							else if (hasLeft && !hasRight)
								style = "ButtonRight";
							else if (!hasLeft && !hasRight)
								style = "Button";
						}

						if (GUILayout.Button(v.buttonText[j * 4 + k], style, GUILayout.MinWidth(60.0f)))
						{
							foreach (object t in targets)
							{
								MethodInfo m = t.GetType().GetMethod(v.buttonCallback[j * 4 + k], BindingFlags.Public | BindingFlags.DeclaredOnly | BindingFlags.Instance | BindingFlags.NonPublic);
								if (m != null)
									m.Invoke(target, null);
							}
						}

						if (!v.buttonCondense[j] && !alignRight)
							GUILayout.FlexibleSpace();

						
					}
				}
				GUILayout.FlexibleSpace();
				GUILayout.EndHorizontal ();
			}
			GUILayout.Space (space);
		}
		so.ApplyModifiedProperties (); 
		if (!string.IsNullOrEmpty(GUI.tooltip))
		{
			GUI.color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
			GUI.Box(tooltipRect, new GUIContent());
			EditorGUI.HelpBox(tooltipRect, GUI.tooltip, MessageType.Info);
			Repaint();
		}
		GUI.tooltip = "";
	}
}