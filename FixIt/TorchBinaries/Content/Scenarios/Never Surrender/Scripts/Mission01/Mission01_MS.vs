<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <LevelScript>
    <Interface>VRage.Game.VisualScripting.IMyLevelScript</Interface>
    <DependencyFilePaths>
      <string>Scenarios\Never Surrender\Scripts\Common\DelayWithRepeat.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1630718815</ID>
        <Position>
          <X>687.7202</X>
          <Y>74.1138</Y>
        </Position>
        <VariableName>IsWelcomeQuestVisible</VariableName>
        <VariableType>System.Boolean</VariableType>
        <VariableValue>0</VariableValue>
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
        <ID>1970307922</ID>
        <Position>
          <X>995.9656</X>
          <Y>100.269951</Y>
        </Position>
        <VariableName>InfoWaitTime</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>1200</VariableValue>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_EventScriptNode">
        <ID>739469867</ID>
        <Position>
          <X>696.0482</X>
          <Y>284.027161</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.PlayerDied</Name>
        <SequenceOutputID>-1</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>playerId</string>
        </OutputNames>
        <OuputTypes>
          <string>System.Int64</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>39352176</ID>
        <Position>
          <X>1363.21545</X>
          <Y>645.9677</Y>
        </Position>
        <BoundVariableName>IsWelcomeQuestVisible</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1904200425</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>82239071</ID>
        <Position>
          <X>2020.37781</X>
          <Y>864.5432</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPSFromEntityForAll(String entityName, String GPSName, String GPSDescription)</Type>
        <ExtOfType />
        <SequenceInputID>722565743</SequenceInputID>
        <SequenceOutputID>2116772010</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Beacon_Base1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>GPSName</ParameterName>
            <Value>Space Base</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>97205234</ID>
        <Position>
          <X>2012.82947</X>
          <Y>995.3756</Y>
        </Position>
        <VariableName>InfoWaitTime</VariableName>
        <VariableValue>1800</VariableValue>
        <SequenceInputID>722565743</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>224537154</ID>
        <Position>
          <X>1376.49451</X>
          <Y>498.4455</Y>
        </Position>
        <Name>DelayWithRepeat</Name>
        <SequenceOutput>1904200425</SequenceOutput>
        <SequenceInput>797861294</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1238537256</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>248342182</ID>
        <Position>
          <X>2005.59973</X>
          <Y>620.951233</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>722565743</SequenceInputID>
        <SequenceOutputID>1929459679</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1044107812</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>Starting Area</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>270190396</ID>
        <Position>
          <X>2087.38379</X>
          <Y>423.206573</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogVisible(Boolean value, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1904200425</SequenceInputID>
        <SequenceOutputID>1404826409</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>294418036</ID>
        <Position>
          <X>1048.78284</X>
          <Y>726.269348</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>527481998</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>IsDone</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>527481998</ID>
        <Position>
          <X>686.448547</X>
          <Y>723.288147</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartStateMachine(String stateMachineName, Int64 ownerId)</Type>
        <ExtOfType />
        <SequenceInputID>1626997886</SequenceInputID>
        <SequenceOutputID>294418036</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>stateMachineName</ParameterName>
            <Value>Mission01_SM</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>722565743</ID>
        <Position>
          <X>1727.16772</X>
          <Y>567.0308</Y>
        </Position>
        <SequenceInput>1904200425</SequenceInput>
        <SequenceOutputs>
          <int>248342182</int>
          <int>1309908242</int>
          <int>82239071</int>
          <int>97205234</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>797861294</ID>
        <Position>
          <X>1197.04016</X>
          <Y>470.216431</Y>
        </Position>
        <InputID>
          <NodeID>1773266965</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1700616818</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>224537154</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>891681078</ID>
        <Position>
          <X>2247.00146</X>
          <Y>515.141541</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>InformationQuest_Detail</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1929459679</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>904743402</ID>
        <Position>
          <X>494.2672</X>
          <Y>841.8135</Y>
        </Position>
        <MethodName>GameFinished</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1044107812</ID>
        <Position>
          <X>1909.6167</X>
          <Y>520.679565</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>InformationQuest_Title</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>248342182</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1238537256</ID>
        <Position>
          <X>1240.14429</X>
          <Y>595.3334</Y>
        </Position>
        <BoundVariableName>InfoWaitTime</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>224537154</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1239686396</ID>
        <Position>
          <X>2598.98975</X>
          <Y>411.0508</Y>
        </Position>
        <VariableName>InfoWaitTime</VariableName>
        <VariableValue>54000</VariableValue>
        <SequenceInputID>1404826409</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1309908242</ID>
        <Position>
          <X>2001.70532</X>
          <Y>738.5861</Y>
        </Position>
        <VariableName>IsWelcomeQuestVisible</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>722565743</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1404826409</ID>
        <Position>
          <X>2322.675</X>
          <Y>405.070282</Y>
        </Position>
        <VariableName>IsWelcomeQuestVisible</VariableName>
        <VariableValue>false</VariableValue>
        <SequenceInputID>270190396</SequenceInputID>
        <SequenceOutputID>1239686396</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1626997886</ID>
        <Position>
          <X>479.996674</X>
          <Y>744.137939</Y>
        </Position>
        <MethodName>GameStarted</MethodName>
        <SequenceOutputIDs>
          <int>527481998</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1700616818</ID>
        <Position>
          <X>897.4621</X>
          <Y>460.397247</Y>
        </Position>
        <InputID>
          <NodeID>1937194477</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1998813738</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>797861294</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1773266965</ID>
        <Position>
          <X>896.525452</X>
          <Y>596.743347</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadBool(String key)</Type>
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
                <NodeID>797861294</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>IsSpawningStarted</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1904200425</ID>
        <Position>
          <X>1591.28259</X>
          <Y>504.3117</Y>
        </Position>
        <InputID>
          <NodeID>39352176</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>224537154</SequenceInputID>
        <SequenceTrueOutputID>270190396</SequenceTrueOutputID>
        <SequnceFalseOutputID>722565743</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1929459679</ID>
        <Position>
          <X>2292.75684</X>
          <Y>620.8188</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>248342182</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>891681078</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questDetailRow</ParameterName>
            <Value>Welcome Engineer. Take all the time you need. When ready, go to one of the locations displayed on your HUD. Your task is to defend that location to the best of your ability. </Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1937194477</ID>
        <Position>
          <X>507.1391</X>
          <Y>583.4338</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadBool(String key)</Type>
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
                <NodeID>1700616818</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>IsDone</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1998813738</ID>
        <Position>
          <X>607</X>
          <Y>472</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>1700616818</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>2102746800</ID>
        <Position>
          <X>505</X>
          <Y>927</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2116772010</ID>
        <Position>
          <X>2349.788</X>
          <Y>866.921631</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSToEntityForAll(String entityName, String GPSName, String GPSDescription, Color GPSColor)</Type>
        <ExtOfType />
        <SequenceInputID>82239071</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Beacon_Base1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>GPSName</ParameterName>
            <Value>Space Base</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>GPSDescription</ParameterName>
            <Value>Space Base</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>GPSColor</ParameterName>
            <Value>Green</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Mission01_MS</Name>
  </LevelScript>
</MyObjectBuilder_VSFiles>