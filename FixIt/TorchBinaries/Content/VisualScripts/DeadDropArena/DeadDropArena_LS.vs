<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <LevelScript>
    <Interface>VRage.Game.VisualScripting.IMyLevelScript</Interface>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1366062164</ID>
        <Position>
          <X>697</X>
          <Y>387</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1771233283</ID>
        <Position>
          <X>635</X>
          <Y>172</Y>
        </Position>
        <MethodName>GameStarted</MethodName>
        <SequenceOutputIDs>
          <int>2124837856</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>113162104</ID>
        <Position>
          <X>587.1632</X>
          <Y>394.349152</Y>
        </Position>
        <MethodName>GameFinished</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1162619054</ID>
        <Position>
          <X>658.9453</X>
          <Y>435.537659</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2124837856</ID>
        <Position>
          <X>804</X>
          <Y>194.919052</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartStateMachine(String stateMachineName, Int64 ownerId)</Type>
        <ExtOfType />
        <SequenceInputID>1771233283</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>stateMachineName</ParameterName>
            <Value>DeadDropArena_SM</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>DeadDropArena_LS</Name>
  </LevelScript>
</MyObjectBuilder_VSFiles>