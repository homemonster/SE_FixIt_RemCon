<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <Interface>VRage.Game.VisualScripting.IMyStateMachineScript</Interface>
    <DependencyFilePaths>
      <string>VisualScripts\Library\DoAndRepeat.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\AssistantMessage.vs</string>
      <string>VisualScripts\Station419\Station419StateStart.vs</string>
      <string>Campaigns\Official Campaign 01\Scripts\Common\OnceAfterDelay.vs</string>
      <string>VisualScripts\Library\Delay.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1004402675</ID>
        <Position>
          <X>-29.0422058</X>
          <Y>170.876465</Y>
        </Position>
        <VariableName>DroneRetreating</VariableName>
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
        <ID>997476639</ID>
        <Position>
          <X>-20.8079224</X>
          <Y>290.930054</Y>
        </Position>
        <VariableName>DroneSetUp</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1336060380</ID>
        <Position>
          <X>-226.5299</X>
          <Y>664.135132</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs>
          <int>714457335</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>831522655</ID>
        <Position>
          <X>1603.729</X>
          <Y>-140.197327</Y>
        </Position>
        <InputID>
          <NodeID>1040206117</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1102973961</SequenceInputID>
        <SequenceTrueOutputID>144342719</SequenceTrueOutputID>
        <SequnceFalseOutputID>816888160</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1040206117</ID>
        <Position>
          <X>1444.04907</X>
          <Y>-53.2995</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>831522655</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>584992883</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1648615966</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>584992883</ID>
        <Position>
          <X>1147.936</X>
          <Y>-44.9750366</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneGetTargetsCount(String entityName)</Type>
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
                <NodeID>1040206117</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1648615966</ID>
        <Position>
          <X>1315.89636</X>
          <Y>22.2315674</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1040206117</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1106821914</ID>
        <Position>
          <X>2086.70679</X>
          <Y>-35.10614</Y>
        </Position>
        <Name>DoAndRepeat</Name>
        <SequenceOutput>27809729</SequenceOutput>
        <SequenceInput>816888160</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>103556032</NodeID>
              <VariableName>Value</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>103556032</ID>
        <Position>
          <X>1981.39648</X>
          <Y>-66.5704651</Y>
        </Position>
        <Value>180</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1106821914</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>27809729</ID>
        <Position>
          <X>2294.51733</X>
          <Y>-16.9991455</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneTargetLoseCurrent(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>1106821914</SequenceInputID>
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
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>144342719</ID>
        <Position>
          <X>1809.84351</X>
          <Y>-188.555725</Y>
        </Position>
        <VariableName>DroneRetreating</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>831522655</SequenceInputID>
        <SequenceOutputID>834111460</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>834111460</ID>
        <Position>
          <X>2030.79126</X>
          <Y>-181.235809</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneWaypointAdd(String entityName, MyEntity waypoint)</Type>
        <ExtOfType />
        <SequenceInputID>144342719</SequenceInputID>
        <SequenceOutputID>1754571830</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1435359588</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>waypoint</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1435359588</ID>
        <Position>
          <X>1646.80579</X>
          <Y>-246.522232</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>834111460</NodeID>
                <VariableName>waypoint</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>DroneRetreatPoint</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>816888160</ID>
        <Position>
          <X>1840.60449</X>
          <Y>-38.4106445</Y>
        </Position>
        <SequenceInput>831522655</SequenceInput>
        <SequenceOutputs>
          <int>1106821914</int>
          <int>989865641</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>989865641</ID>
        <Position>
          <X>2102.19336</X>
          <Y>68.60681</Y>
        </Position>
        <InputID>
          <NodeID>1588495718</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>816888160</SequenceInputID>
        <SequenceTrueOutputID>50050249</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1588495718</ID>
        <Position>
          <X>1910.97485</X>
          <Y>106.282349</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>989865641</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>1338853788</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>2052527743</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2052527743</ID>
        <Position>
          <X>1794.44373</X>
          <Y>195.461548</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1588495718</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1338853788</ID>
        <Position>
          <X>1569.01318</X>
          <Y>109.423157</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneGetWaypointCount(String entityName)</Type>
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
                <NodeID>1588495718</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>50050249</ID>
        <Position>
          <X>2294.0022</X>
          <Y>80.40729</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>458574517</SequenceOutput>
        <SequenceInput>989865641</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>458574517</ID>
        <Position>
          <X>2438.28687</X>
          <Y>96.23297</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetSpeedLimit(String entityName, Single speedLimit)</Type>
        <ExtOfType />
        <SequenceInputID>50050249</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>speedLimit</ParameterName>
            <Value>10</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1754571830</ID>
        <Position>
          <X>2335.485</X>
          <Y>-178.087341</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetSpeedLimit(String entityName, Single speedLimit)</Type>
        <ExtOfType />
        <SequenceInputID>834111460</SequenceInputID>
        <SequenceOutputID>1585074249</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>speedLimit</ParameterName>
            <Value>100</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>597281664</ID>
        <Position>
          <X>919.370667</X>
          <Y>-140.855225</Y>
        </Position>
        <BoundVariableName>DroneRetreating</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>312486526</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>312486526</ID>
        <Position>
          <X>1222.6189</X>
          <Y>-204.6225</Y>
        </Position>
        <InputID>
          <NodeID>597281664</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>605461688</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1102973961</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>605461688</ID>
        <Position>
          <X>956.530151</X>
          <Y>15.184082</Y>
        </Position>
        <InputID>
          <NodeID>424275760</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>1817284567</SequenceInputID>
        <SequenceTrueOutputID>312486526</SequenceTrueOutputID>
        <SequnceFalseOutputID>2123121033</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1527855898</ID>
        <Position>
          <X>-8.692612</X>
          <Y>411.142059</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1785322730</ID>
        <Position>
          <X>236.739563</X>
          <Y>-1375.70093</Y>
        </Position>
        <MethodName>Deserialize</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>730118955</ID>
        <Position>
          <X>320.0618</X>
          <Y>-933.1552</Y>
        </Position>
        <MethodName>Init</MethodName>
        <SequenceOutputIDs>
          <int>1206306398</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>184249792</ID>
        <Position>
          <X>754.7096</X>
          <Y>-909.772766</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SpawnGroup(String subtypeId, Vector3D position, Vector3D direction, Vector3D up, Int64 ownerId, String newGridName)</Type>
        <ExtOfType />
        <SequenceInputID>1206306398</SequenceInputID>
        <SequenceOutputID>589936812</SequenceOutputID>
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
            <NodeID>587799144</NodeID>
            <VariableName>position</VariableName>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>587799144</NodeID>
            <VariableName>forward</VariableName>
            <OriginName>direction</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>587799144</NodeID>
            <VariableName>up</VariableName>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Grindbot mk.1</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>newGridName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>587799144</ID>
        <Position>
          <X>234.19278</X>
          <Y>-864.2156</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>184249792</NodeID>
                <VariableName>position</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>forward</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>184249792</NodeID>
                <VariableName>direction</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>184249792</NodeID>
                <VariableName>up</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DroneTargetA1S1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>821865221</ID>
        <Position>
          <X>598.9033</X>
          <Y>665.5692</Y>
        </Position>
        <InputID>
          <NodeID>2125259867</NodeID>
          <VariableName>Value</VariableName>
        </InputID>
        <SequenceInputID>714457335</SequenceInputID>
        <SequenceTrueOutputID>1817284567</SequenceTrueOutputID>
        <SequnceFalseOutputID>848383127</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>2125259867</ID>
        <Position>
          <X>388.877563</X>
          <Y>737.295044</Y>
        </Position>
        <BoundVariableName>DroneSetUp</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>821865221</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1605721549</ID>
        <Position>
          <X>1044.50781</X>
          <Y>858.5065</Y>
        </Position>
        <VariableName>DroneSetUp</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>848383127</SequenceInputID>
        <SequenceOutputID>1124826214</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>848383127</ID>
        <Position>
          <X>833.7219</X>
          <Y>838.3733</Y>
        </Position>
        <InputID>
          <NodeID>484742940</NodeID>
          <VariableName>Return</VariableName>
        </InputID>
        <SequenceInputID>-1</SequenceInputID>
        <SequenceTrueOutputID>1605721549</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>484742940</ID>
        <Position>
          <X>524.3544</X>
          <Y>886.9885</Y>
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
        <InputParameterIDs />
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>848383127</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1923056394</ID>
        <Position>
          <X>1398.11487</X>
          <Y>875.0762</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetDroneBehaviourFull(String entityName, String presetName, Boolean activate, Boolean assignToPirates, System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] waypoints, Boolean cycleWaypoints, System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] targets, Int32 playerPriority, Single maxPlayerDistance, TargetPrioritization prioritizationStyle)</Type>
        <ExtOfType />
        <SequenceInputID>1124826214</SequenceInputID>
        <SequenceOutputID>1362379798</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1626686299</NodeID>
            <VariableName>Instance</VariableName>
            <OriginName>waypoints</OriginName>
            <OriginType>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>playerPriority</ParameterName>
            <Value>1000</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>presetName</ParameterName>
            <Value>StationGrinderBot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>prioritizationStyle</ParameterName>
            <Value>HightestPriorityFirst</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>maxPlayerDistance</ParameterName>
            <Value>15</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_NewListScriptNode">
        <ID>1626686299</ID>
        <Position>
          <X>1045.985</X>
          <Y>960.103638</Y>
        </Position>
        <Type>VRage.Game.Entity.MyEntity</Type>
        <DefaultEntries />
        <Connections>
          <MyVariableIdentifier>
            <NodeID>1124826214</NodeID>
            <VariableName>Instance</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1923056394</NodeID>
            <VariableName>waypoints</VariableName>
          </MyVariableIdentifier>
        </Connections>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1979951884</ID>
        <Position>
          <X>885.1601</X>
          <Y>731.3531</Y>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1124826214</NodeID>
                <VariableName>item</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>DroneTargetA1W1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1124826214</ID>
        <Position>
          <X>1230.12659</X>
          <Y>879.5766</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]</DeclaringType>
        <Type>System.Collections.Generic.List`1[[VRage.Game.Entity.MyEntity, VRage.Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]].Add(MyEntity item)</Type>
        <ExtOfType />
        <SequenceInputID>1605721549</SequenceInputID>
        <SequenceOutputID>1923056394</SequenceOutputID>
        <InstanceInputID>
          <NodeID>1626686299</NodeID>
          <VariableName>Instance</VariableName>
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1979951884</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>item</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1234200747</ID>
        <Position>
          <X>1504.67773</X>
          <Y>815.0651</Y>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1362379798</NodeID>
                <VariableName>target</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>OreDetector</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1362379798</ID>
        <Position>
          <X>1839.36365</X>
          <Y>873.8954</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneTargetAdd(String entityName, MyEntity target, Int32 priority)</Type>
        <ExtOfType />
        <SequenceInputID>1923056394</SequenceInputID>
        <SequenceOutputID>1146853460</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1234200747</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>target</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>priority</ParameterName>
            <Value>500</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2142594056</ID>
        <Position>
          <X>1826.71375</X>
          <Y>797.1454</Y>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1146853460</NodeID>
                <VariableName>target</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>Solar5</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1146853460</ID>
        <Position>
          <X>2144.41113</X>
          <Y>873.583557</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneTargetAdd(String entityName, MyEntity target, Int32 priority)</Type>
        <ExtOfType />
        <SequenceInputID>1362379798</SequenceInputID>
        <SequenceOutputID>1041693416</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>2142594056</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>target</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>priority</ParameterName>
            <Value>250</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1041693416</ID>
        <Position>
          <X>2446.34277</X>
          <Y>875.6939</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneTargetAdd(String entityName, MyEntity target, Int32 priority)</Type>
        <ExtOfType />
        <SequenceInputID>1146853460</SequenceInputID>
        <SequenceOutputID>1418079440</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>212549871</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>target</OriginName>
            <OriginType>VRage.Game.Entity.MyEntity</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>priority</ParameterName>
            <Value>125</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>212549871</ID>
        <Position>
          <X>2093.94</X>
          <Y>799.1799</Y>
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
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1041693416</NodeID>
                <VariableName>target</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>name</ParameterName>
            <Value>GatlingTurret2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1418079440</ID>
        <Position>
          <X>2757.61157</X>
          <Y>877.736</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetRetreatPosition(String entityName, Vector3D position)</Type>
        <ExtOfType />
        <SequenceInputID>1041693416</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>14813777</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>position</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>14813777</ID>
        <Position>
          <X>2388.07568</X>
          <Y>985.904968</Y>
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
                <NodeID>1418079440</NodeID>
                <VariableName>position</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DroneRetreatPoint</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>424275760</ID>
        <Position>
          <X>653.018433</X>
          <Y>8.995056</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneIsOperational(String entityName)</Type>
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
                <NodeID>605461688</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1817284567</ID>
        <Position>
          <X>804.2821</X>
          <Y>405.767822</Y>
        </Position>
        <SequenceInput>821865221</SequenceInput>
        <SequenceOutputs>
          <int>605461688</int>
          <int>664739042</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1102973961</ID>
        <Position>
          <X>1429.85193</X>
          <Y>-156.315765</Y>
        </Position>
        <SequenceInput>312486526</SequenceInput>
        <SequenceOutputs>
          <int>399602084</int>
          <int>831522655</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>399602084</ID>
        <Position>
          <X>1556.78638</X>
          <Y>-373.2215</Y>
        </Position>
        <InputID>
          <NodeID>637335839</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1102973961</SequenceInputID>
        <SequenceTrueOutputID>1708991433</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>2106868659</ID>
        <Position>
          <X>1537.90222</X>
          <Y>-466.870819</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_Warning2</MessageId>
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
            <NodeID>1708991433</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1708991433</ID>
        <Position>
          <X>1784.15344</X>
          <Y>-350.661163</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>2093570329</SequenceOutput>
        <SequenceInput>399602084</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>2106868659</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1404647089</ID>
        <Position>
          <X>976.8101</X>
          <Y>-282.9396</Y>
        </Position>
        <Value>0</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>637335839</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>637335839</ID>
        <Position>
          <X>1104.96289</X>
          <Y>-358.470673</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>399602084</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>==</Operation>
        <InputAID>
          <NodeID>982060390</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1404647089</NodeID>
          <VariableName>Value</VariableName>
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>982060390</ID>
        <Position>
          <X>806.36615</X>
          <Y>-378.818817</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneGetWaypointCount(String entityName)</Type>
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
                <NodeID>637335839</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1206306398</ID>
        <Position>
          <X>497.365784</X>
          <Y>-936.6172</Y>
        </Position>
        <Name>Station419StateStart</Name>
        <SequenceOutput>184249792</SequenceOutput>
        <SequenceInput>730118955</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>SaveName</Name>
            <Input>
              <NodeID>697038710</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>697038710</ID>
        <Position>
          <X>243.866119</X>
          <Y>-977.220154</Y>
        </Position>
        <Value>Station #419 - Mining</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1206306398</NodeID>
              <VariableName>SaveName</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>125865996</ID>
        <Position>
          <X>-12.8210754</X>
          <Y>41.1046143</Y>
        </Position>
        <VariableName>Continue</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>194431101</ID>
        <Position>
          <X>687.2567</X>
          <Y>1610.699</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogVisible(Boolean value, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1021270922</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1021270922</ID>
        <Position>
          <X>478.38385</X>
          <Y>1611.70386</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>194431101</SequenceOutput>
        <SequenceInput>210075928</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>254984613</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2087738013</ID>
        <Position>
          <X>668.9077</X>
          <Y>1706.83875</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1451567850</SequenceInputID>
        <SequenceOutputID>1362660645</SequenceOutputID>
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
        <ID>1362660645</ID>
        <Position>
          <X>895.1575</X>
          <Y>1712.151</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType>VRage.Game.VisualScripting.IMyStateMachineScript</DeclaringType>
        <Type>VRage.Game.VisualScripting.IMyStateMachineScript.Complete(String transitionName)</Type>
        <ExtOfType />
        <SequenceInputID>2087738013</SequenceInputID>
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
        <ID>1451567850</ID>
        <Position>
          <X>467.300781</X>
          <Y>1690.24182</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>2087738013</SequenceOutput>
        <SequenceInput>210075928</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>1495925649</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>210075928</ID>
        <Position>
          <X>238.899536</X>
          <Y>1632.85071</Y>
        </Position>
        <SequenceInput>-1</SequenceInput>
        <SequenceOutputs>
          <int>1021270922</int>
          <int>1451567850</int>
          <int>1364417541</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1495925649</ID>
        <Position>
          <X>284.986877</X>
          <Y>1750.40234</Y>
        </Position>
        <Value>450</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1451567850</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>254984613</ID>
        <Position>
          <X>370.1093</X>
          <Y>1598.34424</Y>
        </Position>
        <Value>180</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1021270922</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>714457335</ID>
        <Position>
          <X>-42.1714478</X>
          <Y>678.0641</Y>
        </Position>
        <InputID>
          <NodeID>1726587131</NodeID>
          <VariableName>Value</VariableName>
        </InputID>
        <SequenceInputID>1336060380</SequenceInputID>
        <SequenceTrueOutputID>210075928</SequenceTrueOutputID>
        <SequnceFalseOutputID>821865221</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_GetterScriptNode">
        <ID>1726587131</ID>
        <Position>
          <X>-197.957764</X>
          <Y>746.1974</Y>
        </Position>
        <BoundVariableName>Continue</BoundVariableName>
        <OutputIDs>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>714457335</NodeID>
              <VariableName>Comparator</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIDs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1024217127</ID>
        <Position>
          <X>903.36554</X>
          <Y>524.548767</Y>
        </Position>
        <Value>30</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>664739042</NodeID>
              <VariableName>numOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>664739042</ID>
        <Position>
          <X>1012.22131</X>
          <Y>422.62912</Y>
        </Position>
        <Name>Delay</Name>
        <SequenceOutput>772723833</SequenceOutput>
        <SequenceInput>1817284567</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>numOfPasses</Name>
            <Input>
              <NodeID>1024217127</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>772723833</ID>
        <Position>
          <X>1246.43347</X>
          <Y>446.504639</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>1230220494</SequenceOutput>
        <SequenceInput>664739042</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>828934854</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>140549696</ID>
        <Position>
          <X>1316.92078</X>
          <Y>522.376</Y>
        </Position>
        <Value>300</Value>
        <Type>System.Int32</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1230220494</NodeID>
              <VariableName>NumOfPasses</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>522593134</ID>
        <Position>
          <X>1462.01965</X>
          <Y>328.6015</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>DrillBot_GPS1</MessageId>
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
            <NodeID>1452282587</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1203560476</ID>
        <Position>
          <X>1999.61121</X>
          <Y>411.264648</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1452282587</SequenceInputID>
        <SequenceOutputID>1682697868</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1776336213</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1682697868</ID>
        <Position>
          <X>2275.57666</X>
          <Y>418.8839</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1203560476</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1190268737</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1190268737</ID>
        <Position>
          <X>2016.58057</X>
          <Y>308.726379</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_QLLine1</MessageId>
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
            <NodeID>1682697868</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1776336213</ID>
        <Position>
          <X>1689.58521</X>
          <Y>318.664368</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_QLTitle</MessageId>
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
            <NodeID>1203560476</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1452282587</ID>
        <Position>
          <X>1685.077</X>
          <Y>423.757751</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSToEntityForAll(String entityName, String GPSName, String GPSDescription, Color GPSColor)</Type>
        <ExtOfType />
        <SequenceInputID>1230220494</SequenceInputID>
        <SequenceOutputID>1203560476</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>522593134</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>GPSColor</ParameterName>
            <Value>White</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1230220494</ID>
        <Position>
          <X>1462.01672</X>
          <Y>437.910522</Y>
        </Position>
        <Name>OnceAfterDelay</Name>
        <SequenceOutput>1452282587</SequenceOutput>
        <SequenceInput>772723833</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.Int32</Type>
            <Name>NumOfPasses</Name>
            <Input>
              <NodeID>140549696</NodeID>
              <VariableName>Value</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>828934854</ID>
        <Position>
          <X>1028.04773</X>
          <Y>548.4879</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_Warning1</MessageId>
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
            <NodeID>772723833</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>589936812</ID>
        <Position>
          <X>1100.79309</X>
          <Y>-931.2012</Y>
        </Position>
        <InputID>
          <NodeID>1311018154</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>184249792</SequenceInputID>
        <SequenceTrueOutputID>719770392</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1311018154</ID>
        <Position>
          <X>741.628357</X>
          <Y>-983.3594</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneIsOperational(String entityName)</Type>
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
                <NodeID>589936812</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>719770392</ID>
        <Position>
          <X>1319.42908</X>
          <Y>-930.0603</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>589936812</SequenceInputID>
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
            <Value>DrillBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2097734565</ID>
        <Position>
          <X>2604.34424</X>
          <Y>-371.126282</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddGPSToEntityForAll(String entityName, String GPSName, String GPSDescription, Color GPSColor)</Type>
        <ExtOfType />
        <SequenceInputID>1672273816</SequenceInputID>
        <SequenceOutputID>776408271</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>521415151</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>GPSColor</ParameterName>
            <Value>Red</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1672273816</ID>
        <Position>
          <X>2256.448</X>
          <Y>-359.736755</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPSFromEntityForAll(String entityName, String GPSName, String GPSDescription)</Type>
        <ExtOfType />
        <SequenceInputID>2093570329</SequenceInputID>
        <SequenceOutputID>2097734565</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>18125625</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>521415151</ID>
        <Position>
          <X>2367.448</X>
          <Y>-475.7368</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrindBot_GPS</MessageId>
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
            <NodeID>2097734565</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>18125625</ID>
        <Position>
          <X>1998.55151</X>
          <Y>-450.347229</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>DrillBot_GPS1</MessageId>
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
            <NodeID>1672273816</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>2093570329</ID>
        <Position>
          <X>2024.4646</X>
          <Y>-341.336273</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>1672273816</SequenceOutput>
        <SequenceInput>1708991433</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>1585074249</ID>
        <Position>
          <X>2594.55469</X>
          <Y>-196.523727</Y>
        </Position>
        <VariableName>Continue</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>1754571830</SequenceInputID>
        <SequenceOutputID>985092710</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>985092710</ID>
        <Position>
          <X>2764.38965</X>
          <Y>-186.59996</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneTargetLoseCurrent(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>1585074249</SequenceInputID>
        <SequenceOutputID>2096792081</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2096792081</ID>
        <Position>
          <X>3044.19873</X>
          <Y>-191.359924</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.DroneSetPlayerPriority(String entityName, Int32 priority)</Type>
        <ExtOfType />
        <SequenceInputID>985092710</SequenceInputID>
        <SequenceOutputID>1590810235</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>priority</ParameterName>
            <Value>0</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1590810235</ID>
        <Position>
          <X>3307.06958</X>
          <Y>-208.994324</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>2096792081</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1768959626</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1768959626</ID>
        <Position>
          <X>3057.28223</X>
          <Y>-102.4433</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_Fail</MessageId>
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
            <NodeID>1590810235</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>916009513</ID>
        <Position>
          <X>2690.39673</X>
          <Y>-489.567017</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_QLLine2</MessageId>
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
            <NodeID>776408271</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>776408271</ID>
        <Position>
          <X>2927.61</X>
          <Y>-371.764038</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>2097734565</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>916009513</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questDetailRow</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>2123121033</ID>
        <Position>
          <X>1149.06091</X>
          <Y>90.73897</Y>
        </Position>
        <VariableName>Continue</VariableName>
        <VariableValue>true</VariableValue>
        <SequenceInputID>605461688</SequenceInputID>
        <SequenceOutputID>1620283955</SequenceOutputID>
        <ValueInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>760144520</ID>
        <Position>
          <X>1089.07471</X>
          <Y>170.122528</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrinderBot_Success</MessageId>
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
            <NodeID>1620283955</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1620283955</ID>
        <Position>
          <X>1327.0824</X>
          <Y>95.49103</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>-1</SequenceOutput>
        <SequenceInput>2123121033</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>760144520</NodeID>
              <VariableName>Output</VariableName>
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1364417541</ID>
        <Position>
          <X>489.5757</X>
          <Y>1791.53259</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>699029321</SequenceOutput>
        <SequenceInput>210075928</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>699029321</ID>
        <Position>
          <X>688.2709</X>
          <Y>1801.83057</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveGPSFromEntityForAll(String entityName, String GPSName, String GPSDescription)</Type>
        <ExtOfType />
        <SequenceInputID>1364417541</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1820053913</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>GPSName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>GrindBot</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1820053913</ID>
        <Position>
          <X>422.3744</X>
          <Y>1892.22021</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>GrindBot_GPS</MessageId>
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
            <NodeID>699029321</NodeID>
            <VariableName>GPSName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>Station419_SMS_GrindBot</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>