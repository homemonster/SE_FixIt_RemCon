<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>Scenarios\The First Jump\Scripts\Common\AssistantMessage.vs</string>
      <string>Scenarios\The First Jump\Scripts\Common\OnceAfterDelay.vs</string>
      <string>Scenarios\The First Jump\Scripts\Common\RebelMessage.vs</string>
      <string>VisualScripts\Library\Delay.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>31780</ID>
        <Position>
          <X>259.075653</X>
          <Y>252.8836</Y>
        </Position>
        <VariableName>locked</VariableName>
        <VariableType>System.Boolean</VariableType>
        <VariableValue>false</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>120081758</ID>
        <Position>
          <X>5031.75537</X>
          <Y>746.394165</Y>
        </Position>
        <VariableName>MovementLine</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>-1</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>617762592</ID>
        <Position>
          <X>234.103577</X>
          <Y>464.8201</Y>
        </Position>
        <VariableName>Conversation</VariableName>
        <VariableType>System.Boolean</VariableType>
        <VariableValue>false</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1254248043</ID>
        <Position>
          <X>96.87695</X>
          <Y>700.0875</Y>
        </Position>
        <VariableName>PlayCutscene</VariableName>
        <VariableType>System.Boolean</VariableType>
        <VariableValue>false</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1270303388</ID>
        <Position>
          <X>4574.96436</X>
          <Y>753.4652</Y>
        </Position>
        <VariableName>ForwardLine</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>-1</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1379390323</ID>
        <Position>
          <X>2681.15942</X>
          <Y>105.185783</Y>
        </Position>
        <VariableName>LandingGearLine</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>-1</VariableValue>
        <OutputNodeIds />
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
        <OutputNodeIdsX />
        <OutputNodeIdsY />
        <OutputNodeIdsZ />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>545549017</ID>
        <Position>
          <X>80.13666</X>
          <Y>1732.68628</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.AreaTrigger_Entered</Name>
        <SequenceOutputID>331899866</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>triggerName</string>
          <string>playerId</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.Int64</string>
        </OuputTypes>
        <Keys>
          <string>ExitTrigger</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>759981648</ID>
        <Position>
          <X>79.3688354</X>
          <Y>1574.25366</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.CutsceneNodeEvent</Name>
        <SequenceOutputID>85718470</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>cutsceneName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
        <Keys>
          <string>FadeToBlack</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>1019878836</ID>
        <Position>
          <X>648.3993</X>
          <Y>2186.35645</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.CutsceneNodeEvent</Name>
        <SequenceOutputID>126470190</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>cutsceneName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
        <Keys>
          <string>OutroConversation</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>1154879685</ID>
        <Position>
          <X>79.2909546</X>
          <Y>1914.74658</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.CutsceneEnded</Name>
        <SequenceOutputID>500160875</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>cutsceneName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
        <Keys>
          <string>End</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>6974</ID>
        <Position>
          <X>-53.5187531</X>
          <Y>82.43395</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>623437374</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>6975</ID>
        <Position>
          <X>543.465454</X>
          <Y>597.8183</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>6976</ID>
        <Position>
          <X>887.5344</X>
          <Y>589.3329</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>31716</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>31715</ID>
        <Position>
          <X>1285.07324</X>
          <Y>627.917</Y>
        </Position>
        <InputID>
          <NodeID>31718</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>31716</SequenceInputID>
        <SequenceTrueOutputID>31761</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>31716</ID>
        <Position>
          <X>1053.4812</X>
          <Y>613.8687</Y>
        </Position>
        <SequenceInput>6976</SequenceInput>
        <SequenceOutputs>
          <int>31715</int>
          <int>1128726204</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>31718</ID>
        <Position>
          <X>906.1175</X>
          <Y>750.7717</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsPlayerInCockpit(Int64 playerId, String gridName, String cockpitName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>31715</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>31721</ID>
        <Position>
          <X>1767.21729</X>
          <Y>402.94165</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>31723</SequenceOutput>
        <SequenceInput>31761</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>31722</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>31722</ID>
        <Position>
          <X>1631.20349</X>
          <Y>466.4084</Y>
        </Position>
        <Value>15</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>31721</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>31723</ID>
        <Position>
          <X>2022.50562</X>
          <Y>259.02063</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartTimerBlock(String blockName)</Type>
        <ExtOfType />
        <SequenceInputID>31721</SequenceInputID>
        <SequenceOutputID>1684386831</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>IrisDoorTimerBlock</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>31761</ID>
        <Position>
          <X>1472.2948</X>
          <Y>609.9862</Y>
        </Position>
        <SequenceInput>31715</SequenceInput>
        <SequenceOutputs>
          <int>31721</int>
          <int>438129852</int>
          <int>31786</int>
          <int>305057468</int>
          <int>2115565861</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>31764</ID>
        <Position>
          <X>3579.92065</X>
          <Y>1240.61353</Y>
        </Position>
        <Value>240</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>31766</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>31766</ID>
        <Position>
          <X>3696.81787</X>
          <Y>1179.25244</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>31768</SequenceOutput>
        <SequenceInput>31772</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>31764</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>31768</ID>
        <Position>
          <X>3869.92871</X>
          <Y>1189.20239</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>31766</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>31769</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>31769</ID>
        <Position>
          <X>3604.33252</X>
          <Y>1307.28955</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_VA_LandingGearsWarning</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>31768</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>31772</ID>
        <Position>
          <X>3513.45142</X>
          <Y>1092.345</Y>
        </Position>
        <InputID>
          <NodeID>31781</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>31782</SequenceInputID>
        <SequenceTrueOutputID>31766</SequenceTrueOutputID>
        <SequnceFalseOutputID>811180071</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>31781</ID>
        <Position>
          <X>3332.53784</X>
          <Y>1172.15845</Y>
        </Position>
        <BoundVariableName>locked</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>31772</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>31782</ID>
        <Position>
          <X>3120.173</X>
          <Y>976.4974</Y>
        </Position>
        <SequenceInputs>
          <int>31786</int>
        </SequenceInputs>
        <SequenceBody>31783</SequenceBody>
        <SequenceOutput>31772</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </LastIndexValueInput>
        <IncrementValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </IncrementValueInput>
        <CounterValueOutputs>
          <MyVariableIdentifier>
            <NodeID>31790</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>4</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>31783</ID>
        <Position>
          <X>4108.41064</X>
          <Y>732.8541</Y>
        </Position>
        <VariableName>locked</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>31782</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>31788</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>31784</ID>
        <Position>
          <X>3816.78</X>
          <Y>615.613464</Y>
        </Position>
        <BoundVariableName>locked</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>31788</NodeID>
              <VariableName>In_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>31786</ID>
        <Position>
          <X>2907.10229</X>
          <Y>962.5057</Y>
        </Position>
        <VariableName>locked</VariableName>
        <VariableValue>false</VariableValue>
        <SequenceInputID>31761</SequenceInputID>
        <SequenceOutputID>31782</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>31788</ID>
        <Position>
          <X>3963.41724</X>
          <Y>628.400757</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>31784</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>31789</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>31783</NodeID>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>OR</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>31789</ID>
        <Position>
          <X>3647.74048</X>
          <Y>684.569</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsLandingGearLocked(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>31790</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>31788</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>31790</ID>
        <Position>
          <X>3478.27661</X>
          <Y>661.96936</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>31789</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>31791</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>31782</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>31791</ID>
        <Position>
          <X>3216.6062</X>
          <Y>672.010864</Y>
        </Position>
        <Value>EscapeShipLandingGear</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>31790</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>31796</ID>
        <Position>
          <X>5222.88525</X>
          <Y>889.2678</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSObjective(String name, String description, Vector3D position, Color GPSColor, Int32 disappearsInS, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1230580092</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>31797</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>position</ParameterName>
            <Value>X:18960.32 Y:141998.81 Z:-103014.38</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>31797</ID>
        <Position>
          <X>5006.514</X>
          <Y>1035.27759</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>GPS_ExitCoords</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>31796</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>5728750</ID>
        <Position>
          <X>2591.96338</X>
          <Y>2257.564</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_Rebel_Outro2</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>464224047</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>11354704</ID>
        <Position>
          <X>2762.97217</X>
          <Y>640.1999</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>1930924155</SequenceOutput>
        <SequenceInput>438129852</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>85718470</ID>
        <Position>
          <X>330.8322</X>
          <Y>1601.227</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ScreenColorFadingStart(Single time, Boolean toOpaque)</Type>
        <ExtOfType />
        <SequenceInputID>759981648</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>time</ParameterName>
            <Value>2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>108223940</ID>
        <Position>
          <X>-212.905823</X>
          <Y>2166.91382</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetLocalPlayerId()</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>234710510</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>110087628</ID>
        <Position>
          <X>2065.401</X>
          <Y>351.593262</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest09_EscapeShip_Gears</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>473195271</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
        </ParameterInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1684386831</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>114287621</ID>
        <Position>
          <X>1032.33789</X>
          <Y>117.6631</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogObjective(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1074185826</SequenceInputID>
        <SequenceOutputID>593152642</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1929138814</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>126470190</ID>
        <Position>
          <X>998.614746</X>
          <Y>2200.09668</Y>
        </Position>
        <VariableName>Conversation</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>1019878836</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>133589330</ID>
        <Position>
          <X>3089.05273</X>
          <Y>2264.69922</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_Rebel_Outro3</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1879542022</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>135623594</ID>
        <Position>
          <X>4307.05127</X>
          <Y>885.1876</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogObjective(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>213125250</SequenceInputID>
        <SequenceOutputID>700748553</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>587115302</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>700748553</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>161610567</ID>
        <Position>
          <X>4526.362</X>
          <Y>1014.56445</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest10_End_Quest</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </ParameterInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>269333794</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>167862468</ID>
        <Position>
          <X>2924.91382</X>
          <Y>253.584961</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGPSHighlight(String entityName, String GPSName, String GPSDescription, Color GPSColor, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, Int64 playerId, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1529666510</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1735419073</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>EscapeShipCockpit</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>thickness</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>213125250</ID>
        <Position>
          <X>4052.15234</X>
          <Y>884.7916</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>811180071</SequenceInputID>
        <SequenceOutputID>135623594</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1668479044</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>234710510</ID>
        <Position>
          <X>-13.8245239</X>
          <Y>2128.508</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPlayersInventoryItemAmount(Int64 playerId, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>108223940</NodeID>
            <VariableName>Return</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1653964605</NodeID>
            <VariableName>Return</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>108223940</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1653964605</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>329867486</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>255441622</ID>
        <Position>
          <X>750.9879</X>
          <Y>2418.38672</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityPosition(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>VRageMath.Vector3D</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>570445339</NodeID>
                <VariableName>posA</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>EscapeShipCockpit</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>269333794</ID>
        <Position>
          <X>4757.389</X>
          <Y>890.2915</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogObjective(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>700748553</SequenceInputID>
        <SequenceOutputID>1230580092</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>161610567</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1230580092</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>288961076</ID>
        <Position>
          <X>2773.17725</X>
          <Y>1206.96021</Y>
        </Position>
        <BoundVariableName>ForwardLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>572757003</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>291610362</ID>
        <Position>
          <X>3043.51782</X>
          <Y>1881.66418</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPS(String name, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1259980264</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>463044099</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>305057468</ID>
        <Position>
          <X>2640.36377</X>
          <Y>1167.02</Y>
        </Position>
        <InputID>
          <NodeID>800334050</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>31761</SequenceInputID>
        <SequenceTrueOutputID>456954565</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>326292382</ID>
        <Position>
          <X>2347.83838</X>
          <Y>555.847839</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1037688742</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>368341033</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>650673601</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>329867486</ID>
        <Position>
          <X>259.0346</X>
          <Y>2145.69116</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>500160875</NodeID>
            <VariableName>value</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>234710510</NodeID>
          <VariableName>Return</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1798705565</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>331899866</ID>
        <Position>
          <X>274.4165</X>
          <Y>1733.03687</Y>
        </Position>
        <VariableName>PlayCutscene</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>545549017</SequenceInputID>
        <SequenceOutputID>798267420</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>368341033</ID>
        <Position>
          <X>2172.01514</X>
          <Y>542.6047</Y>
        </Position>
        <BoundVariableName>LandingGearLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>326292382</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>393043637</ID>
        <Position>
          <X>1713.33435</X>
          <Y>129.815384</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetChatMessageDuration(Int32 durationS)</Type>
        <ExtOfType />
        <SequenceInputID>593152642</SequenceInputID>
        <SequenceOutputID>2080735369</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>durationS</ParameterName>
            <Value>7</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>400500648</ID>
        <Position>
          <X>3074.97046</X>
          <Y>2142.6438</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>1879542022</SequenceOutput>
        <SequenceInput>464224047</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>983481834</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>425582502</ID>
        <Position>
          <X>0</X>
          <Y>0</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>438129852</ID>
        <Position>
          <X>2616.98145</X>
          <Y>673.363</Y>
        </Position>
        <InputID>
          <NodeID>1037688742</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>31761</SequenceInputID>
        <SequenceTrueOutputID>11354704</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>456954565</ID>
        <Position>
          <X>2786.35449</X>
          <Y>1133.85693</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>572757003</SequenceOutput>
        <SequenceInput>305057468</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>463044099</ID>
        <Position>
          <X>2786.64868</X>
          <Y>1957.77356</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>GPS_ExitCoords</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>291610362</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>464224047</ID>
        <Position>
          <X>2839.09717</X>
          <Y>2136.41064</Y>
        </Position>
        <Name>RebelMessage</Name>
        <SequenceOutput>400500648</SequenceOutput>
        <SequenceInput>1270223354</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>5728750</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>473195271</ID>
        <Position>
          <X>1736.80127</X>
          <Y>505.68576</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetUserControlKey(String keyName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>110087628</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>keyName</ParameterName>
            <Value>LANDING_GEAR</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>496768128</ID>
        <Position>
          <X>1855.42114</X>
          <Y>1414.0564</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>BACKWARD</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>498799091</ID>
        <Position>
          <X>2232.14282</X>
          <Y>1335.01208</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_3</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>JUMP</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>500160875</ID>
        <Position>
          <X>389.626953</X>
          <Y>1941.896</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1154879685</SequenceInputID>
        <SequenceOutputID>945282521</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>329867486</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>HasWelder</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>570445339</ID>
        <Position>
          <X>1166.9314</X>
          <Y>2446.41748</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.DistanceVector3D(Vector3D posA, Vector3D posB)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>255441622</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>posA</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1402360149</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>posB</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Single</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1412751715</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>572757003</ID>
        <Position>
          <X>2963.581</X>
          <Y>1163.991</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>456954565</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>288961076</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>587115302</ID>
        <Position>
          <X>4076.02271</X>
          <Y>989.661438</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest10_End_Movement</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>1189981091</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
        </ParameterInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>135623594</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>593152642</ID>
        <Position>
          <X>1418.37549</X>
          <Y>122.5885</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>114287621</SequenceInputID>
        <SequenceOutputID>393043637</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BoundaryDisabled</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>598693037</ID>
        <Position>
          <X>451.767822</X>
          <Y>326.2693</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetUserControlKey(String keyName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1929138814</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>keyName</ParameterName>
            <Value>USE</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>623437374</ID>
        <Position>
          <X>98.35553</X>
          <Y>78.5878448</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SaveSessionAs(String saveName)</Type>
        <ExtOfType />
        <SequenceInputID>6974</SequenceInputID>
        <SequenceOutputID>1093684308</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>saveName</ParameterName>
            <Value>{LOCC:SaveName_M02_Ship}</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>632125135</ID>
        <Position>
          <X>3813.78955</X>
          <Y>2164.18872</Y>
        </Position>
        <Name>RebelMessage</Name>
        <SequenceOutput>832908707</SequenceOutput>
        <SequenceInput>1467125003</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>698174405</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>640879340</ID>
        <Position>
          <X>2093.34741</X>
          <Y>1930.43921</Y>
        </Position>
        <Value>60</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1558101393</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>650673601</ID>
        <Position>
          <X>2189.7832</X>
          <Y>610.7679</Y>
        </Position>
        <Value>-1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>326292382</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>672105215</ID>
        <Position>
          <X>2232.14355</X>
          <Y>1516.64575</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_5</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>ROLL_LEFT</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>679090693</ID>
        <Position>
          <X>3925.186</X>
          <Y>2275.05835</Y>
        </Position>
        <Value>420</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>832908707</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>698174405</ID>
        <Position>
          <X>3555.22241</X>
          <Y>2267.07764</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_Rebel_Outro4</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>632125135</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>699399257</ID>
        <Position>
          <X>689.0689</X>
          <Y>1748.40234</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPS(String name, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>798267420</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1717647112</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>700748553</ID>
        <Position>
          <X>4614.563</X>
          <Y>889.229858</Y>
        </Position>
        <VariableName>ForwardLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>135623594</SequenceInputID>
        <SequenceOutputID>269333794</SequenceOutputID>
        <ValueInputID>
          <NodeID>135623594</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>716146340</ID>
        <Position>
          <X>2735.60718</X>
          <Y>1343.77759</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1780446448</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>1829793219</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1583654153</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>717266179</ID>
        <Position>
          <X>2375.054</X>
          <Y>793.630859</Y>
        </Position>
        <BoundVariableName>locked</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1037688742</NodeID>
              <VariableName>In_2</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>793386276</ID>
        <Position>
          <X>2228.77979</X>
          <Y>1430.87427</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_4</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>CROUCH</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>798267420</ID>
        <Position>
          <X>418.666382</X>
          <Y>1748.59326</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.TriggerTimerBlock(String blockName)</Type>
        <ExtOfType />
        <SequenceInputID>331899866</SequenceInputID>
        <SequenceOutputID>699399257</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>Timer_FlyShip</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>800334050</ID>
        <Position>
          <X>2518.19629</X>
          <Y>1159.668</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>2141264069</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>959818986</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>305057468</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>811180071</ID>
        <Position>
          <X>3890.13257</X>
          <Y>882.9999</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>213125250</SequenceOutput>
        <SequenceInput>31772</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>823871932</ID>
        <Position>
          <X>1117.267</X>
          <Y>948.9701</Y>
        </Position>
        <BoundVariableName>PlayCutscene</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1128726204</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>832908707</ID>
        <Position>
          <X>4040.35083</X>
          <Y>2162.76416</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>1429109415</SequenceOutput>
        <SequenceInput>632125135</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>679090693</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>920719271</ID>
        <Position>
          <X>3327.96753</X>
          <Y>1458.26379</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1281752314</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1165530880</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>945282521</ID>
        <Position>
          <X>608.625244</X>
          <Y>1943.07751</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetCampaignLevelOutcome(String outcome)</Type>
        <ExtOfType />
        <SequenceInputID>500160875</SequenceInputID>
        <SequenceOutputID>1030065341</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>outcome</ParameterName>
            <Value>LevelCompleted</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>959818986</ID>
        <Position>
          <X>2174.09473</X>
          <Y>1201.14893</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>800334050</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>FORWARD</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>979446827</ID>
        <Position>
          <X>1999.86768</X>
          <Y>2495.043</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.TriggerTimerBlock(String blockName)</Type>
        <ExtOfType />
        <SequenceInputID>1531084395</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>Timer_FlyShip</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>983481834</ID>
        <Position>
          <X>2961.927</X>
          <Y>2265.54468</Y>
        </Position>
        <Value>420</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>400500648</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1030065341</ID>
        <Position>
          <X>993.489258</X>
          <Y>1952.53625</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SessionClose(Int32 fadeTimeMs)</Type>
        <ExtOfType />
        <SequenceInputID>945282521</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>fadeTimeMs</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>1037688742</ID>
        <Position>
          <X>2494.814</X>
          <Y>666.0109</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>326292382</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2041293398</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>717266179</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>In_2</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>438129852</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1074185826</ID>
        <Position>
          <X>771.5765</X>
          <Y>121.229752</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1093684308</SequenceInputID>
        <SequenceOutputID>114287621</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2129274088</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1093684308</ID>
        <Position>
          <X>505.365723</X>
          <Y>88.23491</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetAllQuestlogDetailsCompleted(Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>623437374</SequenceInputID>
        <SequenceOutputID>1074185826</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1128726204</ID>
        <Position>
          <X>1267.13672</X>
          <Y>876.7863</Y>
        </Position>
        <InputID>
          <NodeID>823871932</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>31716</SequenceInputID>
        <SequenceTrueOutputID>2012216290</SequenceTrueOutputID>
        <SequnceFalseOutputID>2072524183</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1133799791</ID>
        <Position>
          <X>2232.14331</X>
          <Y>1614.19</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_6</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>ROLL_RIGHT</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1165530880</ID>
        <Position>
          <X>3137.56372</X>
          <Y>1501.233</Y>
        </Position>
        <BoundVariableName>MovementLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>920719271</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1189981091</ID>
        <Position>
          <X>3774.12671</X>
          <Y>1067.998</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetUserControlKey(String keyName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>587115302</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>keyName</ParameterName>
            <Value>FORWARD</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1230580092</ID>
        <Position>
          <X>5064.28271</X>
          <Y>896.3009</Y>
        </Position>
        <VariableName>MovementLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>269333794</SequenceInputID>
        <SequenceOutputID>31796</SequenceOutputID>
        <ValueInputID>
          <NodeID>269333794</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1259980264</ID>
        <Position>
          <X>2752.41162</X>
          <Y>1852.34131</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartCutscene(String cutsceneName, Boolean registerEvents, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1931383659</SequenceInputID>
        <SequenceOutputID>291610362</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>cutsceneName</ParameterName>
            <Value>End</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1270223354</ID>
        <Position>
          <X>2591.056</X>
          <Y>2144.678</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>464224047</SequenceOutput>
        <SequenceInput>1959043162</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>1559493602</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1281752314</ID>
        <Position>
          <X>3150.741</X>
          <Y>1428.12964</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>920719271</SequenceOutput>
        <SequenceInput>2115565861</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1341228209</ID>
        <Position>
          <X>3459.01636</X>
          <Y>2272.68</Y>
        </Position>
        <Value>420</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1467125003</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1353771725</ID>
        <Position>
          <X>4040.41968</X>
          <Y>2271.83447</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_Rebel_Outro5</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1429109415</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1402360149</ID>
        <Position>
          <X>749.671265</X>
          <Y>2478.21118</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityPosition(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>570445339</NodeID>
                <VariableName>posB</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>IrisDoorTimerBlock</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1412751715</ID>
        <Position>
          <X>1448.90454</X>
          <Y>2453.98877</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2072524183</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>570445339</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1568488059</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1429109415</ID>
        <Position>
          <X>4285.62842</X>
          <Y>2157.49536</Y>
        </Position>
        <Name>RebelMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>832908707</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1353771725</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1467125003</ID>
        <Position>
          <X>3574.18115</X>
          <Y>2160.38574</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>632125135</SequenceOutput>
        <SequenceInput>1879542022</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>1341228209</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1473969590</ID>
        <Position>
          <X>1857.103</X>
          <Y>1489.73682</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_2</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>STRAFE_RIGHT</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1529666510</ID>
        <Position>
          <X>2698.99731</X>
          <Y>252.647491</Y>
        </Position>
        <VariableName>LandingGearLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1684386831</SequenceInputID>
        <SequenceOutputID>167862468</SequenceOutputID>
        <ValueInputID>
          <NodeID>1684386831</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1531084395</ID>
        <Position>
          <X>1855.61792</X>
          <Y>2479.48682</Y>
        </Position>
        <VariableName>PlayCutscene</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>2072524183</SequenceInputID>
        <SequenceOutputID>979446827</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1558101393</ID>
        <Position>
          <X>2201.535</X>
          <Y>1818.71606</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>1931383659</SequenceOutput>
        <SequenceInput>2012216290</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>640879340</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1559493602</ID>
        <Position>
          <X>2475.891</X>
          <Y>2256.97241</Y>
        </Position>
        <Value>420</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1270223354</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1568488059</ID>
        <Position>
          <X>1320.11414</X>
          <Y>2534.002</Y>
        </Position>
        <Value>2500</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1412751715</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1583654153</ID>
        <Position>
          <X>2577.552</X>
          <Y>1398.69775</Y>
        </Position>
        <Value>-1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>716146340</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>1621053611</ID>
        <Position>
          <X>2756.86328</X>
          <Y>1520.0094</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>1945255360</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>496768128</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1473969590</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_2</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>498799091</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_3</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>793386276</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_4</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>672105215</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_5</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1133799791</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_6</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1780446448</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>OR</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1622530190</ID>
        <Position>
          <X>1918.2439</X>
          <Y>2191.90747</Y>
        </Position>
        <BoundVariableName>Conversation</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1928037215</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1653964605</ID>
        <Position>
          <X>-406.2931</X>
          <Y>2247.33838</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetDefinitionId(String typeId, String subtypeId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>234710510</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>PhysicalGunObject</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Welder4Item</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1668479044</ID>
        <Position>
          <X>3827.61865</X>
          <Y>953.7598</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest10_End</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>213125250</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1684386831</ID>
        <Position>
          <X>2327.91553</X>
          <Y>253.8764</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogObjective(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>31723</SequenceInputID>
        <SequenceOutputID>1529666510</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>110087628</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1529666510</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1712172850</ID>
        <Position>
          <X>2195.39746</X>
          <Y>1036.26172</Y>
        </Position>
        <BoundVariableName>ForwardLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2141264069</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1717647112</ID>
        <Position>
          <X>432.199768</X>
          <Y>1824.51172</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>GPS_ExitCoords</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>699399257</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1735419073</ID>
        <Position>
          <X>2653.22</X>
          <Y>403.7028</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>GPS_EscapeShip</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </ParameterInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>167862468</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1775626742</ID>
        <Position>
          <X>2749.795</X>
          <Y>713.303162</Y>
        </Position>
        <BoundVariableName>LandingGearLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1930924155</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>1780446448</ID>
        <Position>
          <X>2882.58276</X>
          <Y>1453.9408</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>716146340</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1621053611</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>2115565861</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1798705565</ID>
        <Position>
          <X>101.472595</X>
          <Y>2218.913</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>329867486</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1829793219</ID>
        <Position>
          <X>2559.784</X>
          <Y>1330.53442</Y>
        </Position>
        <BoundVariableName>MovementLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>716146340</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1879542022</ID>
        <Position>
          <X>3324.458</X>
          <Y>2146.41064</Y>
        </Position>
        <Name>RebelMessage</Name>
        <SequenceOutput>1467125003</SequenceOutput>
        <SequenceInput>400500648</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>133589330</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1912928977</ID>
        <Position>
          <X>2105.92749</X>
          <Y>2248.99146</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Chat_Rebel_Outro1</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1959043162</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1928037215</ID>
        <Position>
          <X>2135.77612</X>
          <Y>2123.662</Y>
        </Position>
        <InputID>
          <NodeID>1622530190</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2012216290</SequenceInputID>
        <SequenceTrueOutputID>1959043162</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1929138814</ID>
        <Position>
          <X>765.2067</X>
          <Y>231.751236</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest09_EscapeShip_Enter</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>598693037</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>0</NodeID>
          </MyVariableIdentifier>
        </ParameterInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>114287621</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1930924155</ID>
        <Position>
          <X>2940.19873</X>
          <Y>670.3339</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>11354704</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1775626742</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1931383659</ID>
        <Position>
          <X>2461.51416</X>
          <Y>1851.316</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetDampenersEnabled(String entityName, Boolean state)</Type>
        <ExtOfType />
        <SequenceInputID>1558101393</SequenceInputID>
        <SequenceOutputID>1259980264</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>state</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>EscapeShip</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1945255360</ID>
        <Position>
          <X>1859.03638</X>
          <Y>1339.01489</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1621053611</NodeID>
                <VariableName>In_0</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>STRAFE_LEFT</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1959043162</ID>
        <Position>
          <X>2359.11938</X>
          <Y>2138.88672</Y>
        </Position>
        <Name>RebelMessage</Name>
        <SequenceOutput>1270223354</SequenceOutput>
        <SequenceInput>1928037215</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1912928977</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>2012216290</ID>
        <Position>
          <X>1904.14771</X>
          <Y>1675.51843</Y>
        </Position>
        <SequenceInput>1128726204</SequenceInput>
        <SequenceOutputs>
          <int>1558101393</int>
          <int>1928037215</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2013047001</ID>
        <Position>
          <X>2213.16553</X>
          <Y>1104.425</Y>
        </Position>
        <Value>-1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2141264069</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2041293398</ID>
        <Position>
          <X>2150.7124</X>
          <Y>707.4919</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IsNewGameControlPressed(String controlStringId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1037688742</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>controlStringId</ParameterName>
            <Value>LANDING_GEAR</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>2072524183</ID>
        <Position>
          <X>1664.204</X>
          <Y>2460.54126</Y>
        </Position>
        <InputID>
          <NodeID>1412751715</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1128726204</SequenceInputID>
        <SequenceTrueOutputID>1531084395</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2080735369</ID>
        <Position>
          <X>1954.26587</X>
          <Y>126.941879</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetChatMaxMessageCount(Int32 count)</Type>
        <ExtOfType />
        <SequenceInputID>393043637</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>count</ParameterName>
            <Value>2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>2115565861</ID>
        <Position>
          <X>3004.75024</X>
          <Y>1461.29285</Y>
        </Position>
        <InputID>
          <NodeID>1780446448</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>31761</SequenceInputID>
        <SequenceTrueOutputID>1281752314</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>2129274088</ID>
        <Position>
          <X>494.7176</X>
          <Y>190.197952</Y>
        </Position>
        <Context>Mission02</Context>
        <MessageId>Quest09_EscapeShip</MessageId>
        <ResourceId>0</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1074185826</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2141264069</ID>
        <Position>
          <X>2371.2207</X>
          <Y>1049.50488</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>800334050</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>1712172850</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>2013047001</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>OC01_M2_OLS_EscapeShip</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>