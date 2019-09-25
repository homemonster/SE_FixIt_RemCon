<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\Library\DoAndRepeat.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>13777741</ID>
        <Position>
          <X>523.2798</X>
          <Y>482.564941</Y>
        </Position>
        <VariableName>Counter</VariableName>
        <VariableType>System.Int32</VariableType>
        <VariableValue>15</VariableValue>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>943428134</ID>
        <Position>
          <X>2778.79468</X>
          <Y>-296.0896</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>640929705</SequenceInputID>
        <SequenceOutputID>471126427</SequenceOutputID>
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
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>MedBay2</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1813565306</ID>
        <Position>
          <X>943.376465</X>
          <Y>818.5016</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>277127983</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>766592052</ID>
        <Position>
          <X>4504.38</X>
          <Y>19.0892944</Y>
        </Position>
        <SequenceInputs>
          <int>1363852573</int>
        </SequenceInputs>
        <SequenceBody>816524293</SequenceBody>
        <SequenceOutput>998640919</SequenceOutput>
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
            <NodeID>1597663404</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>9</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1316913971</ID>
        <Position>
          <X>2246.59985</X>
          <Y>-716.2046</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>340260034</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1507658948</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>640929705</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>943428134</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>816524293</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1290430172</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>471126427</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>index</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>340260034</ID>
        <Position>
          <X>1914.59985</X>
          <Y>-773.2046</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetFactionMembers(String factionTag)</Type>
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
                <NodeID>1316913971</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionTag</ParameterName>
            <Value>Blu</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1507658948</ID>
        <Position>
          <X>4581.703</X>
          <Y>-364.460754</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1425684743</SequenceInputID>
        <SequenceOutputID>1109422219</SequenceOutputID>
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
            <NodeID>1432207096</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Carrier_Fortitude</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2143569664</ID>
        <Position>
          <X>2163.63379</X>
          <Y>-290.520874</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetSpeedLimit(String entityName, Single speedLimit)</Type>
        <ExtOfType />
        <SequenceInputID>1378947972</SequenceInputID>
        <SequenceOutputID>640929705</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Remote_Control</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>speedLimit</ParameterName>
            <Value>30</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1597663404</ID>
        <Position>
          <X>4734.508</X>
          <Y>-122.092712</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>816524293</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>653649700</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>766592052</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1425684743</ID>
        <Position>
          <X>4312.881</X>
          <Y>-247.819824</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetBlockGeneralDamageModifier(String blockName, Single modifier)</Type>
        <ExtOfType />
        <SequenceInputID>1363852573</SequenceInputID>
        <SequenceOutputID>1507658948</SequenceOutputID>
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
            <NodeID>1432207096</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>blockName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>modifier</ParameterName>
            <Value>.35</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1719284688</ID>
        <Position>
          <X>1246.66553</X>
          <Y>600.1519</Y>
        </Position>
        <VariableName>Counter</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1664807518</SequenceInputID>
        <SequenceOutputID>1703708729</SequenceOutputID>
        <ValueInputID>
          <NodeID>277127983</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1363852573</ID>
        <Position>
          <X>3820.89014</X>
          <Y>-270.6581</Y>
        </Position>
        <SequenceInputs>
          <int>1290430172</int>
        </SequenceInputs>
        <SequenceBody>1425684743</SequenceBody>
        <SequenceOutput>766592052</SequenceOutput>
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
            <NodeID>1432207096</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>25</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>147004624</ID>
        <Position>
          <X>1447.226</X>
          <Y>-284.728882</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetDroneBehaviourFull(String entityName, String presetName, Boolean activate, Boolean assignToPirates, System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] waypoints, Boolean cycleWaypoints, System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] targets, Int32 playerPriority, Single maxPlayerDistance, TargetPrioritization prioritizationStyle)</Type>
        <ExtOfType />
        <SequenceInputID>788683714</SequenceInputID>
        <SequenceOutputID>1378947972</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2018988283</NodeID>
            <VariableName>Instance</VariableName>
            <OriginName>waypoints</OriginName>
            <OriginType>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>playerPriority</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Remote_Control</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>assignToPirates</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>presetName</ParameterName>
            <Value>Carrier</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>664828800</ID>
        <Position>
          <X>1686.44275</X>
          <Y>544.978149</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SendChatMessage(String message, String author, Int64 playerId, String font)</Type>
        <ExtOfType />
        <SequenceInputID>635617441</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>author</ParameterName>
            <Value>Server</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>Game is starting...</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>font</ParameterName>
            <Value>White</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>323262783</ID>
        <Position>
          <X>1250.67725</X>
          <Y>893.9651</Y>
        </Position>
        <Value>10</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>738168863</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>738168863</ID>
        <Position>
          <X>1439.48682</X>
          <Y>797.282349</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>825263984</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;=</Operation>
        <InputAID>
          <NodeID>813957577</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>323262783</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>813957577</ID>
        <Position>
          <X>1247.34961</X>
          <Y>783.8767</Y>
        </Position>
        <BoundVariableName>Counter</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>738168863</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>640929705</ID>
        <Position>
          <X>2471.8667</X>
          <Y>-280.8316</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>2143569664</SequenceInputID>
        <SequenceOutputID>943428134</SequenceOutputID>
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
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>MedBay1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1432207096</ID>
        <Position>
          <X>4103.64941</X>
          <Y>-351.815735</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1425684743</NodeID>
            <VariableName>blockName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1507658948</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1109422219</NodeID>
            <VariableName>blockName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2073168856</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1363852573</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>870324957</ID>
        <Position>
          <X>2761.28149</X>
          <Y>1074.95593</Y>
        </Position>
        <Value>Seat</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1582281858</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>277127983</ID>
        <Position>
          <X>1071.45691</X>
          <Y>745.1404</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1719284688</NodeID>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>928772137</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1813565306</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1290430172</ID>
        <Position>
          <X>3462.782</X>
          <Y>-287.7473</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>471126427</SequenceInputID>
        <SequenceOutputID>1363852573</SequenceOutputID>
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
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>IntTurret2</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>101679633</ID>
        <Position>
          <X>2190.54468</X>
          <Y>1148.10291</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>963283791</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>1344218298</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>2086092841</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1582281858</ID>
        <Position>
          <X>2884.89355</X>
          <Y>1066.54688</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>282633670</NodeID>
            <VariableName>cockpitName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>870324957</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1025091748</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>967422787</ID>
        <Position>
          <X>3014.7666</X>
          <Y>1327.74634</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>897495167</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1580013039</NodeID>
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
                <NodeID>282633670</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>554753045</ID>
        <Position>
          <X>2723.816</X>
          <Y>1474.0625</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1580013039</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1580013039</ID>
        <Position>
          <X>2864.24585</X>
          <Y>1347.92786</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>967422787</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>1025091748</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>554753045</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1236119384</ID>
        <Position>
          <X>2509.11841</X>
          <Y>1275.89587</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>897495167</NodeID>
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
                <NodeID>1025091748</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1110676318</ID>
        <Position>
          <X>260.560974</X>
          <Y>262.942719</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>816524293</ID>
        <Position>
          <X>4973.93457</X>
          <Y>-23.6962433</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>766592052</SequenceInputID>
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
          <MyVariableIdentifier>
            <NodeID>1597663404</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Carrier_Fortitude</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2086092841</ID>
        <Position>
          <X>2034.262</X>
          <Y>1240.543</Y>
        </Position>
        <Value>5</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>101679633</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>590914749</ID>
        <Position>
          <X>1307.98718</X>
          <Y>-544.9426</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityByName(String name)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1359278495</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>863660909</NodeID>
                <VariableName>item</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>897495167</ID>
        <Position>
          <X>2240.59155</X>
          <Y>1345.77124</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetFactionMembers(String factionTag)</Type>
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
                <NodeID>1236119384</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>967422787</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionTag</ParameterName>
            <Value>Blu</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>963283791</ID>
        <Position>
          <X>2371.35059</X>
          <Y>1150.82263</Y>
        </Position>
        <InputID>
          <NodeID>101679633</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>53990545</SequenceInputID>
        <SequenceTrueOutputID>1025091748</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>53990545</ID>
        <Position>
          <X>2189.702</X>
          <Y>687.7133</Y>
        </Position>
        <SequenceInput>2101276442</SequenceInput>
        <SequenceOutputs>
          <int>312316504</int>
          <int>963283791</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>653649700</ID>
        <Position>
          <X>4606.076</X>
          <Y>-149.687988</Y>
        </Position>
        <Value>Seat</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1597663404</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1344218298</ID>
        <Position>
          <X>2030.93433</X>
          <Y>1130.45459</Y>
        </Position>
        <BoundVariableName>Counter</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>101679633</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1025091748</ID>
        <Position>
          <X>2657.11841</X>
          <Y>1183.89587</Y>
        </Position>
        <SequenceInputs>
          <int>963283791</int>
        </SequenceInputs>
        <SequenceBody>282633670</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>1236119384</NodeID>
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
            <NodeID>1580013039</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1582281858</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1144315634</ID>
        <Position>
          <X>5180.88672</X>
          <Y>165.125</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetBlockGeneralDamageModifier(String blockName, Single modifier)</Type>
        <ExtOfType />
        <SequenceInputID>998640919</SequenceInputID>
        <SequenceOutputID>240067480</SequenceOutputID>
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
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>modifier</ParameterName>
            <Value>.25</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>MedBay1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2073168856</ID>
        <Position>
          <X>3968.97852</X>
          <Y>-326.8507</Y>
        </Position>
        <Value>Turret</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1432207096</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>471126427</ID>
        <Position>
          <X>3112.36157</X>
          <Y>-292.715881</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>943428134</SequenceInputID>
        <SequenceOutputID>1290430172</SequenceOutputID>
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
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1316913971</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>IntTurret1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>825263984</ID>
        <Position>
          <X>1689.13672</X>
          <Y>669.930237</Y>
        </Position>
        <InputID>
          <NodeID>738168863</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1703708729</SequenceInputID>
        <SequenceTrueOutputID>2101276442</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2101276442</ID>
        <Position>
          <X>1902.2218</X>
          <Y>680.921143</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SendChatMessage(String message, String author, Int64 playerId, String font)</Type>
        <ExtOfType />
        <SequenceInputID>825263984</SequenceInputID>
        <SequenceOutputID>53990545</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>804678053</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>message</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>author</ParameterName>
            <Value>Server</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>Game is starting...</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>font</ParameterName>
            <Value>White</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>884300349</ID>
        <Position>
          <X>1664.05615</X>
          <Y>977.9893</Y>
        </Position>
        <BoundVariableName>Counter</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>804678053</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1424895318</ID>
        <Position>
          <X>2824.60815</X>
          <Y>335.539429</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1374478887</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>373451165</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1837188752</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1670494167</ID>
        <Position>
          <X>1021.66174</X>
          <Y>-619.8091</Y>
        </Position>
        <Value>Route_0</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1359278495</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1428023544</ID>
        <Position>
          <X>2422.14844</X>
          <Y>443.51123</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1583250642</NodeID>
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
                <NodeID>373451165</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>373451165</ID>
        <Position>
          <X>2589.86914</X>
          <Y>516.475342</Y>
        </Position>
        <SequenceInputs />
        <SequenceBody>319275562</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>1428023544</NodeID>
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
            <NodeID>1424895318</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1703708729</ID>
        <Position>
          <X>1420.12622</X>
          <Y>614.001953</Y>
        </Position>
        <SequenceInput>1719284688</SequenceInput>
        <SequenceOutputs>
          <int>635617441</int>
          <int>825263984</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1081867778</ID>
        <Position>
          <X>1966.85278</X>
          <Y>831.2872</Y>
        </Position>
        <BoundVariableName>Counter</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1165183564</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1165183564</ID>
        <Position>
          <X>2095.92285</X>
          <Y>844.6928</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>312316504</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;=</Operation>
        <InputAID>
          <NodeID>1081867778</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1594862515</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>312316504</ID>
        <Position>
          <X>2320.474</X>
          <Y>696.108948</Y>
        </Position>
        <InputID>
          <NodeID>1165183564</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>53990545</SequenceInputID>
        <SequenceTrueOutputID>1747244982</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1631868037</ID>
        <Position>
          <X>467.8977</X>
          <Y>-363.8487</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>1403280255</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1583250642</ID>
        <Position>
          <X>2422.847</X>
          <Y>391.540955</Y>
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
                <NodeID>1428023544</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1374478887</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1359278495</ID>
        <Position>
          <X>1150.09338</X>
          <Y>-592.2138</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>590914749</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1670494167</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>788683714</NodeID>
          <VariableName>Counter</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>788683714</ID>
        <Position>
          <X>917.483032</X>
          <Y>-349.730774</Y>
        </Position>
        <SequenceInputs>
          <int>1403280255</int>
        </SequenceInputs>
        <SequenceBody>863660909</SequenceBody>
        <SequenceOutput>147004624</SequenceOutput>
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
            <NodeID>1359278495</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>2</FirstIndexValue>
        <LastIndexValue>7</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>863660909</ID>
        <Position>
          <X>1604.7771</X>
          <Y>-465.135376</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]].Add(MyEntity item)</Type>
        <ExtOfType />
        <SequenceInputID>788683714</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>2018988283</NodeID>
          <VariableName>Instance</VariableName>
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>590914749</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>item</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1594862515</ID>
        <Position>
          <X>1970.18042</X>
          <Y>941.375549</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1165183564</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1378947972</ID>
        <Position>
          <X>1844.454</X>
          <Y>-288.727539</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetCollisionAvoidance(String entityName, Boolean collisionAvoidance)</Type>
        <ExtOfType />
        <SequenceInputID>147004624</SequenceInputID>
        <SequenceOutputID>2143569664</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>collisionAvoidance</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Remote_Control</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_NewListScriptNode">
        <ID>2018988283</ID>
        <Position>
          <X>1295.769</X>
          <Y>-341.285736</Y>
        </Position>
        <Type>VRage.Game.Entity.MyEntity</Type>
        <DefaultEntries />
        <Connections>
          <MyVariableIdentifier>
            <NodeID>863660909</NodeID>
            <VariableName>Instance</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>147004624</NodeID>
            <VariableName>waypoints</VariableName>
          </MyVariableIdentifier>
        </Connections>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>998640919</ID>
        <Position>
          <X>4829.621</X>
          <Y>161.660736</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>766592052</SequenceInputID>
        <SequenceOutputID>1144315634</SequenceOutputID>
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
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>135763703</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>RespawnBlock</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1374478887</ID>
        <Position>
          <X>3012.42773</X>
          <Y>416.7661</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1583250642</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1424895318</NodeID>
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
                <NodeID>319275562</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>389621330</ID>
        <Position>
          <X>849.001465</X>
          <Y>663.776</Y>
        </Position>
        <Value>60</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1664807518</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1664807518</ID>
        <Position>
          <X>1025.75378</X>
          <Y>603.3287</Y>
        </Position>
        <Name>DoAndRepeat</Name>
        <SequenceOutput>1719284688</SequenceOutput>
        <SequenceInput>325196835</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>389621330</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1747244982</ID>
        <Position>
          <X>2693.053</X>
          <Y>757.176941</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>312316504</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1403280255</ID>
        <Position>
          <X>628.0315</X>
          <Y>-349.174744</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.TargetingSetWhitelist(String gridName, Boolean whitelistMode)</Type>
        <ExtOfType />
        <SequenceInputID>1631868037</SequenceInputID>
        <SequenceOutputID>788683714</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>gridName</ParameterName>
            <Value>Carrier_Fortitude</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>399835092</ID>
        <Position>
          <X>260.560974</X>
          <Y>342.942719</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>928772137</ID>
        <Position>
          <X>937.317932</X>
          <Y>759.7485</Y>
        </Position>
        <BoundVariableName>Counter</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>277127983</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>635617441</ID>
        <Position>
          <X>1550.88354</X>
          <Y>527.5946</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>664828800</SequenceOutput>
        <SequenceInput>1703708729</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>325196835</ID>
        <Position>
          <X>846.8402</X>
          <Y>603.9221</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>1664807518</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>319275562</ID>
        <Position>
          <X>3230.70117</X>
          <Y>496.904053</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetPlayersHealth(Int64 playerId, Single value)</Type>
        <ExtOfType />
        <SequenceInputID>373451165</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1374478887</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>-100</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>804678053</ID>
        <Position>
          <X>1785.67078</X>
          <Y>812.6325</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2101276442</NodeID>
            <VariableName>message</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>572135333</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>884300349</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>572135333</ID>
        <Position>
          <X>1662.86523</X>
          <Y>937.015137</Y>
        </Position>
        <Value />
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>804678053</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>282633670</ID>
        <Position>
          <X>3240.2168</X>
          <Y>1211.63806</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.CockpitInsertPilot(String cockpitName, Boolean keepOriginalPlayerPosition, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1025091748</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>967422787</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1582281858</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>cockpitName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>keepOriginalPlayerPosition</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1109422219</ID>
        <Position>
          <X>4908.35254</X>
          <Y>-472.711365</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetBlockShowInTerminal(String blockName, Boolean showInTerminal)</Type>
        <ExtOfType />
        <SequenceInputID>1507658948</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1432207096</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>blockName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>Carrier_Fortitude</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>showInTerminal</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1154006038</ID>
        <Position>
          <X>4156.91</X>
          <Y>200.113586</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetFactionMembers(String factionTag)</Type>
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
                <NodeID>135763703</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionTag</ParameterName>
            <Value>Red</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>135763703</ID>
        <Position>
          <X>4520.02344</X>
          <Y>189.841858</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1154006038</NodeID>
          <VariableName>Return</VariableName>
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>998640919</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>index</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1837188752</ID>
        <Position>
          <X>2682.49658</X>
          <Y>396.083923</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1424895318</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>240067480</ID>
        <Position>
          <X>5457.95654</X>
          <Y>168.564682</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetBlockGeneralDamageModifier(String blockName, Single modifier)</Type>
        <ExtOfType />
        <SequenceInputID>1144315634</SequenceInputID>
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
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>modifier</ParameterName>
            <Value>.25</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>blockName</ParameterName>
            <Value>MedBay2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>ArenaEscort_SMS_GameStart</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>