<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\Library\DoAndRepeat.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1877319739</ID>
        <Position>
          <X>438.9228</X>
          <Y>388.777435</Y>
        </Position>
        <VariableName>SpawnGroupNames</VariableName>
        <VariableType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</VariableType>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>297048057</ID>
        <Position>
          <X>444.030151</X>
          <Y>27.7020168</Y>
        </Position>
        <VariableName>Color</VariableName>
        <VariableType>System.String</VariableType>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1832843394</ID>
        <Position>
          <X>444.410645</X>
          <Y>112.322693</Y>
        </Position>
        <VariableName>LogLine</VariableName>
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
        <ID>1216672967</ID>
        <Position>
          <X>446.263336</X>
          <Y>302.5613</Y>
        </Position>
        <VariableName>ShipNames</VariableName>
        <VariableType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</VariableType>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1248068210</ID>
        <Position>
          <X>448.500122</X>
          <Y>219.066162</Y>
        </Position>
        <VariableName>Tickets</VariableName>
        <VariableType>System.String</VariableType>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1692787775</ID>
        <Position>
          <X>446.569519</X>
          <Y>522.0392</Y>
        </Position>
        <VariableName>ShipsToCheck</VariableName>
        <VariableType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</VariableType>
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
        <ID>1624301400</ID>
        <Position>
          <X>1627.17114</X>
          <Y>226.486816</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.TimerBlockTriggeredEntityName</Name>
        <SequenceOutputID>143219740</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>2139372996</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>entityName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>958906034</ID>
        <Position>
          <X>3471.941</X>
          <Y>1783.89917</Y>
        </Position>
        <Value>Cockpit</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2037355448</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1729892601</ID>
        <Position>
          <X>2702.43579</X>
          <Y>1926.09351</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.SubString(String value, Int32 startIndex, Int32 length)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>304315640</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1078570648</NodeID>
                <VariableName>factionTag</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>length</ParameterName>
            <Value>3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1078570648</ID>
        <Position>
          <X>2980.05542</X>
          <Y>1913.86108</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1729892601</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>factionTag</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1190102531</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1190102531</ID>
        <Position>
          <X>3324.1438</X>
          <Y>1918.35034</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1078570648</NodeID>
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
                <NodeID>417341186</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1696613075</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>466764708</ID>
        <Position>
          <X>1620.10144</X>
          <Y>3137.625</Y>
        </Position>
        <SequenceInputs>
          <int>525151048</int>
        </SequenceInputs>
        <SequenceBody>1476923051</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
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
            <NodeID>2121126848</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>0</FirstIndexValue>
        <LastIndexValue>7</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1749619586</ID>
        <Position>
          <X>1716.67114</X>
          <Y>3239.17725</Y>
        </Position>
        <BoundVariableName>ShipNames</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2121126848</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1813985555</ID>
        <Position>
          <X>1963.59448</X>
          <Y>2992.10254</Y>
        </Position>
        <Value>LaunchTimer</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1493197461</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1476923051</ID>
        <Position>
          <X>2606.59058</X>
          <Y>3187.00928</Y>
        </Position>
        <InputID>
          <NodeID>1914410153</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>466764708</SequenceInputID>
        <SequenceTrueOutputID>1171116564</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2037355448</ID>
        <Position>
          <X>3595.68457</X>
          <Y>1762.64832</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>159772421</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>958906034</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>304315640</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1493197461</ID>
        <Position>
          <X>2081.59473</X>
          <Y>3067.10254</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>384558470</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1171116564</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1813985555</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>2121126848</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>384558470</ID>
        <Position>
          <X>2272.43921</X>
          <Y>3119.92</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1493197461</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1914410153</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>2073330120</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1914410153</ID>
        <Position>
          <X>2476.68164</X>
          <Y>3287.50439</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1476923051</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>384558470</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1795491677</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2121126848</ID>
        <Position>
          <X>1894.72485</X>
          <Y>3263.71631</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1749619586</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>466764708</NodeID>
            <VariableName>Counter</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1493197461</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1222729041</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1570875997</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>842587511</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>594923787</ID>
        <Position>
          <X>3858.62451</X>
          <Y>1485.4054</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetName(Int64 entityId, String name)</Type>
        <ExtOfType />
        <SequenceInputID>417341186</SequenceInputID>
        <SequenceOutputID>1696613075</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1525602266</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>159772421</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>417341186</ID>
        <Position>
          <X>3531.8374</X>
          <Y>1493.82983</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1249447972</SequenceInputID>
        <SequenceOutputID>594923787</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>304315640</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1190102531</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1525602266</ID>
        <Position>
          <X>3395.51758</X>
          <Y>1658.53882</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetGridCockpitId(String gridName, Boolean&amp; isMainCockpit, Boolean&amp; found, Boolean checkForEnabledShipControl)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>304315640</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>gridName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>594923787</NodeID>
                <VariableName>entityId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1795491677</ID>
        <Position>
          <X>2314.68164</X>
          <Y>3359.50439</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1914410153</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>952492612</ID>
        <Position>
          <X>3940.76074</X>
          <Y>154.325928</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1722279758</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1992835458</ID>
        <Position>
          <X>1014.92273</X>
          <Y>390.30014</Y>
        </Position>
        <VariableName>SpawnGroupNames</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>948702682</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>290403125</NodeID>
          <VariableName>Instance</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_NewListScriptNode">
        <ID>290403125</ID>
        <Position>
          <X>780.0465</X>
          <Y>466.9693</Y>
        </Position>
        <Type>System.String</Type>
        <DefaultEntries>
          <string>DoM Red 01</string>
          <string>DoM Red 02</string>
          <string>DoM Red 03</string>
          <string>DoM Red 04</string>
          <string>DoM Blue 01</string>
          <string>DoM Blue 02</string>
          <string>DoM Blue 03</string>
          <string>DoM Blue 04</string>
        </DefaultEntries>
        <Connections>
          <MyVariableIdentifier>
            <NodeID>1992835458</NodeID>
          </MyVariableIdentifier>
        </Connections>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>572543009</ID>
        <Position>
          <X>2683.75879</X>
          <Y>399.968048</Y>
        </Position>
        <BoundVariableName>SpawnGroupNames</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1228417163</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1228417163</ID>
        <Position>
          <X>2875.22119</X>
          <Y>432.076569</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>572543009</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>143219740</NodeID>
            <VariableName>Counter</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>543035868</NodeID>
                <VariableName>subtypeId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>915015333</ID>
        <Position>
          <X>2428.02954</X>
          <Y>531.6044</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1855525575</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1369414464</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>446376294</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1617904650</ID>
        <Position>
          <X>2429.4436</X>
          <Y>640.49884</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1542742120</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>191761137</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>446376294</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1787458076</ID>
        <Position>
          <X>2429.4436</X>
          <Y>755.050354</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1107012484</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2063810643</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>446376294</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1369414464</ID>
        <Position>
          <X>2236.07861</X>
          <Y>558.6661</Y>
        </Position>
        <Value>Position</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>915015333</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1984010851</ID>
        <Position>
          <X>3492.09619</X>
          <Y>-52.0437</Y>
        </Position>
        <VariableName>Tickets</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1364666785</SequenceInputID>
        <SequenceOutputID>553979051</SequenceOutputID>
        <ValueInputID>
          <NodeID>808010525</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>143219740</ID>
        <Position>
          <X>1933.15625</X>
          <Y>143.0901</Y>
        </Position>
        <SequenceInputs>
          <int>1624301400</int>
        </SequenceInputs>
        <SequenceBody>698153802</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
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
            <NodeID>446376294</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1423311556</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1228417163</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>0</FirstIndexValue>
        <LastIndexValue>7</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1696613075</ID>
        <Position>
          <X>4136.465</X>
          <Y>1573.6355</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>594923787</SequenceInputID>
        <SequenceOutputID>1924388223</SequenceOutputID>
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
            <NodeID>1190102531</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>159772421</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1171116564</ID>
        <Position>
          <X>2816.24878</X>
          <Y>3168.14941</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1476923051</SequenceInputID>
        <SequenceOutputID>682824045</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2073330120</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1493197461</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1105969486</ID>
        <Position>
          <X>2884.29</X>
          <Y>2874.607</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>682824045</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>2073330120</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>627882071</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1306098038</ID>
        <Position>
          <X>2469.389</X>
          <Y>2999.44971</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>2073330120</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>627882071</ID>
        <Position>
          <X>2582.906</X>
          <Y>2904.25757</Y>
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
                <NodeID>1105969486</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>ShipTimerGyro</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>393634799</ID>
        <Position>
          <X>4362.79834</X>
          <Y>3207.54028</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridBlocksEnabled(String gridName, Boolean enabled)</Type>
        <ExtOfType />
        <SequenceInputID>931385962</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2139905597</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>gridName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1792266995</ID>
        <Position>
          <X>2169.68677</X>
          <Y>1369.283</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>4717764</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>4717764</ID>
        <Position>
          <X>2303.3894</X>
          <Y>1315.46558</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1457762484</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;</Operation>
        <InputAID>
          <NodeID>963585547</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1792266995</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1457762484</ID>
        <Position>
          <X>2451.3877</X>
          <Y>1424.78223</Y>
        </Position>
        <InputID>
          <NodeID>4717764</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1223596704</SequenceInputID>
        <SequenceTrueOutputID>1079978827</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1570875997</ID>
        <Position>
          <X>2294.342</X>
          <Y>3462.16748</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.SubString(String value, Int32 startIndex, Int32 length)</Type>
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
            <NodeID>2121126848</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>436324994</NodeID>
                <VariableName>factionTag</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>length</ParameterName>
            <Value>3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>436324994</ID>
        <Position>
          <X>2571.96167</X>
          <Y>3449.935</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1570875997</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>factionTag</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>2020456357</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2020456357</ID>
        <Position>
          <X>2916.05</X>
          <Y>3454.42432</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>436324994</NodeID>
          <VariableName>Return</VariableName>
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1719914184</NodeID>
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
        <ID>1719914184</ID>
        <Position>
          <X>3854.2522</X>
          <Y>3251.09619</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>2144623361</SequenceInputID>
        <SequenceOutputID>1264776819</SequenceOutputID>
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
            <NodeID>2139905597</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2020456357</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>allShare</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1004627200</ID>
        <Position>
          <X>4689.382</X>
          <Y>2853.0498</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1470608926</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1752479872</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>allShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>613849429</ID>
        <Position>
          <X>4190.34</X>
          <Y>2746.93213</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>650517922</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1367091637</NodeID>
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
                <NodeID>1470608926</NodeID>
                <VariableName>entityId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1470608926</ID>
        <Position>
          <X>4390.34</X>
          <Y>2837.93213</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetName(Int64 entityId, String name)</Type>
        <ExtOfType />
        <SequenceInputID>931385962</SequenceInputID>
        <SequenceOutputID>1004627200</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1752479872</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>name</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>613849429</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1752479872</ID>
        <Position>
          <X>4130.17725</X>
          <Y>3019.081</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1470608926</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1004627200</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1059694369</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1367091637</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1059694369</ID>
        <Position>
          <X>3907.79565</X>
          <Y>3079.73071</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1752479872</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2139905597</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1302000382</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1302000382</ID>
        <Position>
          <X>3736.42651</X>
          <Y>3137.519</Y>
        </Position>
        <Value>Gyro</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1059694369</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1799631069</ID>
        <Position>
          <X>3876.49463</X>
          <Y>2741.68115</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1367091637</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1367091637</ID>
        <Position>
          <X>4015.147</X>
          <Y>2672.463</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1752479872</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>613849429</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>931385962</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1799631069</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1365693435</ID>
        <Position>
          <X>3655.26831</X>
          <Y>2927.493</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>650517922</NodeID>
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
                <NodeID>931385962</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>931385962</ID>
        <Position>
          <X>3795.84131</X>
          <Y>2818.51636</Y>
        </Position>
        <SequenceInputs>
          <int>1140663041</int>
        </SequenceInputs>
        <SequenceBody>1470608926</SequenceBody>
        <SequenceOutput>393634799</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>1365693435</NodeID>
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
            <NodeID>1367091637</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>96791502</ID>
        <Position>
          <X>2534.63452</X>
          <Y>2707.831</Y>
        </Position>
        <Value>CurrentShipId</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1222729041</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1222729041</ID>
        <Position>
          <X>2744.63452</X>
          <Y>2719.831</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2139905597</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>96791502</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>2121126848</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2139905597</ID>
        <Position>
          <X>3103.95386</X>
          <Y>2716.97949</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadString(String key)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1222729041</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>650517922</NodeID>
                <VariableName>gridName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1059694369</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1719914184</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>393634799</NodeID>
                <VariableName>gridName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>863073622</ID>
        <Position>
          <X>3037.521</X>
          <Y>2783.42725</Y>
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
                <NodeID>650517922</NodeID>
                <VariableName>blockId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>SmallBlockGyro</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Gyro</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>650517922</ID>
        <Position>
          <X>3432.65845</X>
          <Y>2737.60352</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetIdListOfSpecificGridBlocks(String gridName, MyDefinitionId blockId)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>863073622</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>blockId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2139905597</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>gridName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1365693435</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>613849429</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>2144623361</ID>
        <Position>
          <X>3384.32544</X>
          <Y>3110.85547</Y>
        </Position>
        <InputID>
          <NodeID>362800964</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>682824045</SequenceInputID>
        <SequenceTrueOutputID>1719914184</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1426423226</ID>
        <Position>
          <X>2764.261</X>
          <Y>3087.269</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>362800964</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>362800964</ID>
        <Position>
          <X>2878.476</X>
          <Y>2992.81836</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2144623361</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;=</Operation>
        <InputAID>
          <NodeID>2073330120</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1426423226</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>312878394</ID>
        <Position>
          <X>309.318146</X>
          <Y>547</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>682824045</ID>
        <Position>
          <X>3157.7063</X>
          <Y>2972.96484</Y>
        </Position>
        <InputID>
          <NodeID>1105969486</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1171116564</SequenceInputID>
        <SequenceTrueOutputID>1140663041</SequenceTrueOutputID>
        <SequnceFalseOutputID>2144623361</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2073330120</ID>
        <Position>
          <X>2609.389</X>
          <Y>3003.44971</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1171116564</NodeID>
            <VariableName>value</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1105969486</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>362800964</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>384558470</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1306098038</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>633474652</ID>
        <Position>
          <X>309.318146</X>
          <Y>627</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1972722552</ID>
        <Position>
          <X>4644.038</X>
          <Y>585.320557</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1787774196</NodeID>
            <VariableName>newDetail</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1207400469</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>408662442</NodeID>
          <VariableName>Return</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>408662442</ID>
        <Position>
          <X>4396.875</X>
          <Y>635.321045</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1763495660</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1972722552</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTickets</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>1079978827</ID>
        <Position>
          <X>2685.13086</X>
          <Y>1455.35181</Y>
        </Position>
        <SequenceInputs>
          <int>1457762484</int>
        </SequenceInputs>
        <SequenceBody>1249447972</SequenceBody>
        <SequenceOutput>-1</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>-1</NodeID>
          <VariableName />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>963585547</NodeID>
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
            <NodeID>262683679</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>1</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1223596704</ID>
        <Position>
          <X>1936.32654</X>
          <Y>1436.01831</Y>
        </Position>
        <Name>DoAndRepeat</Name>
        <SequenceOutput>1457762484</SequenceOutput>
        <SequenceInput>525151048</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1048519867</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>553979051</ID>
        <Position>
          <X>3642.82764</X>
          <Y>-51.5852051</Y>
        </Position>
        <VariableName>LogLine</VariableName>
        <VariableValue>1</VariableValue>
        <SequenceInputID>1984010851</SequenceInputID>
        <SequenceOutputID>871661411</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1048519867</ID>
        <Position>
          <X>1776.64929</X>
          <Y>1446.17529</Y>
        </Position>
        <Value>10</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1223596704</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>963585547</ID>
        <Position>
          <X>2185.25317</X>
          <Y>1558.70715</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>892818168</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1079978827</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>4717764</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>262683679</ID>
        <Position>
          <X>2920.41626</X>
          <Y>1315.26611</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>304315640</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1924388223</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>1079978827</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>2136791755</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2136791755</ID>
        <Position>
          <X>2768.21387</X>
          <Y>1394.31042</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>262683679</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>810237689</ID>
        <Position>
          <X>2996.48315</X>
          <Y>1574.858</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.EntityExists(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>304315640</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1249447972</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1249447972</ID>
        <Position>
          <X>3309.75366</X>
          <Y>1411.35352</Y>
        </Position>
        <InputID>
          <NodeID>810237689</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1079978827</SequenceInputID>
        <SequenceTrueOutputID>417341186</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>304315640</ID>
        <Position>
          <X>3040.34961</X>
          <Y>1492.9928</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>892818168</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>262683679</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>810237689</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>417341186</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1729892601</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>2037355448</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1525602266</NodeID>
                <VariableName>gridName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1848481688</ID>
        <Position>
          <X>2992.29053</X>
          <Y>394.1189</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1394519127</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>626774373</ID>
        <Position>
          <X>698.5</X>
          <Y>391.5</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>948702682</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>149276637</ID>
        <Position>
          <X>2895.31787</X>
          <Y>293.303955</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2020083297</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1394519127</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTickets</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2002770669</ID>
        <Position>
          <X>4535.338</X>
          <Y>442.719238</Y>
        </Position>
        <BoundVariableName>LogLine</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1787774196</NodeID>
              <VariableName>id</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>270625885</ID>
        <Position>
          <X>4225.1416</X>
          <Y>283.470947</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreInteger(String key, Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>1300039585</SequenceInputID>
        <SequenceOutputID>442158421</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1722279758</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>665062377</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTickets</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1722279758</ID>
        <Position>
          <X>4062.05957</X>
          <Y>165.029053</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>270625885</NodeID>
            <VariableName>value</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>1556893801</NodeID>
          <VariableName>Return</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>952492612</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>665062377</ID>
        <Position>
          <X>3620.782</X>
          <Y>233.51709</Y>
        </Position>
        <BoundVariableName>Tickets</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1556893801</NodeID>
              <VariableName>key</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>270625885</NodeID>
              <VariableName>key</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1394519127</ID>
        <Position>
          <X>3129.04932</X>
          <Y>310.874268</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1665864643</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>149276637</NodeID>
          <VariableName>Return</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>1848481688</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1107012484</ID>
        <Position>
          <X>3096.556</X>
          <Y>644.8015</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadVector(String key)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1787458076</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>543035868</NodeID>
                <VariableName>up</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>DirectionUpBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2020083297</ID>
        <Position>
          <X>2755.42749</X>
          <Y>316.822754</Y>
        </Position>
        <BoundVariableName>Tickets</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>149276637</NodeID>
              <VariableName>key</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1542742120</ID>
        <Position>
          <X>3063.72778</X>
          <Y>571.796631</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadVector(String key)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1617904650</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>543035868</NodeID>
                <VariableName>direction</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>DirectionForwardBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1855525575</ID>
        <Position>
          <X>3107.89526</X>
          <Y>500.1687</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.LoadVector(String key)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>915015333</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>543035868</NodeID>
                <VariableName>position</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>PositionBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1763495660</ID>
        <Position>
          <X>4270.092</X>
          <Y>720.4795</Y>
        </Position>
        <BoundVariableName>Tickets</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>408662442</NodeID>
              <VariableName>key</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>871661411</ID>
        <Position>
          <X>3782.44482</X>
          <Y>-55.7426758</Y>
        </Position>
        <VariableName>Color</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>553979051</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>787668788</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1219642575</ID>
        <Position>
          <X>3783.02881</X>
          <Y>49.50415</Y>
        </Position>
        <VariableName>Color</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1318948474</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>1955591870</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>787668788</ID>
        <Position>
          <X>3648.34375</X>
          <Y>-86.34741</Y>
        </Position>
        <Value>Red</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>871661411</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1955591870</ID>
        <Position>
          <X>3649.05127</X>
          <Y>130.027588</Y>
        </Position>
        <Value>Blue</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1219642575</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1207400469</ID>
        <Position>
          <X>4386.61328</X>
          <Y>505.1443</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1972722552</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2084215607</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1518062655</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2084215607</ID>
        <Position>
          <X>4239.456</X>
          <Y>498.417</Y>
        </Position>
        <BoundVariableName>Color</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1207400469</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>525151048</ID>
        <Position>
          <X>1365.66968</X>
          <Y>1881.62512</Y>
        </Position>
        <SequenceInput>1391961220</SequenceInput>
        <SequenceOutputs>
          <int>1223596704</int>
          <int>466764708</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1391961220</ID>
        <Position>
          <X>1121.13379</X>
          <Y>1869.67261</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>525151048</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1300039585</ID>
        <Position>
          <X>3969.13721</X>
          <Y>290.619537</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Add(String item)</Type>
        <ExtOfType />
        <SequenceInputID>543035868</SequenceInputID>
        <SequenceOutputID>270625885</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1210344412</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>446376294</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>item</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2063810643</ID>
        <Position>
          <X>2219.64355</X>
          <Y>782.0725</Y>
        </Position>
        <Value>DirectionUp</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1787458076</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>442158421</ID>
        <Position>
          <X>4436.3623</X>
          <Y>356.1189</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>270625885</SequenceInputID>
        <SequenceOutputID>1787774196</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>112951500</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>PrimedBlue01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1140663041</ID>
        <Position>
          <X>3441.71729</X>
          <Y>2606.91357</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ShowNotification(String message, Int32 disappearTimeMs, String font, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>682824045</SequenceInputID>
        <SequenceOutputID>931385962</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1906002836</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>disappearTimeMs</ParameterName>
            <Value>3000</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>Fly systems activated.</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1924388223</ID>
        <Position>
          <X>4448.93066</X>
          <Y>1660.42859</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].RemoveAt(Int32 index)</Type>
        <ExtOfType />
        <SequenceInputID>1696613075</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>892818168</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>262683679</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>611533576</ID>
        <Position>
          <X>2837.23</X>
          <Y>176.01001</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>698153802</SequenceInputID>
        <SequenceOutputID>2102153286</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>112951500</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>PrimedBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1318948474</ID>
        <Position>
          <X>3642.82666</X>
          <Y>53.7443848</Y>
        </Position>
        <VariableName>LogLine</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>317980835</SequenceInputID>
        <SequenceOutputID>1219642575</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1373906571</ID>
        <Position>
          <X>3268.30664</X>
          <Y>91.35962</Y>
        </Position>
        <Value>BlueTickets</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>317980835</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>50008989</ID>
        <Position>
          <X>2148.52417</X>
          <Y>55.9438477</Y>
        </Position>
        <Value>Launched</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1150543895</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1364666785</ID>
        <Position>
          <X>3241.24438</X>
          <Y>-15.4870605</Y>
        </Position>
        <InputID>
          <NodeID>1423311556</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2102153286</SequenceInputID>
        <SequenceTrueOutputID>1984010851</SequenceTrueOutputID>
        <SequnceFalseOutputID>317980835</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>2102153286</ID>
        <Position>
          <X>3099.62524</X>
          <Y>170.282471</Y>
        </Position>
        <SequenceInput>611533576</SequenceInput>
        <SequenceOutputs>
          <int>1364666785</int>
          <int>1665864643</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1169263911</ID>
        <Position>
          <X>2238.679</X>
          <Y>441.94873</Y>
        </Position>
        <Value>Primed</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>112951500</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>112951500</ID>
        <Position>
          <X>2427.638</X>
          <Y>416.623047</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>611533576</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>442158421</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1169263911</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>446376294</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>698153802</ID>
        <Position>
          <X>2613.72632</X>
          <Y>141.622314</Y>
        </Position>
        <InputID>
          <NodeID>2139372996</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>143219740</SequenceInputID>
        <SequenceTrueOutputID>611533576</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1665864643</ID>
        <Position>
          <X>3364.647</X>
          <Y>220.385986</Y>
        </Position>
        <InputID>
          <NodeID>1394519127</NodeID>
          <VariableName>Output</VariableName>
        </InputID>
        <SequenceInputID>2102153286</SequenceInputID>
        <SequenceTrueOutputID>543035868</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1150543895</ID>
        <Position>
          <X>2292.067</X>
          <Y>38.2661133</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>2139372996</NodeID>
            <VariableName>Input_B</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>50008989</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>446376294</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1423311556</ID>
        <Position>
          <X>2880.34277</X>
          <Y>-23.7775879</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1364666785</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&lt;</Operation>
        <InputAID>
          <NodeID>143219740</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>124767173</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_NewListScriptNode">
        <ID>834685651</ID>
        <Position>
          <X>656.3639</X>
          <Y>141.697784</Y>
        </Position>
        <Type>System.String</Type>
        <DefaultEntries>
          <string>Red01</string>
          <string>Red02</string>
          <string>Red03</string>
          <string>Red04</string>
          <string>Blue01</string>
          <string>Blue02</string>
          <string>Blue03</string>
          <string>Blue04</string>
        </DefaultEntries>
        <Connections>
          <MyVariableIdentifier>
            <NodeID>948702682</NodeID>
          </MyVariableIdentifier>
        </Connections>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>2139372996</ID>
        <Position>
          <X>2425.00317</X>
          <Y>199.486572</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>698153802</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>1624301400</NodeID>
          <VariableName>entityName</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1150543895</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2060042921</ID>
        <Position>
          <X>1945.04517</X>
          <Y>373.8108</Y>
        </Position>
        <BoundVariableName>ShipNames</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>446376294</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>948702682</ID>
        <Position>
          <X>836.787842</X>
          <Y>391.343475</Y>
        </Position>
        <VariableName>ShipNames</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>626774373</SequenceInputID>
        <SequenceOutputID>1992835458</SequenceOutputID>
        <ValueInputID>
          <NodeID>834685651</NodeID>
          <VariableName>Instance</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>446376294</ID>
        <Position>
          <X>2125.18945</X>
          <Y>338.786865</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>2060042921</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>143219740</NodeID>
            <VariableName>Counter</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1150543895</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>112951500</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>543035868</NodeID>
                <VariableName>newGridName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>915015333</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1617904650</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1787458076</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1300039585</NodeID>
                <VariableName>item</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>124767173</ID>
        <Position>
          <X>2736.44849</X>
          <Y>42.8181152</Y>
        </Position>
        <Value>4</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1423311556</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>808010525</ID>
        <Position>
          <X>3271.83813</X>
          <Y>-51.1418457</Y>
        </Position>
        <Value>RedTickets</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1984010851</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>317980835</ID>
        <Position>
          <X>3492.68018</X>
          <Y>53.203125</Y>
        </Position>
        <VariableName>Tickets</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1364666785</SequenceInputID>
        <SequenceOutputID>1318948474</SequenceOutputID>
        <ValueInputID>
          <NodeID>1373906571</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1556893801</ID>
        <Position>
          <X>3752.42188</X>
          <Y>186.782959</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>665062377</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1722279758</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTickets</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1787774196</ID>
        <Position>
          <X>4860.90234</X>
          <Y>488.4021</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ReplaceQuestlogDetail(Int32 id, String newDetail, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>442158421</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1972722552</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>newDetail</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>2002770669</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>id</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>useTyping</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1518062655</ID>
        <Position>
          <X>4149.629</X>
          <Y>581.554932</Y>
        </Position>
        <Value> - Remaining Respawns: </Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1207400469</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>892818168</ID>
        <Position>
          <X>2072.67725</X>
          <Y>1666.11841</Y>
        </Position>
        <BoundVariableName>ShipsToCheck</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>963585547</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>304315640</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>1924388223</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>191761137</ID>
        <Position>
          <X>2192.42163</X>
          <Y>664.057251</Y>
        </Position>
        <Value>DirectionForward</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1617904650</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>543035868</ID>
        <Position>
          <X>3656.19922</X>
          <Y>269.147217</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SpawnGroup(String subtypeId, Vector3D position, Vector3D direction, Vector3D up, Int64 ownerId, String newGridName)</Type>
        <ExtOfType />
        <SequenceInputID>1665864643</SequenceInputID>
        <SequenceOutputID>1300039585</SequenceOutputID>
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
            <NodeID>1855525575</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1542742120</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>direction</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1107012484</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>446376294</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>newGridName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1228417163</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>subtypeId</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>DoM Blue 01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>newGridName</ParameterName>
            <Value>Blue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1210344412</ID>
        <Position>
          <X>3752.32886</X>
          <Y>430.0642</Y>
        </Position>
        <BoundVariableName>ShipsToCheck</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1300039585</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1264776819</ID>
        <Position>
          <X>4216.16846</X>
          <Y>3299.896</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ShowNotification(String message, Int32 disappearTimeMs, String font, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1719914184</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1906002836</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>disappearTimeMs</ParameterName>
            <Value>3000</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>message</ParameterName>
            <Value>Weapons activated.</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>842587511</ID>
        <Position>
          <X>2284.226</X>
          <Y>3646.06787</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1906002836</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>994182799</NodeID>
          <VariableName>Value</VariableName>
        </InputAID>
        <InputBID>
          <NodeID>2121126848</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>994182799</ID>
        <Position>
          <X>1937.15991</X>
          <Y>3657.613</Y>
        </Position>
        <Value>CurrentShipPilot</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>842587511</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1906002836</ID>
        <Position>
          <X>2487.845</X>
          <Y>3694.24048</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>842587511</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1140663041</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1264776819</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>159772421</ID>
        <Position>
          <X>3743.34424</X>
          <Y>1928.76355</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1696613075</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>594923787</NodeID>
            <VariableName>name</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2037355448</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1885928116</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1885928116</ID>
        <Position>
          <X>3476.01416</X>
          <Y>2044.93237</Y>
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
            <Ids>
              <MyVariableIdentifier>
                <NodeID>159772421</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>Increment</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>DeadDropArena_SMS_ShipRespawn</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>