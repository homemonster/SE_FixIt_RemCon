<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\DeadDropArena\LaunchShipInitial.vs</string>
      <string>VisualScripts\DeadDropArena\AllFactionMembersReady.vs</string>
      <string>VisualScripts\Library\DoAndRepeat.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1777095642</ID>
        <Position>
          <X>337</X>
          <Y>388</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1472732294</ID>
        <Position>
          <X>2181.858</X>
          <Y>984.9684</Y>
        </Position>
        <Name>LaunchShipInitial</Name>
        <SequenceOutput>774076939</SequenceOutput>
        <SequenceInput>331607016</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>ShipName</Name>
            <Input>
              <NodeID>61390980</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>Timer</Name>
            <Input>
              <NodeID>155287416</NodeID>
              <VariableName>Return</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>603988040</ID>
        <Position>
          <X>1796.084</X>
          <Y>841.0631</Y>
        </Position>
        <Value>Blue0</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>61390980</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>244056872</ID>
        <Position>
          <X>1797.28857</X>
          <Y>721.352966</Y>
        </Position>
        <Value>Red0</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>577631495</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>61390980</ID>
        <Position>
          <X>1970.03223</X>
          <Y>826.921</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1472732294</NodeID>
            <VariableName>ShipName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>603988040</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>331607016</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>577631495</ID>
        <Position>
          <X>1970.03223</X>
          <Y>718.0265</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>774076939</NodeID>
            <VariableName>ShipName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>244056872</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>331607016</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>331607016</ID>
        <Position>
          <X>1735.99841</X>
          <Y>965.765137</Y>
        </Position>
        <SequenceInputs>
          <int>1457314341</int>
        </SequenceInputs>
        <SequenceBody>1472732294</SequenceBody>
        <SequenceOutput>1365486485</SequenceOutput>
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
            <NodeID>577631495</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>61390980</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>4</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1538061430</ID>
        <Position>
          <X>3336.68555</X>
          <Y>1349.76111</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.MusicSetMusicCategory(String categoryName)</Type>
        <ExtOfType />
        <SequenceInputID>427010975</SequenceInputID>
        <SequenceOutputID>1451329782</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>categoryName</ParameterName>
            <Value>HeavyFight</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>427010975</ID>
        <Position>
          <X>3047.7085</X>
          <Y>1349.1665</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.MusicPlayMusicCategory(String categoryName, Boolean playAtLeastOnce)</Type>
        <ExtOfType />
        <SequenceInputID>2119588203</SequenceInputID>
        <SequenceOutputID>1538061430</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>categoryName</ParameterName>
            <Value>HeavyFight</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2119588203</ID>
        <Position>
          <X>2815.01855</X>
          <Y>1360.277</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.MusicSetDynamicMusic(Boolean enabled)</Type>
        <ExtOfType />
        <SequenceInputID>856406910</SequenceInputID>
        <SequenceOutputID>427010975</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>154413810</ID>
        <Position>
          <X>1022.73566</X>
          <Y>686.4025</Y>
        </Position>
        <Value>RedTeamReady</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>310123626</NodeID>
              <VariableName>VariableName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>636367503</ID>
        <Position>
          <X>1010.7356</X>
          <Y>452.402527</Y>
        </Position>
        <Value>BlueTeamReady</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>126576306</NodeID>
              <VariableName>VariableName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>310123626</ID>
        <Position>
          <X>1273.413</X>
          <Y>584.904541</Y>
        </Position>
        <Name>AllFactionMembersReady</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>607938946</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Faction</Name>
            <Input>
              <NodeID>1936507543</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>FirstMembers</Name>
            <Input>
              <NodeID>120433261</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>VariableName</Name>
            <Input>
              <NodeID>154413810</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>126576306</ID>
        <Position>
          <X>1269.84521</X>
          <Y>408.901917</Y>
        </Position>
        <Name>AllFactionMembersReady</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>607938946</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Faction</Name>
            <Input>
              <NodeID>1845065654</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>FirstMembers</Name>
            <Input>
              <NodeID>120433261</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>VariableName</Name>
            <Input>
              <NodeID>636367503</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1936507543</ID>
        <Position>
          <X>1151.06812</X>
          <Y>626.2271</Y>
        </Position>
        <Value>Red</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>310123626</NodeID>
              <VariableName>Faction</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1604050545</ID>
        <Position>
          <X>326</X>
          <Y>536</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1452039619</ID>
        <Position>
          <X>484.253235</X>
          <Y>492.226929</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>1133244587</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1845065654</ID>
        <Position>
          <X>1139.84619</X>
          <Y>409.66864</Y>
        </Position>
        <Value>Blu</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>126576306</NodeID>
              <VariableName>Faction</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>394599945</ID>
        <Position>
          <X>988.323242</X>
          <Y>1005.66724</Y>
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
                <NodeID>295539084</NodeID>
                <VariableName>In_0</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTeamReady</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>607938946</ID>
        <Position>
          <X>919.2396</X>
          <Y>521.409668</Y>
        </Position>
        <SequenceInput>1133244587</SequenceInput>
        <SequenceOutputs>
          <int>126576306</int>
          <int>310123626</int>
          <int>1457314341</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>856406910</ID>
        <Position>
          <X>2482.30957</X>
          <Y>1360.09814</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ShowNotificationToAll(String message, Int32 disappearTimeMs, String font)</Type>
        <ExtOfType />
        <SequenceInputID>1365486485</SequenceInputID>
        <SequenceOutputID>2119588203</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>Game Starting!! Launch in 10....9....</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>disappearTimeMs</ParameterName>
            <Value>5000</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>120433261</ID>
        <Position>
          <X>1140.80823</X>
          <Y>527.3118</Y>
        </Position>
        <Value>2</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>126576306</NodeID>
              <VariableName>FirstMembers</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>310123626</NodeID>
              <VariableName>FirstMembers</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1908386933</ID>
        <Position>
          <X>487.2306</X>
          <Y>564.6174</Y>
        </Position>
        <Value>15</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1133244587</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1133244587</ID>
        <Position>
          <X>652.8872</X>
          <Y>491.4594</Y>
        </Position>
        <Name>DoAndRepeat</Name>
        <SequenceOutput>607938946</SequenceOutput>
        <SequenceInput>1452039619</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1908386933</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1451329782</ID>
        <Position>
          <X>3627.67139</X>
          <Y>1348.65137</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>1538061430</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>295539084</ID>
        <Position>
          <X>1379.04858</X>
          <Y>1026.68872</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>394599945</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>298755181</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1457314341</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>298755181</ID>
        <Position>
          <X>988.205444</X>
          <Y>1072.83447</Y>
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
                <NodeID>295539084</NodeID>
                <VariableName>In_1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>RedTeamReady</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1365486485</ID>
        <Position>
          <X>2180.73535</X>
          <Y>1364.72229</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>331607016</SequenceInputID>
        <SequenceOutputID>856406910</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>GameHasStarted</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1457314341</ID>
        <Position>
          <X>1505.2605</X>
          <Y>934.364258</Y>
        </Position>
        <InputID>
          <NodeID>295539084</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>607938946</SequenceInputID>
        <SequenceTrueOutputID>331607016</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>774076939</ID>
        <Position>
          <X>2380.858</X>
          <Y>857.9684</Y>
        </Position>
        <Name>LaunchShipInitial</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>1472732294</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>ShipName</Name>
            <Input>
              <NodeID>577631495</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>Timer</Name>
            <Input>
              <NodeID>155287416</NodeID>
              <VariableName>Return</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>523671740</ID>
        <Position>
          <X>326</X>
          <Y>616</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>155287416</ID>
        <Position>
          <X>1956.5459</X>
          <Y>1148.61926</Y>
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
                <NodeID>1472732294</NodeID>
                <VariableName>Timer</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>774076939</NodeID>
                <VariableName>Timer</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>ShipTimer</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>DeadDropArena_SMS_GameStart</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>