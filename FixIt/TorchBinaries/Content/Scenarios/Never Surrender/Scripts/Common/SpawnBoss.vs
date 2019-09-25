<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>413157430</ID>
        <Position>
          <X>-817.8573</X>
          <Y>46.5218048</Y>
        </Position>
        <VariableName>DroneBehaviours</VariableName>
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
        <ID>803612305</ID>
        <Position>
          <X>-815.783142</X>
          <Y>273.3822</Y>
        </Position>
        <VariableName>DamageModifier</VariableName>
        <VariableType>System.Single</VariableType>
        <VariableValue>1</VariableValue>
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
        <ID>865722328</ID>
        <Position>
          <X>-801.409241</X>
          <Y>179.702454</Y>
        </Position>
        <VariableName>NamePrefix</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>1289360556</ID>
        <Position>
          <X>-810.267151</X>
          <Y>461.635864</Y>
        </Position>
        <Name />
        <SequenceOutputID>1610246221</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1384677197</NodeID>
                <VariableName>a</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>640288640</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>141748936</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1062552825</NodeID>
                <VariableName>a</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1576891427</NodeID>
                <VariableName>max</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>710668215</NodeID>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1059322533</NodeID>
                <VariableName>prefabName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>DroneNamePrefix</string>
          <string>DroneNumber</string>
          <string>WaypointNamePrefix</string>
          <string>WaypointsCount</string>
          <string>droneBehaviours</string>
          <string>prefabName</string>
          <string>roundNumber</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.Int32</string>
          <string>System.String</string>
          <string>System.Int32</string>
          <string>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</string>
          <string>System.String</string>
          <string>System.Int32</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_EventScriptNode">
        <ID>1605299974</ID>
        <Position>
          <X>-621.5863</X>
          <Y>1450.04736</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.PrefabSpawned</Name>
        <SequenceOutputID>921683708</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>465821281</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>543479440</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>893813771</NodeID>
                <VariableName>gridName</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>1474839021</ID>
        <Position>
          <X>1849.37915</X>
          <Y>457.526123</Y>
        </Position>
        <SequenceInputID>1059322533</SequenceInputID>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>DroneName</Name>
            <Input>
              <NodeID>1384677197</NodeID>
              <VariableName>Return</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>99037742</ID>
        <Position>
          <X>445.153961</X>
          <Y>578.8827</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IntToString(Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1576891427</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1062552825</NodeID>
                <VariableName>b</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>135241052</ID>
        <Position>
          <X>766.0511</X>
          <Y>1411.0144</Y>
        </Position>
        <BoundVariableName>DroneBehaviours</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1994417592</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>2005157905</NodeID>
              <VariableName>Instance</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>141748936</ID>
        <Position>
          <X>666.6657</X>
          <Y>844.844055</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.IntToString(Int32 value)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1289360556</NodeID>
            <VariableName>DroneNumber</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1384677197</NodeID>
                <VariableName>b</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>269414669</ID>
        <Position>
          <X>-103.109375</X>
          <Y>1212.04041</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>764666399</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>1664536771</NodeID>
            <VariableName>In_1</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>NOT</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>427199554</ID>
        <Position>
          <X>-347.339783</X>
          <Y>794.111</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1777996451</NodeID>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>*</Operation>
        <InputAID>
          <NodeID>1195599376</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1487475453</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>465821281</ID>
        <Position>
          <X>-264.204041</X>
          <Y>1082.17322</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StringStartsWith(String value, String starting, Boolean ignoreCase)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1605299974</NodeID>
            <VariableName>entityName</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1889955233</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>starting</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1664536771</NodeID>
                <VariableName>In_0</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>starting</ParameterName>
            <Value>Boss_</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>543479440</ID>
        <Position>
          <X>1638.17517</X>
          <Y>1171.98535</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetDroneBehaviourBasic(String entityName, String presetName)</Type>
        <ExtOfType />
        <SequenceInputID>1280020915</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1605299974</NodeID>
            <VariableName>entityName</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1994417592</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>presetName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>640288640</ID>
        <Position>
          <X>-96.82422</X>
          <Y>322.229828</Y>
        </Position>
        <VariableName>NamePrefix</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1610246221</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>1289360556</NodeID>
          <VariableName>DroneNamePrefix</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>710668215</ID>
        <Position>
          <X>-104.845642</X>
          <Y>211.907516</Y>
        </Position>
        <VariableName>DroneBehaviours</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1610246221</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>1289360556</NodeID>
          <VariableName>droneBehaviours</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>762403057</ID>
        <Position>
          <X>966.823669</X>
          <Y>576.149231</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetEntityVectors(String entityName, Vector3D&amp; position, Vector3D&amp; forward, Vector3D&amp; up)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1062552825</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1059322533</NodeID>
                <VariableName>position</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>forward</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1059322533</NodeID>
                <VariableName>direction</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1059322533</NodeID>
                <VariableName>up</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>764666399</ID>
        <Position>
          <X>-332.6264</X>
          <Y>1213.22949</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StringIsNullOrEmpty(String value)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1889955233</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>269414669</NodeID>
                <VariableName>In_0</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>893813771</ID>
        <Position>
          <X>1059.96057</X>
          <Y>1014.4906</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridGeneralDamageModifier(String gridName, Single modifier)</Type>
        <ExtOfType />
        <SequenceInputID>1280020915</SequenceInputID>
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
            <NodeID>1783357740</NodeID>
            <VariableName>Value</VariableName>
            <OriginName>modifier</OriginName>
            <OriginType>System.Single</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1605299974</NodeID>
            <VariableName>entityName</VariableName>
            <OriginName>gridName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>921683708</ID>
        <Position>
          <X>378.1355</X>
          <Y>1186.77319</Y>
        </Position>
        <InputID>
          <NodeID>1664536771</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1605299974</SequenceInputID>
        <SequenceTrueOutputID>1280020915</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1059322533</ID>
        <Position>
          <X>1365.39</X>
          <Y>394.438965</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SpawnPrefab(String prefabName, Vector3D position, Vector3D direction, Vector3D up, Int64 ownerId, String beaconName, String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>1610246221</SequenceInputID>
        <SequenceOutputID>1474839021</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>762403057</NodeID>
            <VariableName>position</VariableName>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>762403057</NodeID>
            <VariableName>forward</VariableName>
            <OriginName>direction</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>762403057</NodeID>
            <VariableName>up</VariableName>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1384677197</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1289360556</NodeID>
            <VariableName>prefabName</VariableName>
            <OriginName>prefabName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1062552825</ID>
        <Position>
          <X>707.317932</X>
          <Y>581.4922</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StringConcat(String a, String b)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1289360556</NodeID>
            <VariableName>WaypointNamePrefix</VariableName>
            <OriginName>a</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>99037742</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>b</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>762403057</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1156003493</ID>
        <Position>
          <X>1151.02148</X>
          <Y>1278.08484</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.RandomInt(Int32 min, Int32 max)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2005157905</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>max</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1994417592</NodeID>
                <VariableName>index</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>min</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>max</ParameterName>
            <Value>3</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1195599376</ID>
        <Position>
          <X>-551.5726</X>
          <Y>757.834167</Y>
        </Position>
        <BoundVariableName>DamageModifier</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>427199554</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1280020915</ID>
        <Position>
          <X>542.5124</X>
          <Y>1214.60486</Y>
        </Position>
        <SequenceInput>921683708</SequenceInput>
        <SequenceOutputs>
          <int>893813771</int>
          <int>543479440</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1384677197</ID>
        <Position>
          <X>1041.30029</X>
          <Y>782.389648</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StringConcat(String a, String b)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>141748936</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>b</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1289360556</NodeID>
            <VariableName>DroneNamePrefix</VariableName>
            <OriginName>a</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1059322533</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1474839021</NodeID>
                <VariableName>DroneName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1487475453</ID>
        <Position>
          <X>-552.4503</X>
          <Y>887.892944</Y>
        </Position>
        <Value>0.9</Value>
        <Type>System.Single</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>427199554</NodeID>
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
        <ID>1576891427</ID>
        <Position>
          <X>237.790161</X>
          <Y>578.1035</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.RandomInt(Int32 min, Int32 max)</Type>
        <ExtOfType />
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1289360556</NodeID>
            <VariableName>WaypointsCount</VariableName>
            <OriginName>max</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <OriginType>System.Int32</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>99037742</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>min</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>max</ParameterName>
            <Value>20</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1610246221</ID>
        <Position>
          <X>-480.1137</X>
          <Y>359.6174</Y>
        </Position>
        <SequenceInput>1289360556</SequenceInput>
        <SequenceOutputs>
          <int>710668215</int>
          <int>640288640</int>
          <int>1777996451</int>
          <int>1059322533</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LogicGateScriptNode">
        <ID>1664536771</ID>
        <Position>
          <X>24.1357422</X>
          <Y>1116.90393</Y>
        </Position>
        <ValueInputs>
          <MyVariableIdentifier>
            <NodeID>465821281</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>In_0</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>269414669</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>In_1</OriginName>
            <OriginType>System.Boolean</OriginType>
          </MyVariableIdentifier>
        </ValueInputs>
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>921683708</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
        <Operation>AND</Operation>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1777996451</ID>
        <Position>
          <X>-138.035767</X>
          <Y>744.613464</Y>
        </Position>
        <VariableName>DamageModifier</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>1610246221</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>427199554</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1783357740</ID>
        <Position>
          <X>891.737732</X>
          <Y>1105.43982</Y>
        </Position>
        <BoundVariableName>DamageModifier</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>893813771</NodeID>
              <VariableName>modifier</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1889955233</ID>
        <Position>
          <X>-514.71405</X>
          <Y>1134.44568</Y>
        </Position>
        <BoundVariableName>NamePrefix</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>465821281</NodeID>
              <VariableName>starting</VariableName>
            </MyVariableIdentifier>
            <MyVariableIdentifier>
              <NodeID>764666399</NodeID>
              <VariableName>value</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1994417592</ID>
        <Position>
          <X>1394.4668</X>
          <Y>1326.99658</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.At(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list, Int32 index)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>135241052</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1156003493</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>index</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>543479440</NodeID>
                <VariableName>presetName</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2005157905</ID>
        <Position>
          <X>957.9673</X>
          <Y>1355.92725</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions</DeclaringType>
        <Type>VRage.Game.VisualScripting.Utils.MyVSCollectionExtensions.Count(System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] list)</Type>
        <ExtOfType>System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]</ExtOfType>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>135241052</NodeID>
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
                <NodeID>1156003493</NodeID>
                <VariableName>max</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>SpawnBoss</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>