<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <LevelScript>
    <Interface>VRage.Game.VisualScripting.IMyLevelScript</Interface>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>201824201</ID>
        <Position>
          <X>560.4064</X>
          <Y>403.1625</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1027274300</ID>
        <Position>
          <X>603.91864</X>
          <Y>238.240509</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>2013333230</ID>
        <Position>
          <X>479.1801</X>
          <Y>83.37852</Y>
        </Position>
        <MethodName>GameStarted</MethodName>
        <SequenceOutputIDs>
          <int>510479920</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>556952295</ID>
        <Position>
          <X>651.3231</X>
          <Y>399.4869</Y>
        </Position>
        <MethodName>GameFinished</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>510479920</ID>
        <Position>
          <X>692.8482</X>
          <Y>102.059059</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartStateMachine(String stateMachineName, Int64 ownerId)</Type>
        <ExtOfType />
        <SequenceInputID>2013333230</SequenceInputID>
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
            <Value>ArenaEscort_SM</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>ArenaEscort_LS</Name>
  </LevelScript>
</MyObjectBuilder_VSFiles>