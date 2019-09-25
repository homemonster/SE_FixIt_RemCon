<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <VisualScript>
    <DependencyFilePaths />
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InputScriptNode">
        <ID>431025306</ID>
        <Position>
          <X>-123.344696</X>
          <Y>462.306946</Y>
        </Position>
        <Name />
        <SequenceOutputID>622995889</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1798659363</NodeID>
                <VariableName>typeId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1798659363</NodeID>
                <VariableName>subtypeId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>622995889</NodeID>
                <VariableName>amount</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>ItemTypeID</string>
          <string>ItemSubtypeID</string>
          <string>Amount</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
          <string>System.String</string>
          <string>System.Int32</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_OutputScriptNode">
        <ID>530051785</ID>
        <Position>
          <X>779.5143</X>
          <Y>478.163879</Y>
        </Position>
        <SequenceInputID>622995889</SequenceInputID>
        <Inputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>622995889</ID>
        <Position>
          <X>512.4064</X>
          <Y>391.892731</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddToPlayersInventory(Int64 playerId, MyDefinitionId itemId, Int32 amount)</Type>
        <ExtOfType />
        <SequenceInputID>431025306</SequenceInputID>
        <SequenceOutputID>530051785</SequenceOutputID>
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
            <NodeID>696360813</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1798659363</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>431025306</NodeID>
            <VariableName>Amount</VariableName>
            <OriginName>amount</OriginName>
            <OriginType>System.Int32</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>696360813</ID>
        <Position>
          <X>127.457733</X>
          <Y>365.513</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetLocalPlayerId()</Type>
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
                <NodeID>622995889</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1798659363</ID>
        <Position>
          <X>133.919983</X>
          <Y>565.860046</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>431025306</NodeID>
            <VariableName>ItemTypeID</VariableName>
            <OriginName>typeId</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>431025306</NodeID>
            <VariableName>ItemSubtypeID</VariableName>
            <OriginName>subtypeId</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>622995889</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>PhysicalGunObject</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Welder4Item</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
    </Nodes>
    <Name>AddItemToLocalPlayer</Name>
  </VisualScript>
</MyObjectBuilder_VSFiles>