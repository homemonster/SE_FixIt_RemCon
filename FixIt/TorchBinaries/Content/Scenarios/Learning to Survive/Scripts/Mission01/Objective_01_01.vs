<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>Scenarios\Learning to Survive\Scripts\Common\Once.vs</string>
      <string>Scenarios\Learning to Survive\Scripts\Common\OnceAfterDelay.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_EventScriptNode">
        <ID>37685793</ID>
        <Position>
          <X>1092.2395</X>
          <Y>130.640686</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.BlockDestroyed</Name>
        <SequenceOutputID>914080009</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>634451227</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>entityName</string>
          <string>gridName</string>
          <string>typeId</string>
          <string>subtypeId</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.String</string>
          <string>System.String</string>
          <string>System.String</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_EventScriptNode">
        <ID>1415630054</ID>
        <Position>
          <X>1083.57458</X>
          <Y>-346.881378</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.GridPowerGenerationStateChanged</Name>
        <SequenceOutputID>-1</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>gridId</string>
          <string>gridName</string>
          <string>IsPowered</string>
        </OutputNames>
        <OuputTypes>
          <string>System.Int64</string>
          <string>System.String</string>
          <string>System.Boolean</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>7502964</ID>
        <Position>
          <X>2145.69458</X>
          <Y>1624.45276</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>1831535633</SequenceOutput>
        <SequenceInput>1918330974</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>527045265</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>46281659</ID>
        <Position>
          <X>1135.15</X>
          <Y>883.16095</Y>
        </Position>
        <InputID>
          <NodeID>1132332885</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>185509737</SequenceInputID>
        <SequenceTrueOutputID>474882623</SequenceTrueOutputID>
        <SequnceFalseOutputID>123280153</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>57730526</ID>
        <Position>
          <X>3480.134</X>
          <Y>1320.77637</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>958781293</SequenceInputID>
        <SequenceOutputID>2141380370</SequenceOutputID>
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
            <NodeID>829767867</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>450074218</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>subPartNames</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>thickness</ParameterName>
            <Value>20</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>60535792</ID>
        <Position>
          <X>3877.73926</X>
          <Y>1087.61084</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetAlphaHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames, Single alpha)</Type>
        <ExtOfType />
        <SequenceInputID>106542286</SequenceInputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>200219585</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>alpha</ParameterName>
            <Value>0.25</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>color</ParameterName>
            <Value>DarkOrange</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>69363182</ID>
        <Position>
          <X>1659.57458</X>
          <Y>-178.881317</Y>
        </Position>
        <Value>MissionSurvivalKit_01</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1501066798</NodeID>
              <VariableName>name</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>88891791</ID>
        <Position>
          <X>2205.11914</X>
          <Y>1116.31</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>99544068</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1154454587</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1632372697</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>99544068</ID>
        <Position>
          <X>2330.73828</X>
          <Y>1026.57446</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>1709813370</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>88891791</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>727820798</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>106542286</ID>
        <Position>
          <X>3646.73926</X>
          <Y>1087.61084</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetAlphaHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames, Single alpha)</Type>
        <ExtOfType />
        <SequenceInputID>1513050596</SequenceInputID>
        <SequenceOutputID>60535792</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>829767867</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>450074218</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>subPartNames</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>alpha</ParameterName>
            <Value>0.25</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>color</ParameterName>
            <Value>DarkOrange</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>112050104</ID>
        <Position>
          <X>1391.495</X>
          <Y>-223.79718</Y>
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
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1886181443</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsActive</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>112746149</ID>
        <Position>
          <X>1996.0354</X>
          <Y>783.482361</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1107259968</SequenceInputID>
        <SequenceOutputID>1698503819</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1068316571</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>Mission 01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>120754160</ID>
        <Position>
          <X>694</X>
          <Y>533</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>123280153</ID>
        <Position>
          <X>470.811432</X>
          <Y>1171.95789</Y>
        </Position>
        <InputID>
          <NodeID>360497936</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>46281659</SequenceInputID>
        <SequenceTrueOutputID>410179126</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>144248206</ID>
        <Position>
          <X>650.227051</X>
          <Y>1453.81836</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>Button_Fail_Part1</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1005508014</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>167651884</ID>
        <Position>
          <X>2144.8938</X>
          <Y>-321.0057</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>O_01x01_Hint</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>519718547</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>178707881</ID>
        <Position>
          <X>1659.57458</X>
          <Y>-330.881378</Y>
        </Position>
        <InputID>
          <NodeID>1501066798</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>1886181443</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1972012716</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>185509737</ID>
        <Position>
          <X>700.28186</X>
          <Y>862.899353</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>46281659</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>200219585</ID>
        <Position>
          <X>3283.27026</X>
          <Y>1161.70154</Y>
        </Position>
        <Value>Mission_01_H2O2</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2141380370</NodeID>
              <VariableName>entityName</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>1190014758</NodeID>
              <VariableName>entityName</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>60535792</NodeID>
              <VariableName>entityName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>330102263</ID>
        <Position>
          <X>694</X>
          <Y>453</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>344614908</ID>
        <Position>
          <X>578.603149</X>
          <Y>1097.344</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>410179126</NodeID>
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
        <ID>353549852</ID>
        <Position>
          <X>2648.71069</X>
          <Y>1042.52612</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1562876350</SequenceInputID>
        <SequenceOutputID>714491318</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1776522455</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>360497936</ID>
        <Position>
          <X>472.472931</X>
          <Y>1266.66565</Y>
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
            <Ids>
              <MyVariableIdentifier>
                <NodeID>123280153</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFailed</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>374603965</ID>
        <Position>
          <X>2157.27075</X>
          <Y>1526.15613</Y>
        </Position>
        <Value>120</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>429371369</NodeID>
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
        <ID>410112339</ID>
        <Position>
          <X>2999.07983</X>
          <Y>1317.76831</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>1796805242</SequenceInputID>
        <SequenceOutputID>958781293</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>410179126</ID>
        <Position>
          <X>578.5171</X>
          <Y>1175.49072</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>988406011</SequenceOutput>
        <SequenceInput>123280153</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>344614908</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>419281189</ID>
        <Position>
          <X>1453.9115</X>
          <Y>345.226166</Y>
        </Position>
        <Value>MissionSurvivalKit_01</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>634451227</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>429371369</ID>
        <Position>
          <X>2142.673</X>
          <Y>1453.61438</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>1103540773</SequenceOutput>
        <SequenceInput>1918330974</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>374603965</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>450074218</ID>
        <Position>
          <X>3134.26172</X>
          <Y>1074.08826</Y>
        </Position>
        <Value>Screen_section_005</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>57730526</NodeID>
              <VariableName>subPartNames</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>909593098</NodeID>
              <VariableName>subPartNames</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>106542286</NodeID>
              <VariableName>subPartNames</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
        <Vector>
          <X>0</X>
          <Y>0</Y>
          <Z>0</Z>
        </Vector>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>474882623</ID>
        <Position>
          <X>1379.0354</X>
          <Y>902.482361</Y>
        </Position>
        <SequenceInput>46281659</SequenceInput>
        <SequenceOutputs>
          <int>634832882</int>
          <int>1107259968</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>519718547</ID>
        <Position>
          <X>2568.27759</X>
          <Y>1469.88391</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1103540773</SequenceInputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>167651884</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>questDetailRow</ParameterName>
            <Value>Tip #1: Use your brain.</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>527045265</ID>
        <Position>
          <X>2146.02148</X>
          <Y>1698.18347</Y>
        </Position>
        <Value>720</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>7502964</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>540147558</ID>
        <Position>
          <X>694</X>
          <Y>613</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>552777081</ID>
        <Position>
          <X>2148.0354</X>
          <Y>567.4823</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1410790762</SequenceInputID>
        <SequenceOutputID>1636198596</SequenceOutputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1844767451</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>Mission 01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>620274568</ID>
        <Position>
          <X>1203.66016</X>
          <Y>1171.25281</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>888091044</SequenceInputID>
        <SequenceOutputID>1235103700</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>-1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>634451227</ID>
        <Position>
          <X>1500.29053</X>
          <Y>235.9284</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>914080009</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>37685793</NodeID>
          <VariableName>entityName</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>419281189</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>634832882</ID>
        <Position>
          <X>1730.0354</X>
          <Y>558.4823</Y>
        </Position>
        <InputID>
          <NodeID>1696566054</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1588690834</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>660251068</ID>
        <Position>
          <X>2524.73926</X>
          <Y>1641.3291</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1831535633</SequenceInputID>
        <SequenceOutputID>1692043373</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>714491318</ID>
        <Position>
          <X>2856.45239</X>
          <Y>1043.55811</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>353549852</SequenceInputID>
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
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>727820798</ID>
        <Position>
          <X>2410.008</X>
          <Y>1046.84436</Y>
        </Position>
        <InputID>
          <NodeID>99544068</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1107259968</SequenceInputID>
        <SequenceTrueOutputID>1562876350</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>777584858</ID>
        <Position>
          <X>2971.07983</X>
          <Y>1636.76831</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>1692043373</SequenceInputID>
        <SequenceOutputID>1479000488</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>783187568</ID>
        <Position>
          <X>3185.97</X>
          <Y>778.0875</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1577282611</SequenceInputID>
        <SequenceOutputID>1513050596</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>795557403</ID>
        <Position>
          <X>3645.027</X>
          <Y>579.9448</Y>
        </Position>
        <Value>0.5</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2120675505</NodeID>
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
        <ID>829767867</ID>
        <Position>
          <X>3279.84155</X>
          <Y>1075.38721</Y>
        </Position>
        <Value>MissionSurvivalKit_01</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>57730526</NodeID>
              <VariableName>entityName</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>909593098</NodeID>
              <VariableName>entityName</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>106542286</NodeID>
              <VariableName>entityName</VariableName>
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
        <ID>878805362</ID>
        <Position>
          <X>2509.27271</X>
          <Y>1114.31067</Y>
        </Position>
        <Value>30</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1562876350</NodeID>
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
        <ID>888091044</ID>
        <Position>
          <X>956.192</X>
          <Y>1170.80566</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>988406011</SequenceInputID>
        <SequenceOutputID>620274568</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>909593098</ID>
        <Position>
          <X>3456.134</X>
          <Y>1553.77637</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1479000488</SequenceInputID>
        <SequenceOutputID>1190014758</SequenceOutputID>
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
            <NodeID>829767867</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>450074218</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>subPartNames</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>thickness</ParameterName>
            <Value>20</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>914080009</ID>
        <Position>
          <X>1514.561</X>
          <Y>140.900909</Y>
        </Position>
        <InputID>
          <NodeID>634451227</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>37685793</SequenceInputID>
        <SequenceTrueOutputID>944023293</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>942450301</ID>
        <Position>
          <X>3652.63037</X>
          <Y>857.8043</Y>
        </Position>
        <Value>0.5</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1057323372</NodeID>
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
        <ID>944023293</ID>
        <Position>
          <X>1615.50854</X>
          <Y>140.974152</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>914080009</SequenceInputID>
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
            <Value>O_01x01_IsFailed</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>958781293</ID>
        <Position>
          <X>3241.11987</X>
          <Y>1319.04309</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>410112339</SequenceInputID>
        <SequenceOutputID>57730526</SequenceOutputID>
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
            <NodeID>1919885433</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsActive</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>988406011</ID>
        <Position>
          <X>710.491455</X>
          <Y>1172.108</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>410179126</SequenceInputID>
        <SequenceOutputID>888091044</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFinished</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1005508014</ID>
        <Position>
          <X>650.227051</X>
          <Y>1331.81836</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1273131712</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>144248206</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1123808316</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1024122737</ID>
        <Position>
          <X>2712.4082</X>
          <Y>569.7431</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1636198596</SequenceInputID>
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
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>-2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1057323372</ID>
        <Position>
          <X>3762.941</X>
          <Y>857.9911</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1633172037</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1583836088</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>942450301</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1068316571</ID>
        <Position>
          <X>2143.885</X>
          <Y>-425.572449</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>O_01x01_Caption</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>112746149</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1103540773</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1831535633</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1669210481</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1103540773</ID>
        <Position>
          <X>2308.45361</X>
          <Y>1470.03711</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>429371369</SequenceInputID>
        <SequenceOutputID>519718547</SequenceOutputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1068316571</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>Good.Bot Tip 01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SwitchScriptNode">
        <ID>1107259968</ID>
        <Position>
          <X>1696.87354</X>
          <Y>861.1313</Y>
        </Position>
        <SequenceInput>474882623</SequenceInput>
        <Options>
          <OptionData>
            <Option>1</Option>
            <SequenceOutput>112746149</SequenceOutput>
          </OptionData>
          <OptionData>
            <Option>2</Option>
            <SequenceOutput>727820798</SequenceOutput>
          </OptionData>
          <OptionData>
            <Option>3</Option>
            <SequenceOutput>1918330974</SequenceOutput>
          </OptionData>
          <OptionData>
            <Option>-2</Option>
            <SequenceOutput>1484993236</SequenceOutput>
          </OptionData>
        </Options>
        <ValueInput>
          <NodeID>1258063136</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInput>
        <NodeType>System.Int32</NodeType>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1123808316</ID>
        <Position>
          <X>454.7414</X>
          <Y>1453.81836</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>O_01x01_Name</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1005508014</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1132332885</ID>
        <Position>
          <X>981.9314</X>
          <Y>999.5668</Y>
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
                <NodeID>46281659</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsActive</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1154454587</ID>
        <Position>
          <X>2024.24609</X>
          <Y>1191.50952</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPlayersHydrogenLevel(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Single</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>88891791</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1190014758</ID>
        <Position>
          <X>3686.71484</X>
          <Y>1552.88171</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>909593098</SequenceInputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>200219585</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1227755444</ID>
        <Position>
          <X>1477.96631</X>
          <Y>1439.4917</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadLong(String key)</Type>
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
                <NodeID>112746149</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1907545692</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>353549852</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1831535633</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>552777081</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1636198596</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1103540773</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>519718547</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1669210481</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>2066864911</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1154454587</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1649171443</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1583836088</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1474173603</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1916336868</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1919885433</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1698503819</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_Owner</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1235103700</ID>
        <Position>
          <X>1009.67358</X>
          <Y>1319.40039</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SendChatMessage(String message, String author, Int64 playerId, String font)</Type>
        <ExtOfType />
        <SequenceInputID>620274568</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1273131712</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>message</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1876849631</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>author</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1249554229</ID>
        <Position>
          <X>2419.7207</X>
          <Y>-571.5499</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>O_01x01_01_Description</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1698503819</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1258063136</ID>
        <Position>
          <X>1536.15015</X>
          <Y>806.1609</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadInteger(String key)</Type>
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
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1107259968</NodeID>
                <VariableName>ValueInput</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_State</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1273131712</ID>
        <Position>
          <X>790.227051</X>
          <Y>1330.81836</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1235103700</NodeID>
            <VariableName>message</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1005508014</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1769050663</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1336499099</ID>
        <Position>
          <X>1963.80835</X>
          <Y>1315.42041</Y>
        </Position>
        <Value>360</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1484993236</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1370372861</ID>
        <Position>
          <X>3776.027</X>
          <Y>687.9448</Y>
        </Position>
        <InputID>
          <NodeID>2120675505</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceTrueOutputID>1474173603</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1410790762</ID>
        <Position>
          <X>2046.14941</X>
          <Y>564.969238</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>552777081</SequenceOutput>
        <SequenceInput>1588690834</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1474173603</ID>
        <Position>
          <X>3894.55786</X>
          <Y>708.255066</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetPlayersOxygenLevel(Int64 playerId, Single value)</Type>
        <ExtOfType />
        <SequenceInputID>1370372861</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>.5</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1479000488</ID>
        <Position>
          <X>3219.20068</X>
          <Y>1638.10437</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>777584858</SequenceInputID>
        <SequenceOutputID>909593098</SequenceOutputID>
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
            <NodeID>1919885433</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsActive</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1484993236</ID>
        <Position>
          <X>2146.61914</X>
          <Y>1313.042</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>1669210481</SequenceOutput>
        <SequenceInput>1107259968</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1336499099</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1501066798</ID>
        <Position>
          <X>1659.57458</X>
          <Y>-234.881317</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsBlockPowered(String name)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>69363182</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>178707881</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1513050596</ID>
        <Position>
          <X>3406.938</X>
          <Y>790.0345</Y>
        </Position>
        <SequenceInput>783187568</SequenceInput>
        <SequenceOutputs>
          <int>1370372861</int>
          <int>1633172037</int>
          <int>106542286</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1545523867</ID>
        <Position>
          <X>2571.11841</X>
          <Y>1311.9187</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1669210481</SequenceInputID>
        <SequenceOutputID>1796805242</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_State</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>-1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1562876350</ID>
        <Position>
          <X>2508.43164</X>
          <Y>1039.47083</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>353549852</SequenceOutput>
        <SequenceInput>727820798</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>878805362</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1577282611</ID>
        <Position>
          <X>2936.67773</X>
          <Y>783.087463</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1907545692</SequenceInputID>
        <SequenceOutputID>783187568</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1907545692</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_ObjectiveLine_01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1583836088</ID>
        <Position>
          <X>3620.77954</X>
          <Y>798.91</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPlayersHydrogenLevel(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1057323372</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1588690834</ID>
        <Position>
          <X>1904.80859</X>
          <Y>563.5276</Y>
        </Position>
        <InputID>
          <NodeID>1641650182</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>634832882</SequenceInputID>
        <SequenceTrueOutputID>1410790762</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1632372697</ID>
        <Position>
          <X>2075.32422</X>
          <Y>1113.25293</Y>
        </Position>
        <Value>1.0</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>88891791</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1633172037</ID>
        <Position>
          <X>3778.98633</X>
          <Y>966.766357</Y>
        </Position>
        <InputID>
          <NodeID>1057323372</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceTrueOutputID>1916336868</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1636198596</ID>
        <Position>
          <X>2372.0354</X>
          <Y>567.4823</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>552777081</SequenceInputID>
        <SequenceOutputID>1024122737</SequenceOutputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1746944783</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>questDetailRow</ParameterName>
            <Value>Mission Failed!</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>useTyping</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1641650182</ID>
        <Position>
          <X>1906.47009</X>
          <Y>657.2354</Y>
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
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1588690834</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFailed</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1649171443</ID>
        <Position>
          <X>3628.15747</X>
          <Y>523.016541</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPlayersOxygenLevel(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>2120675505</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1669210481</ID>
        <Position>
          <X>2338.61914</X>
          <Y>1313.042</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1484993236</SequenceInputID>
        <SequenceOutputID>1545523867</SequenceOutputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1068316571</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>NoMission</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1692043373</ID>
        <Position>
          <X>2723.965</X>
          <Y>1641.6062</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>660251068</SequenceInputID>
        <SequenceOutputID>777584858</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFinished</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1696566054</ID>
        <Position>
          <X>1448.17749</X>
          <Y>558.6689</Y>
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
                <NodeID>634832882</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFinished</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1698503819</ID>
        <Position>
          <X>2204.0354</X>
          <Y>783.482361</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>112746149</SequenceInputID>
        <SequenceOutputID>1907545692</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1249554229</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>questDetailRow</ParameterName>
            <Value>FirstMissionDescription</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1709813370</ID>
        <Position>
          <X>2205.11914</X>
          <Y>936.0935</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>99544068</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>2066864911</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1751948078</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1746944783</ID>
        <Position>
          <X>2151.168</X>
          <Y>-532.3977</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>Fail_Description</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1636198596</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1751948078</ID>
        <Position>
          <X>2071.75342</X>
          <Y>996.5604</Y>
        </Position>
        <Value>1.0</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1709813370</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1769050663</ID>
        <Position>
          <X>857.227051</X>
          <Y>1453.81836</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>Button_Fail_Part2</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1273131712</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1776522455</ID>
        <Position>
          <X>2648.95215</X>
          <Y>1150.97876</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadInteger(String key)</Type>
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
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>353549852</NodeID>
                <VariableName>lineId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_ObjectiveLine_01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1796805242</ID>
        <Position>
          <X>2760.5874</X>
          <Y>1312.13892</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1545523867</SequenceInputID>
        <SequenceOutputID>410112339</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>O_01x01_IsFinished</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1831535633</ID>
        <Position>
          <X>2298.99683</X>
          <Y>1641.50928</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>7502964</SequenceInputID>
        <SequenceOutputID>660251068</SequenceOutputID>
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
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1068316571</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questName</ParameterName>
            <Value>NoMission</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>visible</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1844767451</ID>
        <Position>
          <X>2153.17676</X>
          <Y>-630.3083</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>Fail_Caption</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>552777081</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1876849631</ID>
        <Position>
          <X>1064.227</X>
          <Y>1453.81836</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>Persons_VirtualAssistant</MessageId>
        <ResourceId>12345</ResourceId>
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
            <NodeID>1235103700</NodeID>
            <VariableName>author</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1886181443</ID>
        <Position>
          <X>1392.95544</X>
          <Y>-330.338867</Y>
        </Position>
        <InputID>
          <NodeID>112050104</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceTrueOutputID>178707881</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1907545692</ID>
        <Position>
          <X>2556.0354</X>
          <Y>783.482361</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogObjective(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1698503819</SequenceInputID>
        <SequenceOutputID>1577282611</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2014907292</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1577282611</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>questDetailRow</ParameterName>
            <Value>Recharge your oxygen and ydrogen at survival kit</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1916336868</ID>
        <Position>
          <X>3897.55786</X>
          <Y>984.2549</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetPlayersHydrogenLevel(Int64 playerId, Single value)</Type>
        <ExtOfType />
        <SequenceInputID>1633172037</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>.5</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1918330974</ID>
        <Position>
          <X>2028.8833</X>
          <Y>1489.31592</Y>
        </Position>
        <SequenceInput>1107259968</SequenceInput>
        <SequenceOutputs>
          <int>429371369</int>
          <int>7502964</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1919885433</ID>
        <Position>
          <X>3217.31519</X>
          <Y>1485.268</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LongToString(Int64 value)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1479000488</NodeID>
                <VariableName>key</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>958781293</NodeID>
                <VariableName>key</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1972012716</ID>
        <Position>
          <X>1859.97693</X>
          <Y>-330.895</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>178707881</SequenceInputID>
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
            <Value>O_01x01_IsFailed</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>2014907292</ID>
        <Position>
          <X>2417.712</X>
          <Y>-473.639343</Y>
        </Position>
        <Context>Common</Context>
        <MessageId>O_01x01_01_Objective</MessageId>
        <ResourceId>12345</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1907545692</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2066864911</ID>
        <Position>
          <X>2020.624</X>
          <Y>937.6161</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPlayersOxygenLevel(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1227755444</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Single</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1709813370</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2120675505</ID>
        <Position>
          <X>3758.027</X>
          <Y>578.9448</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1370372861</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1649171443</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>795557403</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2141380370</ID>
        <Position>
          <X>3710.71484</X>
          <Y>1319.88171</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>57730526</SequenceInputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>200219585</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>pulseTimeInFrames</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Objective_01_01</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>