<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths>
      <string>VisualScripts\Station419\SaveGameIfPossible.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>1600461993</ID>
        <Position>
          <X>697</X>
          <Y>317</Y>
        </Position>
        <Name />
        <SequenceOutputID>888744899</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>888744899</NodeID>
                <VariableName>SaveName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>SaveName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>888744899</ID>
        <Position>
          <X>895.2755</X>
          <Y>314.771423</Y>
        </Position>
        <Name>SaveGameIfPossible</Name>
        <SequenceOutput>1542838162</SequenceOutput>
        <SequenceInput>1600461993</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>SaveName</Name>
            <Input>
              <NodeID>1600461993</NodeID>
              <VariableName>SaveName</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1542838162</ID>
        <Position>
          <X>1085.47864</X>
          <Y>330.5765</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetChatMaxMessageCount(Int32 count)</Type>
        <ExtOfType />
        <SequenceInputID>888744899</SequenceInputID>
        <SequenceOutputID>1769798383</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>count</ParameterName>
            <Value>3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1769798383</ID>
        <Position>
          <X>1331.372</X>
          <Y>330.049469</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetChatMessageDuration(Int32 durationS)</Type>
        <ExtOfType />
        <SequenceInputID>1542838162</SequenceInputID>
        <SequenceOutputID>291548102</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>durationS</ParameterName>
            <Value>8</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>291548102</ID>
        <Position>
          <X>1564.52283</X>
          <Y>313.180145</Y>
        </Position>
        <SequenceInputID>1769798383</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Station419StateStart</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>