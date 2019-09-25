<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\Station419\Station419StateStart.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\AssistantMessage.vs</string>
      <string>VisualScripts\Library\Delay.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\DelayWithRepeat.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>54264606</ID>
        <Position>
          <X>1661.61084</X>
          <Y>-147.795914</Y>
        </Position>
        <VariableName>MagnesiumMessage</VariableName>
        <VariableType>System.Boolean</VariableType>
        <VariableValue>true</VariableValue>
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
        <ID>286490838</ID>
        <Position>
          <X>1651.19763</X>
          <Y>62.6655731</Y>
        </Position>
        <VariableName>AmmoDisplay</VariableName>
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
        <ID>1503847327</ID>
        <Position>
          <X>1899.94653</X>
          <Y>-0.6112213</Y>
        </Position>
        <VariableName>MagnesiumLine</VariableName>
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
        <ID>556623736</ID>
        <Position>
          <X>1648.7832</X>
          <Y>-36.5523529</Y>
        </Position>
        <VariableName>AmmoReq</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>5</VariableValue>
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
        <ID>1716851734</ID>
        <Position>
          <X>1896.4032</X>
          <Y>-105.778107</Y>
        </Position>
        <VariableName>ConveyorLine</VariableName>
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
        <ID>356253768</ID>
        <Position>
          <X>1894.67615</X>
          <Y>-207.438385</Y>
        </Position>
        <VariableName>RepairLine</VariableName>
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
        <ID>617221438</ID>
        <Position>
          <X>1903.342</X>
          <Y>97.50391</Y>
        </Position>
        <VariableName>AmmoLine</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>377890980</ID>
        <Position>
          <X>492.3175</X>
          <Y>91.83969</Y>
        </Position>
        <Value>Station #419 - Defense</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>167592709</NodeID>
              <VariableName>SaveName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>167592709</ID>
        <Position>
          <X>708.7192</X>
          <Y>41.26145</Y>
        </Position>
        <Name>Station419StateStart</Name>
        <SequenceOutput>205039852</SequenceOutput>
        <SequenceInput>1355654387</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>SaveName</Name>
            <Input>
              <NodeID>377890980</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1410870836</ID>
        <Position>
          <X>73.35791</X>
          <Y>449.654</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ShowNotificationToAll(String message, Int32 disappearTimeMs, String font)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>font</ParameterName>
            <Value>Red</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>End of level</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>disappearTimeMs</ParameterName>
            <Value>5000</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1355654387</ID>
        <Position>
          <X>573.3454</X>
          <Y>41.07342</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>167592709</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1242998860</ID>
        <Position>
          <X>935.990356</X>
          <Y>279.334351</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>1708375758</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>957707281</ID>
        <Position>
          <X>697</X>
          <Y>397</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>874536834</ID>
        <Position>
          <X>2633.39624</X>
          <Y>-76.5421143</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsConveyorConnected(String firstBlock, String secondBlock)</Type>
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
                <NodeID>912331788</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>firstBlock</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>secondBlock</ParameterName>
            <Value>Assembler</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1911168507</ID>
        <Position>
          <X>3974.50586</X>
          <Y>1565.74609</Y>
        </Position>
        <BoundVariableName>MagnesiumLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1972746766</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>162247684</ID>
        <Position>
          <X>2996.17554</X>
          <Y>11.6803284</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLLine2</MessageId>
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
            <NodeID>970766545</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>205039852</ID>
        <Position>
          <X>927.9995</X>
          <Y>44.36979</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>167592709</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1542739400</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1494982289</ID>
        <Position>
          <X>3409.83862</X>
          <Y>1183.94434</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.IsConveyorConnected(String firstBlock, String secondBlock)</Type>
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
                <NodeID>648152516</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>firstBlock</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>secondBlock</ParameterName>
            <Value>Assembler</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1530996931</ID>
        <Position>
          <X>3168.23071</X>
          <Y>1045.99976</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>557012126</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2119694995</ID>
        <Position>
          <X>3143.448</X>
          <Y>1006.65149</Y>
        </Position>
        <BoundVariableName>ConveyorLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>557012126</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>970766545</ID>
        <Position>
          <X>3223.38257</X>
          <Y>-78.06735</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>912331788</SequenceInputID>
        <SequenceOutputID>1312887056</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>162247684</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1312887056</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1542739400</ID>
        <Position>
          <X>674.7949</X>
          <Y>120.942535</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_Quest1</MessageId>
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
            <NodeID>205039852</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>558469392</ID>
        <Position>
          <X>1057.429</X>
          <Y>352.315369</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_Quest2</MessageId>
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
            <NodeID>2138304489</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2023081653</ID>
        <Position>
          <X>940.1072</X>
          <Y>331.321075</Y>
        </Position>
        <Value>300</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1708375758</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>557012126</ID>
        <Position>
          <X>3318.947</X>
          <Y>967.412964</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>648152516</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>2119694995</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1530996931</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>2138304489</ID>
        <Position>
          <X>1310.63354</X>
          <Y>275.7426</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>253078595</SequenceOutput>
        <SequenceInput>1708375758</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>558469392</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1844532674</ID>
        <Position>
          <X>1463.9657</X>
          <Y>362.371338</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_Quest3</MessageId>
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
            <NodeID>2139996446</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>253078595</ID>
        <Position>
          <X>1503.34692</X>
          <Y>277.860321</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>2139996446</SequenceOutput>
        <SequenceInput>2138304489</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>1792417610</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>2139996446</ID>
        <Position>
          <X>1703.79187</X>
          <Y>277.852539</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>1144770001</SequenceOutput>
        <SequenceInput>253078595</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1844532674</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1792417610</ID>
        <Position>
          <X>1360.88586</X>
          <Y>351.085754</Y>
        </Position>
        <Value>300</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>253078595</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1144770001</ID>
        <Position>
          <X>1886.1405</X>
          <Y>278.593079</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>66289589</SequenceOutput>
        <SequenceInput>2139996446</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>1347842848</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1347842848</ID>
        <Position>
          <X>1757.22717</X>
          <Y>349.720062</Y>
        </Position>
        <Value>300</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1144770001</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>66289589</ID>
        <Position>
          <X>2077.83374</X>
          <Y>297.3961</Y>
        </Position>
        <SequenceInput>1144770001</SequenceInput>
        <SequenceOutputs>
          <int>1347882691</int>
          <int>1528673443</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1347882691</ID>
        <Position>
          <X>2424.8877</X>
          <Y>131.589569</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>356351077</SequenceOutput>
        <SequenceInput>66289589</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1070737780</ID>
        <Position>
          <X>2339.05859</X>
          <Y>234.24202</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLTitle</MessageId>
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
            <NodeID>356351077</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>356351077</ID>
        <Position>
          <X>2554.56274</X>
          <Y>143.0878</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1347882691</SequenceInputID>
        <SequenceOutputID>78849571</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1070737780</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1343499399</ID>
        <Position>
          <X>2997.61816</X>
          <Y>-209.331924</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLLine1</MessageId>
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
            <NodeID>29952749</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1708375758</ID>
        <Position>
          <X>1091.81018</X>
          <Y>278.804352</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>2138304489</SequenceOutput>
        <SequenceInput>1242998860</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>2023081653</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>648152516</ID>
        <Position>
          <X>3679.75684</X>
          <Y>1065.94958</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>557012126</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1494982289</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1819947765</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>909160717</ID>
        <Position>
          <X>4021.792</X>
          <Y>992.890442</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1819947765</SequenceInputID>
        <SequenceOutputID>568043315</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>463989299</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1819947765</ID>
        <Position>
          <X>3811.50342</X>
          <Y>952.226746</Y>
        </Position>
        <InputID>
          <NodeID>648152516</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>850507646</SequenceInputID>
        <SequenceTrueOutputID>909160717</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>447731396</ID>
        <Position>
          <X>5625.68066</X>
          <Y>1123.44019</Y>
        </Position>
        <VariableName>MagnesiumMessage</VariableName>
        <VariableValue>false</VariableValue>
        <SequenceInputID>1186148746</SequenceInputID>
        <SequenceOutputID>1388232754</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1186148746</ID>
        <Position>
          <X>5383.42236</X>
          <Y>1127.27917</Y>
        </Position>
        <InputID>
          <NodeID>532075044</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>29827833</SequenceInputID>
        <SequenceTrueOutputID>447731396</SequenceTrueOutputID>
        <SequnceFalseOutputID>1438233381</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>876493821</ID>
        <Position>
          <X>5015.88232</X>
          <Y>1099.37708</Y>
        </Position>
        <Value>3000</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>532075044</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>532075044</ID>
        <Position>
          <X>5208.44775</X>
          <Y>1043.03687</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1186148746</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1024913934</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>876493821</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>20803880</ID>
        <Position>
          <X>4550.49365</X>
          <Y>1014.44513</Y>
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
                <NodeID>1024913934</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Magnesium</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Ore</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1024913934</ID>
        <Position>
          <X>4904.081</X>
          <Y>1007.27393</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityInventoryItemAmount(String entityName, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>20803880</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>532075044</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShip</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1987406614</ID>
        <Position>
          <X>4337.89551</X>
          <Y>1245.29443</Y>
        </Position>
        <BoundVariableName>MagnesiumMessage</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>29827833</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>912331788</ID>
        <Position>
          <X>3002.85449</X>
          <Y>-110.806183</Y>
        </Position>
        <InputID>
          <NodeID>874536834</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>78849571</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>970766545</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>81173059</ID>
        <Position>
          <X>3007.8</X>
          <Y>196.607376</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>78849571</SequenceInputID>
        <SequenceOutputID>1385580724</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1219618206</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1385580724</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1219618206</ID>
        <Position>
          <X>2780.593</X>
          <Y>286.355042</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLLine3</MessageId>
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
            <NodeID>81173059</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1385580724</ID>
        <Position>
          <X>3339.92334</X>
          <Y>183.65123</Y>
        </Position>
        <VariableName>MagnesiumLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>81173059</SequenceInputID>
        <SequenceOutputID>1814579925</SequenceOutputID>
        <ValueInputID>
          <NodeID>81173059</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1814579925</ID>
        <Position>
          <X>3580.3042</X>
          <Y>194.87027</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSForAll(String name, String description, Vector3D position, Color GPSColor, Int32 disappearsInS)</Type>
        <ExtOfType />
        <SequenceInputID>1385580724</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1845216395</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1566306520</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>GPSColor</ParameterName>
            <Value>LimeGreen</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1845216395</ID>
        <Position>
          <X>3191.52783</X>
          <Y>353.381622</Y>
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
                <NodeID>1814579925</NodeID>
                <VariableName>position</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Asteroid1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1566306520</ID>
        <Position>
          <X>3312.25</X>
          <Y>256.801056</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_GPS</MessageId>
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
            <NodeID>1814579925</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>568043315</ID>
        <Position>
          <X>4271.897</X>
          <Y>974.188049</Y>
        </Position>
        <VariableName>ConveyorLine</VariableName>
        <VariableValue>-1</VariableValue>
        <SequenceInputID>909160717</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2031724937</ID>
        <Position>
          <X>3711.96655</X>
          <Y>-264.633362</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>817975622</SequenceInputID>
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
            <Value>GatlingTurret</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>988770019</ID>
        <Position>
          <X>2097.70825</X>
          <Y>455.8669</Y>
        </Position>
        <Value>30</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1528673443</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>850507646</ID>
        <Position>
          <X>3016.895</X>
          <Y>1225.98657</Y>
        </Position>
        <SequenceInput>1528673443</SequenceInput>
        <SequenceOutputs>
          <int>747432421</int>
          <int>1819947765</int>
          <int>368370094</int>
          <int>1797577816</int>
          <int>1470879924</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>747432421</ID>
        <Position>
          <X>3900.962</X>
          <Y>715.3559</Y>
        </Position>
        <InputID>
          <NodeID>529907069</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>850507646</SequenceInputID>
        <SequenceTrueOutputID>1713116606</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>133964855</ID>
        <Position>
          <X>3225.18262</X>
          <Y>707.1364</Y>
        </Position>
        <BoundVariableName>RepairLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1778474761</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1778474761</ID>
        <Position>
          <X>3400.68164</X>
          <Y>667.8979</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>529907069</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>133964855</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>2086577841</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2086577841</ID>
        <Position>
          <X>3249.96533</X>
          <Y>746.484558</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1778474761</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1591338977</ID>
        <Position>
          <X>3275.31714</X>
          <Y>789.7259</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>529907069</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>529907069</ID>
        <Position>
          <X>3578.35327</X>
          <Y>716.487732</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>1778474761</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1591338977</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>747432421</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>467868817</ID>
        <Position>
          <X>4342.11475</X>
          <Y>726.41864</Y>
        </Position>
        <VariableName>RepairLine</VariableName>
        <VariableValue>-1</VariableValue>
        <SequenceInputID>1713116606</SequenceInputID>
        <SequenceOutputID>1039858028</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1039858028</ID>
        <Position>
          <X>4487.78174</X>
          <Y>743.944031</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>467868817</SequenceInputID>
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
            <Value>GatlingTurret</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1713116606</ID>
        <Position>
          <X>4097.05469</X>
          <Y>736.7121</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>747432421</SequenceInputID>
        <SequenceOutputID>467868817</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>235184457</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>235184457</ID>
        <Position>
          <X>3932.42163</X>
          <Y>824.379456</Y>
        </Position>
        <BoundVariableName>RepairLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1713116606</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>463989299</ID>
        <Position>
          <X>3861.91553</X>
          <Y>1079.36792</Y>
        </Position>
        <BoundVariableName>ConveyorLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>909160717</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>29952749</ID>
        <Position>
          <X>3208.848</X>
          <Y>-262.921021</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1410344740</SequenceInputID>
        <SequenceOutputID>817975622</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1343499399</NodeID>
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
                <NodeID>817975622</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1528673443</ID>
        <Position>
          <X>2259.698</X>
          <Y>413.3889</Y>
        </Position>
        <Name>DelayWithRepeat</Name>
        <SequenceOutput>850507646</SequenceOutput>
        <SequenceInput>66289589</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>988770019</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>78849571</ID>
        <Position>
          <X>2797.64941</X>
          <Y>144.626389</Y>
        </Position>
        <SequenceInput>356351077</SequenceInput>
        <SequenceOutputs>
          <int>1410344740</int>
          <int>912331788</int>
          <int>81173059</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1312887056</ID>
        <Position>
          <X>3552.55127</X>
          <Y>-92.37079</Y>
        </Position>
        <VariableName>ConveyorLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>970766545</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>970766545</NodeID>
          <VariableName>Return</VariableName>
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1086542141</ID>
        <Position>
          <X>2674.58521</X>
          <Y>-287.854553</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1410344740</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1972746766</ID>
        <Position>
          <X>4158.938</X>
          <Y>1467.47229</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1279836864</SequenceInputID>
        <SequenceOutputID>774747647</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1911168507</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1375884688</ID>
        <Position>
          <X>4226.511</X>
          <Y>2055.51123</Y>
        </Position>
        <InputID>
          <NodeID>1796684608</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1227953042</SequenceInputID>
        <SequenceTrueOutputID>1308238855</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>756030230</ID>
        <Position>
          <X>3020.085</X>
          <Y>2022.16943</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>368452102</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1600474595</ID>
        <Position>
          <X>2846.56714</X>
          <Y>2164.592</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityInventoryItemAmount(String entityName, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>944695366</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>85045661</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>759780246</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1227953042</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>628832085</ID>
        <Position>
          <X>2969.91</X>
          <Y>1408.58618</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>368370094</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>2124860808</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1043734548</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1043734548</ID>
        <Position>
          <X>2819.1936</X>
          <Y>1487.17285</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>628832085</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1948901720</ID>
        <Position>
          <X>3688.596</X>
          <Y>1541.15222</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1279836864</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1481948414</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1151388261</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1481948414</ID>
        <Position>
          <X>3312.596</X>
          <Y>1560.15222</Y>
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
            <NodeID>145061</NodeID>
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
                <NodeID>1948901720</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>145061</ID>
        <Position>
          <X>2851.93921</X>
          <Y>1576.55994</Y>
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
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1481948414</NodeID>
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
            <Value>Magnesium</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1151388261</ID>
        <Position>
          <X>3521.93042</X>
          <Y>1638.4198</Y>
        </Position>
        <Value>0.1</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1948901720</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>339848666</ID>
        <Position>
          <X>4363.42</X>
          <Y>1558.69226</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLLine4</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>1079381749</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1940540455</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_0</OriginName>
            <OriginType>System.String</OriginType>
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
            <NodeID>260461991</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1149660193</ID>
        <Position>
          <X>4919.795</X>
          <Y>1454.64111</Y>
        </Position>
        <VariableName>AmmoLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>260461991</SequenceInputID>
        <SequenceOutputID>487262383</SequenceOutputID>
        <ValueInputID>
          <NodeID>260461991</NodeID>
          <VariableName>Return</VariableName>
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>260461991</ID>
        <Position>
          <X>4590.627</X>
          <Y>1468.94458</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>774747647</SequenceInputID>
        <SequenceOutputID>1149660193</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>339848666</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1149660193</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1079381749</ID>
        <Position>
          <X>3897.61084</X>
          <Y>1696.00562</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityInventoryItemAmount(String entityName, MyDefinitionId itemId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2056262905</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>339848666</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>487262383</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GatlingTurret</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1279836864</ID>
        <Position>
          <X>3893.901</X>
          <Y>1429.88647</Y>
        </Position>
        <InputID>
          <NodeID>1948901720</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>368370094</SequenceInputID>
        <SequenceTrueOutputID>1972746766</SequenceTrueOutputID>
        <SequnceFalseOutputID>29827833</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2056262905</ID>
        <Position>
          <X>3445.00122</X>
          <Y>1684.51843</Y>
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
                <NodeID>1079381749</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>NATO_25x184mm</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>AmmoMagazine</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>82936381</ID>
        <Position>
          <X>2995.30225</X>
          <Y>1982.82129</Y>
        </Position>
        <BoundVariableName>AmmoLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>368452102</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>487262383</ID>
        <Position>
          <X>5060.169</X>
          <Y>1542.00159</Y>
        </Position>
        <VariableName>AmmoDisplay</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1149660193</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>1079381749</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>944695366</ID>
        <Position>
          <X>2489.82</X>
          <Y>2188.42261</Y>
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
                <NodeID>1600474595</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>NATO_25x184mm</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>AmmoMagazine</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>774602586</ID>
        <Position>
          <X>3335.80078</X>
          <Y>2230.543</Y>
        </Position>
        <BoundVariableName>AmmoReq</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>759780246</NodeID>
              <VariableName>Param_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>368452102</ID>
        <Position>
          <X>3170.80127</X>
          <Y>1943.58276</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1409893642</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>82936381</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>756030230</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1797577816</ID>
        <Position>
          <X>3468.97241</X>
          <Y>1915.81592</Y>
        </Position>
        <InputID>
          <NodeID>1409893642</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>850507646</SequenceInputID>
        <SequenceTrueOutputID>919870208</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>368370094</ID>
        <Position>
          <X>3381.50024</X>
          <Y>1425.77637</Y>
        </Position>
        <InputID>
          <NodeID>628832085</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>850507646</SequenceInputID>
        <SequenceTrueOutputID>1279836864</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>85045661</ID>
        <Position>
          <X>3216.14</X>
          <Y>2084.215</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1409893642</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>!=</Operation>
        <InputAID>
          <NodeID>1600474595</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>2070244102</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>759780246</ID>
        <Position>
          <X>3532.727</X>
          <Y>2129.76367</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_QLLine4</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>1600474595</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>774602586</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>Param_0</OriginName>
            <OriginType>System.String</OriginType>
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
            <NodeID>-1</NodeID>
            <VariableName />
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
            <NodeID>919870208</NodeID>
            <VariableName>newDetail</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1227953042</ID>
        <Position>
          <X>4003.80322</X>
          <Y>2044.12341</Y>
        </Position>
        <VariableName>AmmoDisplay</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>919870208</SequenceInputID>
        <SequenceOutputID>1375884688</SequenceOutputID>
        <ValueInputID>
          <NodeID>1600474595</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>13033875</ID>
        <Position>
          <X>3587.472</X>
          <Y>1879.369</Y>
        </Position>
        <BoundVariableName>AmmoLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>919870208</NodeID>
              <VariableName>id</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>919870208</ID>
        <Position>
          <X>3760.2876</X>
          <Y>1953.44373</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ReplaceQuestlogDetail(Int32 id, String newDetail, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1797577816</SequenceInputID>
        <SequenceOutputID>1227953042</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>13033875</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>id</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>759780246</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2070244102</ID>
        <Position>
          <X>3018.64746</X>
          <Y>2129.61572</Y>
        </Position>
        <BoundVariableName>AmmoDisplay</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>85045661</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1123771957</ID>
        <Position>
          <X>697</X>
          <Y>317</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1940540455</ID>
        <Position>
          <X>4166.49365</X>
          <Y>1659.47168</Y>
        </Position>
        <BoundVariableName>AmmoReq</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>339848666</NodeID>
              <VariableName>Param_0</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>245900754</ID>
        <Position>
          <X>4069.07715</X>
          <Y>2701.34351</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>326697892</SequenceInputID>
        <SequenceOutputID>94749778</SequenceOutputID>
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
        <ID>94749778</ID>
        <Position>
          <X>4296.69</X>
          <Y>2708.708</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>245900754</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>173462644</ID>
        <Position>
          <X>3740.50684</X>
          <Y>2777.889</Y>
        </Position>
        <Value>14</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>326697892</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>817975622</ID>
        <Position>
          <X>3544.06348</X>
          <Y>-281.000366</Y>
        </Position>
        <VariableName>RepairLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>29952749</SequenceInputID>
        <SequenceOutputID>2031724937</SequenceOutputID>
        <ValueInputID>
          <NodeID>29952749</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>260116055</ID>
        <Position>
          <X>5620.02734</X>
          <Y>1206.023</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_MagnesiumEnough</MessageId>
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
            <NodeID>1388232754</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>29827833</ID>
        <Position>
          <X>4504.868</X>
          <Y>1134.076</Y>
        </Position>
        <InputID>
          <NodeID>1987406614</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1279836864</SequenceInputID>
        <SequenceTrueOutputID>1186148746</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>774747647</ID>
        <Position>
          <X>4403.99756</X>
          <Y>1457.17883</Y>
        </Position>
        <VariableName>MagnesiumLine</VariableName>
        <VariableValue>-1</VariableValue>
        <SequenceInputID>1972746766</SequenceInputID>
        <SequenceOutputID>260461991</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2124860808</ID>
        <Position>
          <X>2794.411</X>
          <Y>1447.82471</Y>
        </Position>
        <BoundVariableName>MagnesiumLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>628832085</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>1409893642</ID>
        <Position>
          <X>3344.07129</X>
          <Y>2004.8667</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>368452102</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>85045661</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1797577816</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1796684608</ID>
        <Position>
          <X>4085.548</X>
          <Y>2141.81128</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1375884688</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>962415783</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1660366325</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>962415783</ID>
        <Position>
          <X>3920.79224</X>
          <Y>2170.80273</Y>
        </Position>
        <BoundVariableName>AmmoDisplay</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1796684608</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1660366325</ID>
        <Position>
          <X>3942.00537</X>
          <Y>2227.37134</Y>
        </Position>
        <BoundVariableName>AmmoReq</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1796684608</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>2001843820</ID>
        <Position>
          <X>4658.76758</X>
          <Y>2054.5542</Y>
        </Position>
        <VariableName>AmmoLine</VariableName>
        <VariableValue>-1</VariableValue>
        <SequenceInputID>1308238855</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1308238855</ID>
        <Position>
          <X>4410.098</X>
          <Y>2070.57129</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogDetailCompleted(Int32 lineId, Boolean completed, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1375884688</SequenceInputID>
        <SequenceOutputID>2001843820</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1098266885</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>lineId</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1098266885</ID>
        <Position>
          <X>4225.666</X>
          <Y>2168.845</Y>
        </Position>
        <BoundVariableName>AmmoLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1308238855</NodeID>
              <VariableName>lineId</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1470879924</ID>
        <Position>
          <X>3184.90186</X>
          <Y>2712.05615</Y>
        </Position>
        <InputID>
          <NodeID>905420073</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>850507646</SequenceInputID>
        <SequenceTrueOutputID>1905984690</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1507294131</ID>
        <Position>
          <X>2839.311</X>
          <Y>2489.65674</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>905420073</NodeID>
            <VariableName>In_0</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;</Operation>
        <InputAID>
          <NodeID>1296482659</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>449222526</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1296482659</ID>
        <Position>
          <X>2663.812</X>
          <Y>2512.24634</Y>
        </Position>
        <BoundVariableName>RepairLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1507294131</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>449222526</ID>
        <Position>
          <X>2688.59473</X>
          <Y>2551.59448</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1507294131</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1517538214</ID>
        <Position>
          <X>2685.90552</X>
          <Y>2681.81177</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>95724014</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>326697892</ID>
        <Position>
          <X>3866.32251</X>
          <Y>2681.869</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>245900754</SequenceOutput>
        <SequenceInput>2067197834</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>173462644</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>203730210</ID>
        <Position>
          <X>3472.10156</X>
          <Y>2786.11646</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_Completed</MessageId>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2067197834</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>2067197834</ID>
        <Position>
          <X>3688.151</X>
          <Y>2682.22827</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>326697892</SequenceOutput>
        <SequenceInput>1905984690</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>203730210</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>788049840</ID>
        <Position>
          <X>3414.11328</X>
          <Y>2751.39844</Y>
        </Position>
        <Value>2</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1905984690</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1905984690</ID>
        <Position>
          <X>3495.295</X>
          <Y>2674.90015</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>2067197834</SequenceOutput>
        <SequenceInput>1470879924</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>788049840</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>905420073</ID>
        <Position>
          <X>3022.87915</X>
          <Y>2645.25928</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>1507294131</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>95724014</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2054733369</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_2</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>911508943</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_3</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1470879924</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1410344740</ID>
        <Position>
          <X>3002.226</X>
          <Y>-321.6768</Y>
        </Position>
        <InputID>
          <NodeID>1086542141</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>78849571</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>29952749</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>911508943</ID>
        <Position>
          <X>2833.0542</X>
          <Y>2820.85034</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>905420073</NodeID>
            <VariableName>In_3</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;</Operation>
        <InputAID>
          <NodeID>1435856523</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>694359414</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>694359414</ID>
        <Position>
          <X>2682.338</X>
          <Y>2899.437</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>911508943</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2054733369</ID>
        <Position>
          <X>2834.24365</X>
          <Y>2711.443</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>905420073</NodeID>
            <VariableName>In_2</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;</Operation>
        <InputAID>
          <NodeID>976774535</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1783354190</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>976774535</ID>
        <Position>
          <X>2658.74463</X>
          <Y>2750.68164</Y>
        </Position>
        <BoundVariableName>MagnesiumLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2054733369</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1783354190</ID>
        <Position>
          <X>2683.52734</X>
          <Y>2790.02979</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2054733369</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>95724014</ID>
        <Position>
          <X>2836.62183</X>
          <Y>2603.225</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>905420073</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;</Operation>
        <InputAID>
          <NodeID>188665136</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1517538214</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>188665136</ID>
        <Position>
          <X>2661.1228</X>
          <Y>2642.46362</Y>
        </Position>
        <BoundVariableName>ConveyorLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>95724014</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1435856523</ID>
        <Position>
          <X>2657.55518</X>
          <Y>2860.08887</Y>
        </Position>
        <BoundVariableName>AmmoLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>911508943</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1388232754</ID>
        <Position>
          <X>5911.07275</X>
          <Y>1127.76843</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>447731396</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>260116055</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1438233381</ID>
        <Position>
          <X>5667.916</X>
          <Y>1365.79309</Y>
        </Position>
        <SequenceInputs>
          <int>1186148746</int>
        </SequenceInputs>
        <SequenceBody>1129467182</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>520213353</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </LastIndexValueInput>
        <IncrementValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </IncrementValueInput>
        <CounterValueOutputs>
          <MyVariableIdentifier>
            <NodeID>2045224321</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>597401967</ID>
        <Position>
          <X>5372.44775</X>
          <Y>1471.99292</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetOnlinePlayers()</Type>
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
            <OriginType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>520213353</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>2120951689</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>520213353</ID>
        <Position>
          <X>5509.5376</X>
          <Y>1391.2345</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>597401967</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1438233381</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2045224321</ID>
        <Position>
          <X>5926.95166</X>
          <Y>1453.41125</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2120951689</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>1438233381</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>426538254</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>426538254</ID>
        <Position>
          <X>5786.0625</X>
          <Y>1547.68</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2045224321</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1782277041</ID>
        <Position>
          <X>6351.06738</X>
          <Y>1438.4519</Y>
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
            <NodeID>2120951689</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1755166279</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1435022168</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2120951689</ID>
        <Position>
          <X>6040.69971</X>
          <Y>1620.74109</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>597401967</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2045224321</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1782277041</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1755166279</ID>
        <Position>
          <X>6032.425</X>
          <Y>1428.36426</Y>
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
                <NodeID>1782277041</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Magnesium</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Ore</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1435022168</ID>
        <Position>
          <X>6615.724</X>
          <Y>1344.45593</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1129467182</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>1782277041</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1193844529</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1193844529</ID>
        <Position>
          <X>6478.724</X>
          <Y>1397.45593</Y>
        </Position>
        <Value>1500</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1435022168</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1129467182</ID>
        <Position>
          <X>6803.54639</X>
          <Y>1295.20361</Y>
        </Position>
        <InputID>
          <NodeID>1435022168</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1438233381</SequenceInputID>
        <SequenceTrueOutputID>1764955520</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>958323494</ID>
        <Position>
          <X>7278.53467</X>
          <Y>1312.98779</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>1764955520</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1933643080</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1933643080</ID>
        <Position>
          <X>6987.48926</X>
          <Y>1391.24231</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Defense_MagnesiumEnough</MessageId>
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
            <NodeID>958323494</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1764955520</ID>
        <Position>
          <X>6993.14258</X>
          <Y>1308.65955</Y>
        </Position>
        <VariableName>MagnesiumMessage</VariableName>
        <VariableValue>false</VariableValue>
        <SequenceInputID>1129467182</SequenceInputID>
        <SequenceOutputID>958323494</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Station419_SMS_BuildingDefenses</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>