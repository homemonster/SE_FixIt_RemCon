<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>163969022</ID>
        <Position>
          <X>331</X>
          <Y>395</Y>
        </Position>
        <Name />
        <SequenceOutputID>2061128952</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>749041850</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>RoundNumber</string>
        </OutputNames>
        <OuputTypes>
          <string>System.Int32</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>1858164151</ID>
        <Position>
          <X>1233</X>
          <Y>417</Y>
        </Position>
        <SequenceInputID>2061128952</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>749041850</ID>
        <Position>
          <X>482</X>
          <Y>484</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IntToString(Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>163969022</NodeID>
            <VariableName>RoundNumber</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1449485641</NodeID>
                <VariableName>b</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1449485641</ID>
        <Position>
          <X>728</X>
          <Y>465</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StringConcat(String a, String b)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>749041850</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>b</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>2061128952</NodeID>
                <VariableName>saveName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>a</ParameterName>
            <Value>Round_</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2061128952</ID>
        <Position>
          <X>956</X>
          <Y>427</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SaveSessionAs(String saveName)</Type>
        <ExtOfType />
        <SequenceInputID>163969022</SequenceInputID>
        <SequenceOutputID>1858164151</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1449485641</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>saveName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>SaveRound</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>