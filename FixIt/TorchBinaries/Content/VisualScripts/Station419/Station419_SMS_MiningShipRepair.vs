<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\Library\Delay.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
      <string>VisualScripts\Station419\Station419StateStart.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\AssistantMessage.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\DelayWithRepeat.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\OnceAfterDelay.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1759804526</ID>
        <Position>
          <X>-128.216125</X>
          <Y>969.811768</Y>
        </Position>
        <VariableName>GetIntoCockpit</VariableName>
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
        <ID>1219380198</ID>
        <Position>
          <X>-80.14783</X>
          <Y>863.595337</Y>
        </Position>
        <VariableName>Temp</VariableName>
        <VariableType>System.Int32</VariableType>
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
        <ID>1333296025</ID>
        <Position>
          <X>-94.41998</X>
          <Y>757.780151</Y>
        </Position>
        <VariableName>Repaired</VariableName>
        <VariableType>System.Int32</VariableType>
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
        <ID>2068783010</ID>
        <Position>
          <X>-99.7487</X>
          <Y>648.8991</Y>
        </Position>
        <VariableName>UpdateLog</VariableName>
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
        <ID>960295279</ID>
        <Position>
          <X>-132.339508</X>
          <Y>1082.93689</Y>
        </Position>
        <VariableName>CanComplete</VariableName>
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
        <ID>190396874</ID>
        <Position>
          <X>248.658875</X>
          <Y>654.3084</Y>
        </Position>
        <VariableName>RepairedBlocks</VariableName>
        <VariableType>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</VariableType>
        <VariableValue />
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
        <ID>2010673739</ID>
        <Position>
          <X>1100.64673</X>
          <Y>2817.10718</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.PlayerEnteredCockpit</Name>
        <SequenceOutputID>478298561</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1549878599</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>entityName</string>
          <string>playerId</string>
          <string>gridName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.Int64</string>
          <string>System.String</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>368240097</ID>
        <Position>
          <X>1343.426</X>
          <Y>555.193665</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>271343852</SequenceInputID>
        <SequenceOutputID>423623370</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1495923712</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1939378436</ID>
        <Position>
          <X>1192.63135</X>
          <Y>2050.82471</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityInventoryItemAmountPrecise(String entityName, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1081031069</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Single</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>664982705</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipDamagedBlock3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1610992475</ID>
        <Position>
          <X>1699.11365</X>
          <Y>351.882263</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeDoorState(String doorBlockName, Boolean open)</Type>
        <ExtOfType />
        <SequenceInputID>1012503434</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>doorBlockName</ParameterName>
            <Value>DoorHangar2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1578847893</ID>
        <Position>
          <X>1222.65979</X>
          <Y>2150.23364</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityInventoryItemAmountPrecise(String entityName, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1081031069</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Single</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>664982705</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipCargo</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1868069932</ID>
        <Position>
          <X>1371.37622</X>
          <Y>646.9876</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLLine1</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>233676284</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>960621606</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_0</OriginName>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>423623370</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1490486330</ID>
        <Position>
          <X>120.581757</X>
          <Y>276.8716</Y>
        </Position>
        <Value>Station #419 - Repairs</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>459178249</NodeID>
              <VariableName>SaveName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1549878599</ID>
        <Position>
          <X>1294.00415</X>
          <Y>2997.36</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>605179431</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>2010673739</NodeID>
          <VariableName>gridName</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>435542050</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>285295737</ID>
        <Position>
          <X>909.9664</X>
          <Y>2293.81372</Y>
        </Position>
        <InputID>
          <NodeID>144232112</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1921793950</SequenceInputID>
        <SequenceTrueOutputID>1712189694</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1012503434</ID>
        <Position>
          <X>1392.22913</X>
          <Y>349.0538</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeDoorState(String doorBlockName, Boolean open)</Type>
        <ExtOfType />
        <SequenceInputID>549518085</SequenceInputID>
        <SequenceOutputID>1610992475</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>doorBlockName</ParameterName>
            <Value>DoorHangar1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>127235798</ID>
        <Position>
          <X>4395.23828</X>
          <Y>1381.0033</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1475299210</SequenceInputID>
        <SequenceOutputID>859873546</SequenceOutputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipCockpit</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>512145</ID>
        <Position>
          <X>2238.45386</X>
          <Y>864.8972</Y>
        </Position>
        <BoundVariableName>Temp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>968078405</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1601525051</ID>
        <Position>
          <X>910.6345</X>
          <Y>1867.25085</Y>
        </Position>
        <Value>10</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>586696729</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1712189694</ID>
        <Position>
          <X>1100.3418</X>
          <Y>2336.80078</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>234489768</SequenceOutput>
        <SequenceInput>285295737</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>471989086</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1910529516</ID>
        <Position>
          <X>2952.49927</X>
          <Y>1073.83167</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1218426098</SequenceInputID>
        <SequenceOutputID>1596477485</SequenceOutputID>
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
            <NodeID>161350855</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1205150931</ID>
        <Position>
          <X>3446.30029</X>
          <Y>1540.80957</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsBlockFunctional(String name)</Type>
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
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>681839892</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>DrillShipCockpit</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>591609966</ID>
        <Position>
          <X>3484.64722</X>
          <Y>1455.6167</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Contains(Int32 item)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1279630347</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1475299210</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>item</ParameterName>
            <Value>20</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1279630347</ID>
        <Position>
          <X>3224.82153</X>
          <Y>1435.94446</Y>
        </Position>
        <BoundVariableName>RepairedBlocks</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>591609966</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1505227308</ID>
        <Position>
          <X>1716.88428</X>
          <Y>2380.90723</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPSFromEntityForAll(String entityName, String GPSName, String GPSDescription)</Type>
        <ExtOfType />
        <SequenceInputID>317030291</SequenceInputID>
        <SequenceOutputID>1088106984</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1130353931</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipCockpit</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>620214672</ID>
        <Position>
          <X>2607.176</X>
          <Y>1027.22766</Y>
        </Position>
        <VariableName>Temp</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>441649548</SequenceInputID>
        <SequenceOutputID>1218426098</SequenceOutputID>
        <ValueInputID>
          <NodeID>968078405</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1021990682</ID>
        <Position>
          <X>2191.55029</X>
          <Y>633.194</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_GPS</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>1495272216</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>586696729</ID>
        <Position>
          <X>1045.01514</X>
          <Y>1787.57385</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>428948752</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1171289104</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1601525051</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>428948752</ID>
        <Position>
          <X>1300.31311</X>
          <Y>1795.79675</Y>
        </Position>
        <InputID>
          <NodeID>586696729</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1921793950</SequenceInputID>
        <SequenceTrueOutputID>1903256519</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>244023481</ID>
        <Position>
          <X>5118.067</X>
          <Y>1688.49487</Y>
        </Position>
        <BoundVariableName>Repaired</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>732415229</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>144232112</ID>
        <Position>
          <X>734.4875</X>
          <Y>2347.76855</Y>
        </Position>
        <BoundVariableName>CanComplete</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>285295737</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>749936292</ID>
        <Position>
          <X>5125.20264</X>
          <Y>1747.95532</Y>
        </Position>
        <Value>10</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>732415229</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>910230392</ID>
        <Position>
          <X>-125.954468</X>
          <Y>445.786865</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1761964323</ID>
        <Position>
          <X>2258.12769</X>
          <Y>549.0394</Y>
        </Position>
        <VariableName>UpdateLog</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>423623370</SequenceInputID>
        <SequenceOutputID>1495272216</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1834098786</ID>
        <Position>
          <X>5254.272</X>
          <Y>1812.65991</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ReplaceQuestlogDetail(Int32 id, String newDetail, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1924388866</SequenceInputID>
        <SequenceOutputID>2108635589</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>381028754</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>newDetail</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>useTyping</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>430678614</ID>
        <Position>
          <X>1821.738</X>
          <Y>1787.621</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>1118472250</SequenceOutput>
        <SequenceInput>1903256519</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>681839892</ID>
        <Position>
          <X>3720.53442</X>
          <Y>1307.91882</Y>
        </Position>
        <InputID>
          <NodeID>1205150931</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1943936484</SequenceInputID>
        <SequenceTrueOutputID>783591168</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1389234363</ID>
        <Position>
          <X>4890.18</X>
          <Y>2020.262</Y>
        </Position>
        <Value>10</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>381028754</NodeID>
              <VariableName>Param_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>783591168</ID>
        <Position>
          <X>3958.01758</X>
          <Y>1335.37183</Y>
        </Position>
        <VariableName>Temp</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>681839892</SequenceInputID>
        <SequenceOutputID>1475299210</SequenceOutputID>
        <ValueInputID>
          <NodeID>1817027027</NodeID>
          <VariableName>Output</VariableName>
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2017376404</ID>
        <Position>
          <X>957.5135</X>
          <Y>599.890137</Y>
        </Position>
        <Value>480</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>271343852</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1596477485</ID>
        <Position>
          <X>3209.74341</X>
          <Y>1224.28345</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Add(Int32 item)</Type>
        <ExtOfType />
        <SequenceInputID>1910529516</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>757501027</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1989716165</NodeID>
            <VariableName>Counter</VariableName>
            <OriginName>item</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>775787107</ID>
        <Position>
          <X>2340.371</X>
          <Y>1273.98242</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Contains(Int32 item)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>757501027</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1989716165</NodeID>
            <VariableName>Counter</VariableName>
            <OriginName>item</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1218426098</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>757501027</ID>
        <Position>
          <X>1999.74878</X>
          <Y>1378.06567</Y>
        </Position>
        <BoundVariableName>RepairedBlocks</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>775787107</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>1596477485</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1218426098</ID>
        <Position>
          <X>2731.71631</X>
          <Y>1107.21924</Y>
        </Position>
        <InputID>
          <NodeID>775787107</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>620214672</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1910529516</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>459178249</ID>
        <Position>
          <X>322.527557</X>
          <Y>308.75296</Y>
        </Position>
        <Name>Station419StateStart</Name>
        <SequenceOutput>821925400</SequenceOutput>
        <SequenceInput>497739313</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>SaveName</Name>
            <Input>
              <NodeID>1490486330</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2068974440</ID>
        <Position>
          <X>1704.83728</X>
          <Y>2150.94238</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>213455307</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>664982705</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1715215922</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1081031069</ID>
        <Position>
          <X>905.8739</X>
          <Y>2104.13745</Y>
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
                <NodeID>1939378436</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1578847893</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Ingot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Uranium</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>233676284</ID>
        <Position>
          <X>1224.43689</X>
          <Y>734.1414</Y>
        </Position>
        <BoundVariableName>Repaired</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1868069932</NodeID>
              <VariableName>Param_-1</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1130353931</ID>
        <Position>
          <X>1524.10071</X>
          <Y>2492.043</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_GPS</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1505227308</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>605179431</ID>
        <Position>
          <X>1499.80737</X>
          <Y>2947.4563</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>233399330</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1549878599</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>478298561</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>233399330</ID>
        <Position>
          <X>1294.82227</X>
          <Y>2957.732</Y>
        </Position>
        <BoundVariableName>GetIntoCockpit</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>605179431</NodeID>
              <VariableName>In_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>478298561</ID>
        <Position>
          <X>1604.16382</X>
          <Y>2827.88184</Y>
        </Position>
        <InputID>
          <NodeID>605179431</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2010673739</SequenceInputID>
        <SequenceTrueOutputID>1603250425</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1350511743</ID>
        <Position>
          <X>2331.70679</X>
          <Y>2032.94531</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>1775465294</SequenceOutput>
        <SequenceInput>2053765792</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1775465294</ID>
        <Position>
          <X>2519.70947</X>
          <Y>2049.89063</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1350511743</SequenceInputID>
        <SequenceOutputID>1309224469</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1063636045</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1063636045</ID>
        <Position>
          <X>2289.13916</X>
          <Y>2085.8208</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLLine4</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1775465294</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>2053765792</ID>
        <Position>
          <X>2094.792</X>
          <Y>2057.903</Y>
        </Position>
        <SequenceInput>213455307</SequenceInput>
        <SequenceOutputs>
          <int>1350511743</int>
          <int>577918681</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>213455307</ID>
        <Position>
          <X>1836.19006</X>
          <Y>2019.38342</Y>
        </Position>
        <InputID>
          <NodeID>2068974440</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1903256519</SequenceInputID>
        <SequenceTrueOutputID>2053765792</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1118472250</ID>
        <Position>
          <X>2047.47412</X>
          <Y>1802.49414</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>430678614</SequenceInputID>
        <SequenceOutputID>1815383303</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1836216313</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1836216313</ID>
        <Position>
          <X>1816.90381</X>
          <Y>1838.42456</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLLine3</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1118472250</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1808208048</ID>
        <Position>
          <X>4895.555</X>
          <Y>1972.50269</Y>
        </Position>
        <BoundVariableName>Repaired</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>381028754</NodeID>
              <VariableName>Param_-1</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>95026310</ID>
        <Position>
          <X>3189.42773</X>
          <Y>2288.64673</Y>
        </Position>
        <VariableName>GetIntoCockpit</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>23186790</SequenceInputID>
        <SequenceOutputID>1483642616</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>732415229</ID>
        <Position>
          <X>5259.58252</X>
          <Y>1668.27832</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2108635589</NodeID>
            <VariableName>completed</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>244023481</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>749936292</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1463297778</ID>
        <Position>
          <X>4938.7373</X>
          <Y>1888.16431</Y>
        </Position>
        <BoundVariableName>Temp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1924388866</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>435542050</ID>
        <Position>
          <X>1144.80432</X>
          <Y>3065.24268</Y>
        </Position>
        <Value>DrillShip</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1549878599</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2108635589</ID>
        <Position>
          <X>5502.07373</X>
          <Y>1813.22961</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1834098786</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>732415229</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>completed</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1171289104</ID>
        <Position>
          <X>903.499268</X>
          <Y>1807.79041</Y>
        </Position>
        <BoundVariableName>Repaired</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>586696729</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1475299210</ID>
        <Position>
          <X>4140.302</X>
          <Y>1331.3114</Y>
        </Position>
        <InputID>
          <NodeID>591609966</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>783591168</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>127235798</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>2102899755</ID>
        <Position>
          <X>1582.9165</X>
          <Y>1201.68335</Y>
        </Position>
        <VariableName>Temp</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1254039098</SequenceInputID>
        <SequenceOutputID>1989716165</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1943936484</ID>
        <Position>
          <X>3068.9668</X>
          <Y>1599.98926</Y>
        </Position>
        <SequenceInput>1989716165</SequenceInput>
        <SequenceOutputs>
          <int>681839892</int>
          <int>307318462</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1495272216</ID>
        <Position>
          <X>2489.821</X>
          <Y>610.943237</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSToEntityForAll(String entityName, String GPSName, String GPSDescription, Color GPSColor)</Type>
        <ExtOfType />
        <SequenceInputID>1761964323</SequenceInputID>
        <SequenceOutputID>1058397816</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1021990682</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipCockpit</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>885593550</ID>
        <Position>
          <X>1997.81653</X>
          <Y>999.759</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsBlockFunctional(String name)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>161350855</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>441649548</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1921793950</ID>
        <Position>
          <X>776.983948</X>
          <Y>584.2439</Y>
        </Position>
        <SequenceInput>1351273174</SequenceInput>
        <SequenceOutputs>
          <int>271343852</int>
          <int>1254039098</int>
          <int>428948752</int>
          <int>285295737</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1483642616</ID>
        <Position>
          <X>3354.08276</X>
          <Y>2292.08423</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>95026310</SequenceInputID>
        <SequenceOutputID>999362002</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>HangarBP1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subPartNames</ParameterName>
            <Value>ButtonLarge_section_004</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>228687786</ID>
        <Position>
          <X>214.7425</X>
          <Y>402.5622</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_Quest</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>821925400</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>497739313</ID>
        <Position>
          <X>184.76535</X>
          <Y>321.968475</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>459178249</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1351273174</ID>
        <Position>
          <X>590.0746</X>
          <Y>565.291</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>1921793950</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>132988084</ID>
        <Position>
          <X>-125.954468</X>
          <Y>525.786865</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2004421682</ID>
        <Position>
          <X>4089.86035</X>
          <Y>1908.5033</Y>
        </Position>
        <BoundVariableName>UpdateLog</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>307318462</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>999362002</ID>
        <Position>
          <X>3703.441</X>
          <Y>2290.89526</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1483642616</SequenceInputID>
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
            <Value>HangarBP2</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subPartNames</ParameterName>
            <Value>ButtonLarge_section_001</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1175009368</ID>
        <Position>
          <X>1220.32886</X>
          <Y>1252.1925</Y>
        </Position>
        <Value>30</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1254039098</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1495923712</ID>
        <Position>
          <X>1140.64941</X>
          <Y>635.9342</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLTitle</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>368240097</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>307318462</ID>
        <Position>
          <X>4260.98047</X>
          <Y>1840.621</Y>
        </Position>
        <InputID>
          <NodeID>2004421682</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1943936484</SequenceInputID>
        <SequenceTrueOutputID>684080379</SequenceTrueOutputID>
        <SequnceFalseOutputID>350044489</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>713468319</ID>
        <Position>
          <X>1996.86926</X>
          <Y>2854.52417</Y>
        </Position>
        <VariableName>CanComplete</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>1603250425</SequenceInputID>
        <SequenceOutputID>1063022351</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1989716165</ID>
        <Position>
          <X>1728.6239</X>
          <Y>1204.872</Y>
        </Position>
        <SequenceInputs>
          <int>2102899755</int>
        </SequenceInputs>
        <SequenceBody>441649548</SequenceBody>
        <SequenceOutput>1943936484</SequenceOutput>
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
            <NodeID>161350855</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>775787107</NodeID>
            <VariableName>item</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1596477485</NodeID>
            <VariableName>item</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>9</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>549518085</ID>
        <Position>
          <X>1031.40771</X>
          <Y>342.781128</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1907627287</SequenceInputID>
        <SequenceOutputID>1012503434</SequenceOutputID>
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
            <NodeID>759983070</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DoorHangar2</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>246182305</ID>
        <Position>
          <X>2234.88623</X>
          <Y>926.7361</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>968078405</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>159829627</ID>
        <Position>
          <X>4313.961</X>
          <Y>1948.19482</Y>
        </Position>
        <BoundVariableName>Temp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>350044489</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1924388866</ID>
        <Position>
          <X>5075.119</X>
          <Y>1795.352</Y>
        </Position>
        <VariableName>Repaired</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>684080379</SequenceInputID>
        <SequenceOutputID>1834098786</SequenceOutputID>
        <ValueInputID>
          <NodeID>1463297778</NodeID>
          <VariableName>Value</VariableName>
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>821925400</ID>
        <Position>
          <X>515.9984</X>
          <Y>335.7954</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>1907627287</SequenceOutput>
        <SequenceInput>459178249</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>228687786</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1254039098</ID>
        <Position>
          <X>1364.2229</X>
          <Y>1204.62415</Y>
        </Position>
        <Name>DelayWithRepeat</Name>
        <SequenceOutput>2102899755</SequenceOutput>
        <SequenceInput>1921793950</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1175009368</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1071249799</ID>
        <Position>
          <X>3464.64844</X>
          <Y>2122.38623</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_UraniumDone</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1478262399</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>960621606</ID>
        <Position>
          <X>1219.06116</X>
          <Y>781.9006</Y>
        </Position>
        <Value>10</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1868069932</NodeID>
              <VariableName>Param_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1403019436</ID>
        <Position>
          <X>4602.173</X>
          <Y>1969.19556</Y>
        </Position>
        <BoundVariableName>Repaired</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1477621534</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1756741263</ID>
        <Position>
          <X>4516.33936</X>
          <Y>1546.38232</Y>
        </Position>
        <BoundVariableName>RepairedBlocks</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>859873546</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1903256519</ID>
        <Position>
          <X>1587.60132</X>
          <Y>1869.86487</Y>
        </Position>
        <SequenceInput>428948752</SequenceInput>
        <SequenceOutputs>
          <int>430678614</int>
          <int>213455307</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1478262399</ID>
        <Position>
          <X>3730.85254</X>
          <Y>2039.66138</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>774275287</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1071249799</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>381028754</ID>
        <Position>
          <X>5042.49463</X>
          <Y>1910.57556</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLLine1</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>1808208048</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1389234363</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_0</OriginName>
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
            <NodeID>1834098786</NodeID>
            <VariableName>newDetail</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1673951003</ID>
        <Position>
          <X>4607.829</X>
          <Y>1884.34241</Y>
        </Position>
        <BoundVariableName>Temp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1477621534</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>684080379</ID>
        <Position>
          <X>4903.82227</X>
          <Y>1775.45264</Y>
        </Position>
        <InputID>
          <NodeID>1477621534</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>307318462</SequenceInputID>
        <SequenceTrueOutputID>1924388866</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1088106984</ID>
        <Position>
          <X>2022.91052</X>
          <Y>2405.32544</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>1505227308</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1477621534</ID>
        <Position>
          <X>4760.56445</X>
          <Y>1892.82764</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>684080379</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>!=</Operation>
        <InputAID>
          <NodeID>1673951003</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1403019436</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1907627287</ID>
        <Position>
          <X>697.205566</X>
          <Y>340.9369</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>821925400</SequenceInputID>
        <SequenceOutputID>549518085</SequenceOutputID>
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
            <NodeID>759983070</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DoorHangar1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1715215922</ID>
        <Position>
          <X>1559.26819</X>
          <Y>2223.54736</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2068974440</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>161350855</ID>
        <Position>
          <X>1956.52869</X>
          <Y>1100.11145</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>885593550</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1910529516</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1320941631</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1989716165</NodeID>
          <VariableName>Counter</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1223590760</ID>
        <Position>
          <X>3607.58276</X>
          <Y>1237.86462</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1817027027</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>968078405</ID>
        <Position>
          <X>2382.34814</X>
          <Y>850.6267</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>620214672</NodeID>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>512145</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>246182305</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1071054217</ID>
        <Position>
          <X>3611.15039</X>
          <Y>1176.02576</Y>
        </Position>
        <BoundVariableName>Temp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1817027027</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>271343852</ID>
        <Position>
          <X>1061.63574</X>
          <Y>533.994141</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>368240097</SequenceOutput>
        <SequenceInput>1921793950</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>2017376404</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>441649548</ID>
        <Position>
          <X>2381.671</X>
          <Y>1030.11987</Y>
        </Position>
        <InputID>
          <NodeID>885593550</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>1989716165</SequenceInputID>
        <SequenceTrueOutputID>620214672</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>350044489</ID>
        <Position>
          <X>4453.911</X>
          <Y>1899.3833</Y>
        </Position>
        <VariableName>Repaired</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>307318462</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>159829627</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1815383303</ID>
        <Position>
          <X>2399.086</X>
          <Y>1848.851</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>484032859</SequenceOutput>
        <SequenceInput>1118472250</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>375113644</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>234489768</ID>
        <Position>
          <X>1291.44531</X>
          <Y>2361.14136</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1712189694</SequenceInputID>
        <SequenceOutputID>317030291</SequenceOutputID>
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
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>AllowSave</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>484032859</ID>
        <Position>
          <X>2625.8772</X>
          <Y>1883.2417</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridReactors(String gridName, Boolean turnOn)</Type>
        <ExtOfType />
        <SequenceInputID>1815383303</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>gridName</ParameterName>
            <Value>DrillShip</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1063022351</ID>
        <Position>
          <X>2204.5708</X>
          <Y>2876.99731</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetAllQuestlogDetailsCompleted(Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>713468319</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1603250425</ID>
        <Position>
          <X>1832.07593</X>
          <Y>2856.5874</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>713468319</SequenceOutput>
        <SequenceInput>478298561</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>317030291</ID>
        <Position>
          <X>1507.80737</X>
          <Y>2364.289</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogVisible(Boolean value, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>234489768</SequenceInputID>
        <SequenceOutputID>1505227308</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>577918681</ID>
        <Position>
          <X>2355.25244</X>
          <Y>2230.807</Y>
        </Position>
        <InputID>
          <NodeID>1392119016</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2053765792</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>11286633</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1655292440</ID>
        <Position>
          <X>2617.62964</X>
          <Y>2344.17969</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_QLLine5</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>23186790</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>23186790</ID>
        <Position>
          <X>2848.2</X>
          <Y>2308.24951</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>11286633</SequenceInputID>
        <SequenceOutputID>95026310</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1655292440</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>completePrevious</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>11286633</ID>
        <Position>
          <X>2546.676</X>
          <Y>2263.55469</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>23186790</SequenceOutput>
        <SequenceInput>577918681</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1392119016</ID>
        <Position>
          <X>1921.436</X>
          <Y>2252.15552</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>577918681</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>HangarLandingGear</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1309224469</ID>
        <Position>
          <X>2826.24438</X>
          <Y>2048.83862</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1775465294</SequenceInputID>
        <SequenceOutputID>774275287</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>HangarBP1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subPartNames</ParameterName>
            <Value>ButtonLarge_section_004</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>774275287</ID>
        <Position>
          <X>3175.60254</X>
          <Y>2047.64966</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1309224469</SequenceInputID>
        <SequenceOutputID>1478262399</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>HangarBP2</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subPartNames</ParameterName>
            <Value>ButtonLarge_section_001</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>471989086</ID>
        <Position>
          <X>1015.90796</X>
          <Y>2433.127</Y>
        </Position>
        <Value>180</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1712189694</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>423623370</ID>
        <Position>
          <X>1598.583</X>
          <Y>557.2399</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>368240097</SequenceInputID>
        <SequenceOutputID>1761964323</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1868069932</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>664982705</ID>
        <Position>
          <X>1561.26819</X>
          <Y>2065.54736</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2068974440</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1939378436</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1578847893</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>375113644</ID>
        <Position>
          <X>2108.32617</X>
          <Y>1923.01233</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>ShipRepair_Uranium</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1815383303</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>859873546</ID>
        <Position>
          <X>4711.50146</X>
          <Y>1380.91931</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Add(Int32 item)</Type>
        <ExtOfType />
        <SequenceInputID>127235798</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1756741263</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>item</ParameterName>
            <Value>20</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1058397816</ID>
        <Position>
          <X>2798.5415</X>
          <Y>618.4953</Y>
        </Position>
        <SequenceInputs>
          <int>1495272216</int>
        </SequenceInputs>
        <SequenceBody>2064629526</SequenceBody>
        <SequenceOutput>1569274538</SequenceOutput>
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
            <NodeID>874078643</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>9</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>874078643</ID>
        <Position>
          <X>3026.44629</X>
          <Y>513.7348</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2064629526</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>918167810</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1058397816</NodeID>
          <VariableName>Counter</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>918167810</ID>
        <Position>
          <X>2798.8335</X>
          <Y>502.956238</Y>
        </Position>
        <Value>DrillShipDamagedBlock</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>874078643</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2064629526</ID>
        <Position>
          <X>3164.048</X>
          <Y>649.0693</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1058397816</SequenceInputID>
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
            <NodeID>874078643</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1569274538</ID>
        <Position>
          <X>3172.89551</X>
          <Y>821.166931</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1058397816</SequenceInputID>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShipCockpit</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1817027027</ID>
        <Position>
          <X>3755.045</X>
          <Y>1161.75525</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>783591168</NodeID>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1071054217</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1223590760</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1320941631</ID>
        <Position>
          <X>1728.91589</X>
          <Y>1089.33289</Y>
        </Position>
        <Value>DrillShipDamagedBlock</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>161350855</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>759983070</ID>
        <Position>
          <X>465.8156</X>
          <Y>470.5312</Y>
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
                <NodeID>1907627287</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>549518085</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>Founder</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Station419_SMS_MiningShipRepair</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>