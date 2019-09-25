<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>1742002193</ID>
        <Position>
          <X>697</X>
          <Y>387</Y>
        </Position>
        <Name />
        <SequenceOutputID>990671238</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>891664446</NodeID>
                <VariableName>factionTag</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1421285371</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>873090101</NodeID>
                <VariableName>First Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1116708693</NodeID>
                <VariableName>key</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>127080581</NodeID>
                <VariableName>key</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1506863238</NodeID>
                <VariableName>key</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>Faction</string>
          <string>FirstMembers</string>
          <string>VariableName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.Int32</string>
          <string>System.String</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ForLoopScriptNode">
        <ID>873090101</ID>
        <Position>
          <X>1655.28845</X>
          <Y>284.8729</Y>
        </Position>
        <SequenceInputs>
          <int>990671238</int>
        </SequenceInputs>
        <SequenceBody>933862743</SequenceBody>
        <SequenceOutput>127080581</SequenceOutput>
        <FirstIndexValueInput>
          <NodeID>1742002193</NodeID>
          <VariableName>FirstMembers</VariableName>
          <OriginName />
          <OriginType />
        </FirstIndexValueInput>
        <LastIndexValueInput>
          <NodeID>547482307</NodeID>
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
            <NodeID>1801728845</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </CounterValueOutputs>
        <FirstIndexValue>0</FirstIndexValue>
        <LastIndexValue>0</LastIndexValue>
        <IncrementValue>1</IncrementValue>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>891664446</ID>
        <Position>
          <X>869.2205</X>
          <Y>267.419373</Y>
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
            <NodeID>1742002193</NodeID>
            <VariableName>Faction</VariableName>
            <OriginName>factionTag</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>547482307</NodeID>
                <VariableName>Instance</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1938805726</NodeID>
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
        <ID>990671238</ID>
        <Position>
          <X>1488.75781</X>
          <Y>426.586029</Y>
        </Position>
        <InputID>
          <NodeID>1421285371</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1742002193</SequenceInputID>
        <SequenceTrueOutputID>873090101</SequenceTrueOutputID>
        <SequnceFalseOutputID>1116708693</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1421285371</ID>
        <Position>
          <X>1345.288</X>
          <Y>479.3482</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>990671238</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>&gt;=</Operation>
        <InputAID>
          <NodeID>547482307</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1742002193</NodeID>
          <VariableName>FirstMembers</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>547482307</ID>
        <Position>
          <X>1199.90454</X>
          <Y>364.94632</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>891664446</NodeID>
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
                <NodeID>1421285371</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>873090101</NodeID>
                <VariableName>Last Index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1801728845</ID>
        <Position>
          <X>1869.27979</X>
          <Y>67.23552</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1938805726</NodeID>
            <VariableName>index</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>-</Operation>
        <InputAID>
          <NodeID>873090101</NodeID>
          <VariableName>Counter</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>196480210</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>196480210</ID>
        <Position>
          <X>1717.07751</X>
          <Y>136.189026</Y>
        </Position>
        <Value>1</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1801728845</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1030235200</ID>
        <Position>
          <X>2236.81372</X>
          <Y>211.779068</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1938805726</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>933862743</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>933862743</ID>
        <Position>
          <X>2491.367</X>
          <Y>295.93158</Y>
        </Position>
        <InputID>
          <NodeID>1030235200</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>873090101</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1506863238</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1938805726</ID>
        <Position>
          <X>1977.15723</X>
          <Y>216.241013</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>891664446</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1801728845</NodeID>
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
                <NodeID>1030235200</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1116708693</ID>
        <Position>
          <X>1760.41907</X>
          <Y>739.5015</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>990671238</SequenceInputID>
        <SequenceOutputID>1029923964</SequenceOutputID>
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
            <NodeID>1742002193</NodeID>
            <VariableName>VariableName</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTeamReady</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>127080581</ID>
        <Position>
          <X>2092.72559</X>
          <Y>469.625336</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>873090101</SequenceInputID>
        <SequenceOutputID>2085488961</SequenceOutputID>
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
            <NodeID>1742002193</NodeID>
            <VariableName>VariableName</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTeamReady</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1506863238</ID>
        <Position>
          <X>2729.992</X>
          <Y>371.346069</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>933862743</SequenceInputID>
        <SequenceOutputID>1635465998</SequenceOutputID>
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
            <NodeID>1742002193</NodeID>
            <VariableName>VariableName</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>BlueTeamReady</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>False</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>1635465998</ID>
        <Position>
          <X>3021.209</X>
          <Y>357.413</Y>
        </Position>
        <SequenceInputID>1506863238</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>2085488961</ID>
        <Position>
          <X>2377.84766</X>
          <Y>460.789551</Y>
        </Position>
        <SequenceInputID>127080581</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>1029923964</ID>
        <Position>
          <X>2067.61426</X>
          <Y>724.5844</Y>
        </Position>
        <SequenceInputID>1116708693</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>AllFactionMembersReady</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>