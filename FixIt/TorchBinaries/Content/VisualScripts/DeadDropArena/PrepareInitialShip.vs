<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>541872238</ID>
        <Position>
          <X>422.000031</X>
          <Y>351</Y>
        </Position>
        <Name />
        <SequenceOutputID>20650091</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1040632765</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>680105704</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>610698288</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>568891572</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1713023057</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1065188615</NodeID>
                <VariableName>entityName</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>305040178</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1065188615</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1661443185</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>ShipName</string>
          <string>FactionId</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.Int64</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>636647194</ID>
        <Position>
          <X>1029.48669</X>
          <Y>360.942078</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreVector(String key, Vector3D value)</Type>
        <ExtOfType />
        <SequenceInputID>20650091</SequenceInputID>
        <SequenceOutputID>485101690</SequenceOutputID>
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
            <NodeID>610698288</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>680105704</NodeID>
            <VariableName>position</VariableName>
            <OriginName>value</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>PositionBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1535046965</ID>
        <Position>
          <X>1640.73914</X>
          <Y>365.698944</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreVector(String key, Vector3D value)</Type>
        <ExtOfType />
        <SequenceInputID>485101690</SequenceInputID>
        <SequenceOutputID>1065188615</SequenceOutputID>
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
            <NodeID>680105704</NodeID>
            <VariableName>up</VariableName>
            <OriginName>value</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1713023057</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>DirectionUpBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>485101690</ID>
        <Position>
          <X>1299.43665</X>
          <Y>359.752777</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreVector(String key, Vector3D value)</Type>
        <ExtOfType />
        <SequenceInputID>636647194</SequenceInputID>
        <SequenceOutputID>1535046965</SequenceOutputID>
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
            <NodeID>568891572</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>680105704</NodeID>
            <VariableName>forward</VariableName>
            <OriginName>value</OriginName>
            <OriginType>VRageMath.Vector3D</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>DirectionForwardBlue01</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>680105704</ID>
        <Position>
          <X>615.1003</X>
          <Y>203.0846</Y>
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
            <NodeID>541872238</NodeID>
            <VariableName>ShipName</VariableName>
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
                <NodeID>636647194</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>forward</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>485101690</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <OriginName>up</OriginName>
            <OriginType>VRageMath.Vector3D&amp;</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1535046965</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>20650091</ID>
        <Position>
          <X>732.1003</X>
          <Y>364.0846</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>541872238</SequenceInputID>
        <SequenceOutputID>636647194</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1040632765</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>PrimedRed01</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>True</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1040632765</ID>
        <Position>
          <X>581.1003</X>
          <Y>478.0846</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>20650091</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>982244487</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>541872238</NodeID>
          <VariableName>ShipName</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>982244487</ID>
        <Position>
          <X>413.100342</X>
          <Y>510.0846</Y>
        </Position>
        <Value>Primed</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1040632765</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>610698288</ID>
        <Position>
          <X>882.0959</X>
          <Y>446.488831</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>636647194</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>2009660666</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>541872238</NodeID>
          <VariableName>ShipName</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>2009660666</ID>
        <Position>
          <X>738.0959</X>
          <Y>446.488831</Y>
        </Position>
        <Value>Position</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>610698288</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1759008949</ID>
        <Position>
          <X>869.606934</X>
          <Y>60.1673965</Y>
        </Position>
        <Value>DirectionForward</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>568891572</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>568891572</ID>
        <Position>
          <X>1058.69092</X>
          <Y>64.92422</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>485101690</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>1759008949</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>541872238</NodeID>
          <VariableName>ShipName</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1713023057</ID>
        <Position>
          <X>1363.12793</X>
          <Y>111.303307</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1535046965</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>764217103</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>541872238</NodeID>
          <VariableName>ShipName</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>764217103</ID>
        <Position>
          <X>1219.234</X>
          <Y>108.924889</Y>
        </Position>
        <Value>DirectionUp</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1713023057</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>1782837326</ID>
        <Position>
          <X>2530.44141</X>
          <Y>444.4463</Y>
        </Position>
        <SequenceInputID>1661443185</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1065188615</ID>
        <Position>
          <X>1936.60681</X>
          <Y>464.1419</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1535046965</SequenceInputID>
        <SequenceOutputID>1661443185</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>541872238</NodeID>
            <VariableName>ShipName</VariableName>
            <OriginName>entityName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>541872238</NodeID>
            <VariableName>FactionId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1661443185</ID>
        <Position>
          <X>2236.51245</X>
          <Y>461.822968</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1065188615</SequenceInputID>
        <SequenceOutputID>1782837326</SequenceOutputID>
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
            <NodeID>541872238</NodeID>
            <VariableName>FactionId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>305040178</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>305040178</ID>
        <Position>
          <X>1979.48621</X>
          <Y>242.730988</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1661443185</NodeID>
            <VariableName>entityName</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>423710710</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>541872238</NodeID>
          <VariableName>ShipName</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>423710710</ID>
        <Position>
          <X>1813.53833</X>
          <Y>241.192459</Y>
        </Position>
        <Value>Cockpit_</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>305040178</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>PrepareInitialShip</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>