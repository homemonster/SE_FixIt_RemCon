<?xml version="1.0"?>
<MyObjectBuilder_VSFiles xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <LevelScript>
    <Interface>VRage.Game.VisualScripting.IMyLevelScript</Interface>
    <DependencyFilePaths>
      <string>Campaigns\Official Campaign 01\Scripts\Common\AssistantMessage.vs</string>
      <string>VisualScripts\Library\Once.vs</string>
    </DependencyFilePaths>
    <Nodes>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableScriptNode">
        <ID>1602919599</ID>
        <Position>
          <X>-386.9343</X>
          <Y>229.7911</Y>
        </Position>
        <VariableName>SomePlayerSpawned</VariableName>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_EventScriptNode">
        <ID>842241999</ID>
        <Position>
          <X>1147.27014</X>
          <Y>41.7061462</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.PlayerSpawned</Name>
        <SequenceOutputID>2022840184</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>879672977</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1895304178</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>163686532</NodeID>
                <VariableName>Input_B</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1783365535</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1980944288</NodeID>
                <VariableName>founderId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1743849353</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1982224178</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1285073910</NodeID>
                <VariableName>value</VariableName>
              </MyVariableIdentifier>
              <MyVariableIdentifier>
                <NodeID>1434319471</NodeID>
                <VariableName>Input_A</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>playerId</string>
        </OutputNames>
        <OuputTypes>
          <string>System.Int64</string>
        </OuputTypes>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>654982138</ID>
        <Position>
          <X>243.7771</X>
          <Y>743.278931</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.TimerBlockTriggered</Name>
        <SequenceOutputID>720021642</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>entityName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
        <Keys>
          <string>No Tutorial</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_KeyEventScriptNode">
        <ID>773053160</ID>
        <Position>
          <X>230.526367</X>
          <Y>466.8172</Y>
        </Position>
        <Name>Sandbox.Game.MyVisualScriptLogicProvider.TimerBlockTriggered</Name>
        <SequenceOutputID>972458719</SequenceOutputID>
        <OutputIDs>
          <IdentifierList>
            <Ids />
          </IdentifierList>
        </OutputIDs>
        <OutputNames>
          <string>entityName</string>
        </OutputNames>
        <OuputTypes>
          <string>System.String</string>
        </OuputTypes>
        <Keys>
          <string>Activate Tutorial</string>
          <string />
        </Keys>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1947211596</ID>
        <Position>
          <X>2912.34131</X>
          <Y>486.310883</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_Hint2</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs>
          <MyVariableIdentifier>
            <NodeID>559371741</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>Param_-1</OriginName>
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
            <NodeID>1965425601</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1808119033</ID>
        <Position>
          <X>974.1105</X>
          <Y>893.074158</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>1478570896</SequenceOutput>
        <SequenceInput>1953231992</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1657605172</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1425751007</ID>
        <Position>
          <X>2410.73022</X>
          <Y>1002.07922</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>74959361</SequenceInputID>
        <SequenceOutputID>598118180</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>TimerTutorial2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>808141438</ID>
        <Position>
          <X>2336.649</X>
          <Y>499.120239</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_QuestlogLine2</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>113117728</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1743849353</ID>
        <Position>
          <X>2363.39063</X>
          <Y>-526.922</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1980944288</SequenceInputID>
        <SequenceOutputID>1982224178</SequenceOutputID>
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
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DrillShip</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1749748663</ID>
        <Position>
          <X>199.947021</X>
          <Y>887.5947</Y>
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
                <NodeID>720021642</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>TutorialChoice</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1895304178</ID>
        <Position>
          <X>2256.91748</X>
          <Y>173.072235</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlight(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, Int64 playerId, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>901411315</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>BPChoose</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subPartNames</ParameterName>
            <Value>ButtonLarge_section_001;ButtonLarge_section_004</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>44071098</ID>
        <Position>
          <X>1890.59729</X>
          <Y>288.476135</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>604173750</SequenceOutput>
        <SequenceInput>1926815043</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>392080147</ID>
        <Position>
          <X>2276.21582</X>
          <Y>382.031067</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>604173750</SequenceInputID>
        <SequenceOutputID>113117728</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1695460385</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>1134806651</ID>
        <Position>
          <X>2163.34155</X>
          <Y>608.843262</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>362812186</SequenceOutput>
        <SequenceInput>2022015826</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>609149438</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1513823666</ID>
        <Position>
          <X>1211.8125</X>
          <Y>672.4105</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>692466965</SequenceInputID>
        <SequenceOutputID>951332557</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>TimerTutorial2</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2080306425</ID>
        <Position>
          <X>1456.68823</X>
          <Y>870.267334</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridDestructible(String entityName, Boolean destructible)</Type>
        <ExtOfType />
        <SequenceInputID>1478570896</SequenceInputID>
        <SequenceOutputID>1515072137</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>destructible</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>425556257</ID>
        <Position>
          <X>1853.49768</X>
          <Y>-147.5812</Y>
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
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1947844982</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs>
          <IdentifierList>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1502626918</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>TutorialActive</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1478570896</ID>
        <Position>
          <X>1227.68823</X>
          <Y>874.5918</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ResearchListWhitelist(Boolean whitelist)</Type>
        <ExtOfType />
        <SequenceInputID>1808119033</SequenceInputID>
        <SequenceOutputID>2080306425</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>whitelist</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1840258328</ID>
        <Position>
          <X>2518.26538</X>
          <Y>4.637512</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ClearAllToolbarSlots(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1446330372</SequenceInputID>
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
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>1067158645</ID>
        <Position>
          <X>1537.16809</X>
          <Y>-117.850983</Y>
        </Position>
        <Value>Toolbar</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>1947844982</NodeID>
              <VariableName>Input_B</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1217146106</ID>
        <Position>
          <X>1210.023</X>
          <Y>538.7842</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>818294317</SequenceInputID>
        <SequenceOutputID>692466965</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>BPChoose</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1695460385</ID>
        <Position>
          <X>2010.78577</X>
          <Y>437.779633</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_QuestlogLine1</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>392080147</NodeID>
            <VariableName>questDetailRow</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>464441567</ID>
        <Position>
          <X>2408.94067</X>
          <Y>868.4529</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>810405687</SequenceInputID>
        <SequenceOutputID>74959361</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>BPChoose</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>905153570</ID>
        <Position>
          <X>1783.87256</X>
          <Y>-313.126038</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Faction_Private</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1980944288</NodeID>
            <VariableName>factionPrivateText</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1810306909</ID>
        <Position>
          <X>1622.96472</X>
          <Y>220.993378</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_Hint</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>901411315</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>124632819</ID>
        <Position>
          <X>3036.0813</X>
          <Y>-511.784668</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1982224178</SequenceInputID>
        <SequenceOutputID>1285073910</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>271548871</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DoorFirst</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>271548871</ID>
        <Position>
          <X>2868.39429</X>
          <Y>-393.7587</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPirateId()</Type>
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
                <NodeID>124632819</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>408146160</ID>
        <Position>
          <X>1556.92529</X>
          <Y>-465.751373</Y>
        </Position>
        <Name>Once</Name>
        <SequenceOutput>1980944288</SequenceOutput>
        <SequenceInput>2022840184</SequenceInput>
        <Inputs />
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1257162258</ID>
        <Position>
          <X>1843.59546</X>
          <Y>-84.24321</Y>
        </Position>
        <InputID>
          <NodeID>1921817258</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>826854800</SequenceInputID>
        <SequenceTrueOutputID>1502626918</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ScriptScriptNode">
        <ID>901411315</ID>
        <Position>
          <X>1925.4978</X>
          <Y>178.1235</Y>
        </Position>
        <Name>AssistantMessage</Name>
        <SequenceOutput>1895304178</SequenceOutput>
        <SequenceInput>1926815043</SequenceInput>
        <Inputs>
          <MyInputParameterSerializationData>
            <Type>System.String</Type>
            <Name>Message</Name>
            <Input>
              <NodeID>1810306909</NodeID>
              <VariableName>Output</VariableName>
              <OriginName />
              <OriginType />
            </Input>
          </MyInputParameterSerializationData>
        </Inputs>
        <Outputs />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>817167143</ID>
        <Position>
          <X>1392.08459</X>
          <Y>-208.230835</Y>
        </Position>
        <Value>P</Value>
        <Type>System.String</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>163686532</NodeID>
              <VariableName>Input_A</VariableName>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>163686532</ID>
        <Position>
          <X>1505.05945</X>
          <Y>-229.636627</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1947844982</NodeID>
            <VariableName>Input_A</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>817167143</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>842241999</NodeID>
          <VariableName>playerId</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1250652165</ID>
        <Position>
          <X>1794.127</X>
          <Y>-623.2157</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Faction_Name</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1980944288</NodeID>
            <VariableName>factionName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>692466965</ID>
        <Position>
          <X>1210.97168</X>
          <Y>605.9796</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>1217146106</SequenceInputID>
        <SequenceOutputID>1513823666</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>TimerTutorial1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1521071250</ID>
        <Position>
          <X>1805.65845</X>
          <Y>-722.5831</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Faction_Tag</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1980944288</NodeID>
            <VariableName>factionTag</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>2022840184</ID>
        <Position>
          <X>1341.65527</X>
          <Y>49.62793</Y>
        </Position>
        <SequenceInput>842241999</SequenceInput>
        <SequenceOutputs>
          <int>408146160</int>
          <int>826854800</int>
          <int>1180217698</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1980944288</ID>
        <Position>
          <X>2072.56738</X>
          <Y>-521.035034</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.CreateFaction(Int64 founderId, String factionTag, String factionName, String factionDescription, String factionPrivateText)</Type>
        <ExtOfType />
        <SequenceInputID>408146160</SequenceInputID>
        <SequenceOutputID>1743849353</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1521071250</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>factionTag</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1250652165</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>factionName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1943627486</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>factionDescription</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>905153570</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>factionPrivateText</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>founderId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionTag</ParameterName>
            <Value />
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionName</ParameterName>
            <Value />
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionDescription</ParameterName>
            <Value />
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionPrivateText</ParameterName>
            <Value />
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1982224178</ID>
        <Position>
          <X>2681.59717</X>
          <Y>-519.4113</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1743849353</SequenceInputID>
        <SequenceOutputID>124632819</SequenceOutputID>
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
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>559371741</ID>
        <Position>
          <X>2594.81665</X>
          <Y>546.704163</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetUserControlKey(String keyName)</Type>
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
            <OriginType>System.String</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>1947211596</NodeID>
                <VariableName>Param_-1</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>keyName</ParameterName>
            <Value>THRUSTS</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>70164909</ID>
        <Position>
          <X>2058.0415</X>
          <Y>91.44977</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>879672977</SequenceInputID>
        <SequenceOutputID>864272382</SequenceOutputID>
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
            <NodeID>1947844982</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>826854800</ID>
        <Position>
          <X>1532.51843</X>
          <Y>48.17212</Y>
        </Position>
        <InputID>
          <NodeID>1124128377</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2022840184</SequenceInputID>
        <SequenceTrueOutputID>1257162258</SequenceTrueOutputID>
        <SequnceFalseOutputID>1926815043</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1502626918</ID>
        <Position>
          <X>2154.36743</X>
          <Y>-90.49921</Y>
        </Position>
        <InputID>
          <NodeID>425556257</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>1257162258</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1446330372</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ConstantScriptNode">
        <ID>145006078</ID>
        <Position>
          <X>2214.8374</X>
          <Y>123.123032</Y>
        </Position>
        <Value>true</Value>
        <Type>System.Boolean</Type>
        <OutputIds>
          <Ids>
            <MyVariableIdentifier>
              <NodeID>864272382</NodeID>
            </MyVariableIdentifier>
          </Ids>
        </OutputIds>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1783365535</ID>
        <Position>
          <X>1553.60156</X>
          <Y>372.776184</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetPlayersFaction(Int64 playerId, String factionTag)</Type>
        <ExtOfType />
        <SequenceInputID>1180217698</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1319307174</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>factionTag</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>factionTag</ParameterName>
            <Value>STA</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1657605172</ID>
        <Position>
          <X>706.7925</X>
          <Y>965.2304</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_Outcome2</MessageId>
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
            <NodeID>1808119033</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1965425601</ID>
        <Position>
          <X>3105.34375</X>
          <Y>382.743774</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>113117728</SequenceInputID>
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
            <NodeID>1947211596</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1285073910</ID>
        <Position>
          <X>3389.496</X>
          <Y>-502.499054</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreLong(String key, Int64 value)</Type>
        <ExtOfType />
        <SequenceInputID>124632819</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>value</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>Founder</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1319307174</ID>
        <Position>
          <X>1293.02808</X>
          <Y>363.9571</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Faction_Tag</MessageId>
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
            <NodeID>1783365535</NodeID>
            <VariableName>factionTag</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>113117728</ID>
        <Position>
          <X>2616.32935</X>
          <Y>412.9505</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddQuestlogDetail(String questDetailRow, Boolean completePrevious, Boolean useTyping, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>392080147</SequenceInputID>
        <SequenceOutputID>1965425601</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>808141438</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1124128377</ID>
        <Position>
          <X>1008.53589</X>
          <Y>150.930542</Y>
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
                <NodeID>826854800</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>TutorialChoice</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1706370700</ID>
        <Position>
          <X>1254.53723</X>
          <Y>-918.8054</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.GetPirateId()</Type>
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
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>237428744</NodeID>
                <VariableName>playerId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>879672977</ID>
        <Position>
          <X>1869.73755</X>
          <Y>100.1877</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ClearAllToolbarSlots(Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>1926815043</SequenceInputID>
        <SequenceOutputID>70164909</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>842241999</NodeID>
            <VariableName>playerId</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>237428744</ID>
        <Position>
          <X>1421.38342</X>
          <Y>-996.468445</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1805810184</SequenceInputID>
        <SequenceOutputID>265536960</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1706370700</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DoorFirst</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>972458719</ID>
        <Position>
          <X>492.300049</X>
          <Y>514.8657</Y>
        </Position>
        <InputID>
          <NodeID>931788502</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>773053160</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>557599452</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>23470322</ID>
        <Position>
          <X>588.672852</X>
          <Y>-995.139954</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ResearchListWhitelist(Boolean whitelist)</Type>
        <ExtOfType />
        <SequenceInputID>921345334</SequenceInputID>
        <SequenceOutputID>2120613298</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>whitelist</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>384516469</ID>
        <Position>
          <X>2959.58862</X>
          <Y>888.377</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlogVisible(Boolean value, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>598118180</SequenceInputID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>74959361</ID>
        <Position>
          <X>2409.8894</X>
          <Y>935.6483</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.RemoveEntity(String entityName)</Type>
        <ExtOfType />
        <SequenceInputID>464441567</SequenceInputID>
        <SequenceOutputID>1425751007</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>TimerTutorial1</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>313402723</ID>
        <Position>
          <X>2616.45679</X>
          <Y>743.459534</Y>
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
                <NodeID>858127055</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Component</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>Motor</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_SequenceScriptNode">
        <ID>1926815043</ID>
        <Position>
          <X>1762.50208</X>
          <Y>161.251343</Y>
        </Position>
        <SequenceInput>826854800</SequenceInput>
        <SequenceOutputs>
          <int>879672977</int>
          <int>901411315</int>
          <int>44071098</int>
          <int>-1</int>
        </SequenceOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1446330372</ID>
        <Position>
          <X>2322.046</X>
          <Y>2.25909424</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1502626918</SequenceInputID>
        <SequenceOutputID>1840258328</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1947844982</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>key</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>value</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1515072137</ID>
        <Position>
          <X>1761.16492</X>
          <Y>873.267334</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridEditable(String entityName, Boolean editable)</Type>
        <ExtOfType />
        <SequenceInputID>2080306425</SequenceInputID>
        <SequenceOutputID>810405687</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>editable</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_VariableSetterScriptNode">
        <ID>864272382</ID>
        <Position>
          <X>2345.91968</X>
          <Y>89.39305</Y>
        </Position>
        <VariableName>SomePlayerSpawned</VariableName>
        <VariableValue>0</VariableValue>
        <SequenceInputID>70164909</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <ValueInputID>
          <NodeID>145006078</NodeID>
          <VariableName>Value</VariableName>
        </ValueInputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>931788502</ID>
        <Position>
          <X>208.464111</X>
          <Y>628.0205</Y>
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
            <OriginType>System.Boolean</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>972458719</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>TutorialChoice</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1961311893</ID>
        <Position>
          <X>-277.197144</X>
          <Y>1218.3905</Y>
        </Position>
        <MethodName>GameFinished</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2120613298</ID>
        <Position>
          <X>817.672852</X>
          <Y>-999.4644</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridDestructible(String entityName, Boolean destructible)</Type>
        <ExtOfType />
        <SequenceInputID>23470322</SequenceInputID>
        <SequenceOutputID>1805810184</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>destructible</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>156422501</ID>
        <Position>
          <X>2289.853</X>
          <Y>747.068054</Y>
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
                <NodeID>1777415217</NodeID>
                <VariableName>itemId</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>typeId</ParameterName>
            <Value>Component</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>subtypeId</ParameterName>
            <Value>InteriorPlate</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>604173750</ID>
        <Position>
          <X>2014.71338</X>
          <Y>335.949249</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetQuestlog(Boolean visible, String questName, Int64 playerId)</Type>
        <ExtOfType />
        <SequenceInputID>44071098</SequenceInputID>
        <SequenceOutputID>392080147</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1223593589</NodeID>
            <VariableName>Output</VariableName>
            <OriginName>questName</OriginName>
            <OriginType>System.String</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>720021642</ID>
        <Position>
          <X>505.921631</X>
          <Y>798.866</Y>
        </Position>
        <InputID>
          <NodeID>1749748663</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>654982138</SequenceInputID>
        <SequenceTrueOutputID>-1</SequenceTrueOutputID>
        <SequnceFalseOutputID>1953231992</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>557599452</ID>
        <Position>
          <X>699.6299</X>
          <Y>574.0359</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>972458719</SequenceInputID>
        <SequenceOutputID>818294317</SequenceOutputID>
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
            <Value>TutorialChoice</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1947844982</ID>
        <Position>
          <X>1666.79187</X>
          <Y>-192.771149</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>425556257</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1446330372</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>70164909</NodeID>
            <VariableName>key</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>+</Operation>
        <InputAID>
          <NodeID>163686532</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>1067158645</NodeID>
          <VariableName>Value</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>265536960</ID>
        <Position>
          <X>1750.44739</X>
          <Y>-992.971863</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeDoorState(String doorBlockName, Boolean open)</Type>
        <ExtOfType />
        <SequenceInputID>237428744</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>open</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>doorBlockName</ParameterName>
            <Value>DoorFirst</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>362812186</ID>
        <Position>
          <X>2355.12866</X>
          <Y>615.621033</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>1134806651</SequenceInputID>
        <SequenceOutputID>1777415217</SequenceOutputID>
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
            <Value>false</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>AllowSave</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>818294317</ID>
        <Position>
          <X>973.5244</X>
          <Y>574.0305</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>557599452</SequenceInputID>
        <SequenceOutputID>1217146106</SequenceOutputID>
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
            <Value>TutorialActive</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1223593589</ID>
        <Position>
          <X>1771.439</X>
          <Y>346.0765</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_QuestlogTitle</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>604173750</NodeID>
            <VariableName>questName</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1921817258</ID>
        <Position>
          <X>1540.95337</X>
          <Y>-67.27263</Y>
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
                <NodeID>1257162258</NodeID>
                <VariableName>Comparator</VariableName>
              </MyVariableIdentifier>
            </Ids>
          </IdentifierList>
        </OutputParametersIDs>
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>key</ParameterName>
            <Value>TutorialActive</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>609149438</ID>
        <Position>
          <X>1893.16357</X>
          <Y>654.458252</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Intro_Outcome1</MessageId>
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
            <NodeID>1134806651</NodeID>
            <VariableName>Message</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>598118180</ID>
        <Position>
          <X>2681.31958</X>
          <Y>887.390259</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1425751007</SequenceInputID>
        <SequenceOutputID>384516469</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>BPChoose</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_LocalizationScriptNode">
        <ID>1943627486</ID>
        <Position>
          <X>1761.55054</X>
          <Y>-407.573975</Y>
        </Position>
        <Context>Station419</Context>
        <MessageId>Faction_Description</MessageId>
        <ResourceId>8715113990822297600</ResourceId>
        <ParameterInputs />
        <ValueOutputs>
          <MyVariableIdentifier>
            <NodeID>-1</NodeID>
            <VariableName />
          </MyVariableIdentifier>
          <MyVariableIdentifier>
            <NodeID>1980944288</NodeID>
            <VariableName>factionDescription</VariableName>
          </MyVariableIdentifier>
        </ValueOutputs>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>810405687</ID>
        <Position>
          <X>2077.09937</X>
          <Y>873.863037</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.ChangeOwner(String entityName, Int64 playerId, Boolean factionShare, Boolean allShare)</Type>
        <ExtOfType />
        <SequenceInputID>1515072137</SequenceInputID>
        <SequenceOutputID>464441567</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>1615432155</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>playerId</OriginName>
            <OriginType>System.Int64</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>DoorFirst</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>factionShare</ParameterName>
            <Value>true</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>2025250876</ID>
        <Position>
          <X>-98.196106</X>
          <Y>1183.68945</Y>
        </Position>
        <MethodName>Dispose</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>921345334</ID>
        <Position>
          <X>420.185059</X>
          <Y>-1010.49677</Y>
        </Position>
        <MethodName>GameStarted</MethodName>
        <SequenceOutputIDs>
          <int>23470322</int>
        </SequenceOutputIDs>
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>858127055</ID>
        <Position>
          <X>2914.95728</X>
          <Y>610.61615</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddToInventory(String entityname, MyDefinitionId itemId, Int32 amount)</Type>
        <ExtOfType />
        <SequenceInputID>1777415217</SequenceInputID>
        <SequenceOutputID>-1</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>313402723</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>amount</ParameterName>
            <Value>25</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityname</ParameterName>
            <Value>InnerBaseCargo</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_InterfaceMethodNode">
        <ID>1656810441</ID>
        <Position>
          <X>310.8553</X>
          <Y>1192.3053</Y>
        </Position>
        <MethodName>Update</MethodName>
        <SequenceOutputIDs />
        <OutputIDs />
        <OutputNames />
        <OuputTypes />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1777415217</ID>
        <Position>
          <X>2609.80273</X>
          <Y>610.5173</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.AddToInventory(String entityname, MyDefinitionId itemId, Int32 amount)</Type>
        <ExtOfType />
        <SequenceInputID>362812186</SequenceInputID>
        <SequenceOutputID>858127055</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs>
          <MyVariableIdentifier>
            <NodeID>156422501</NodeID>
            <VariableName>Return</VariableName>
            <OriginName>itemId</OriginName>
            <OriginType>VRage.Game.MyDefinitionId</OriginType>
          </MyVariableIdentifier>
        </InputParameterIDs>
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>amount</ParameterName>
            <Value>150</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>entityname</ParameterName>
            <Value>InnerBaseCargo</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>951332557</ID>
        <Position>
          <X>1495.8075</X>
          <Y>565.211548</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetHighlightForAll(String entityName, Boolean enabled, Int32 thickness, Int32 pulseTimeInFrames, Color color, String subPartNames)</Type>
        <ExtOfType />
        <SequenceInputID>1513823666</SequenceInputID>
        <SequenceOutputID>2022015826</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>BPChoose</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>enabled</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1953231992</ID>
        <Position>
          <X>709.1184</X>
          <Y>869.752441</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>VRage.Game.VisualScripting.MyVisualScriptLogicProvider.StoreBool(String key, Boolean value)</Type>
        <ExtOfType />
        <SequenceInputID>720021642</SequenceInputID>
        <SequenceOutputID>1808119033</SequenceOutputID>
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
            <Value>TutorialChoice</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2022015826</ID>
        <Position>
          <X>1786.14514</X>
          <Y>563.38446</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.StartStateMachine(String stateMachineName, Int64 ownerId)</Type>
        <ExtOfType />
        <SequenceInputID>951332557</SequenceInputID>
        <SequenceOutputID>1134806651</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>stateMachineName</ParameterName>
            <Value>Station419_SM</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1805810184</ID>
        <Position>
          <X>1122.14954</X>
          <Y>-996.4644</Y>
        </Position>
        <Version>1</Version>
        <DeclaringType />
        <Type>Sandbox.Game.MyVisualScriptLogicProvider.SetGridEditable(String entityName, Boolean editable)</Type>
        <ExtOfType />
        <SequenceInputID>2120613298</SequenceInputID>
        <SequenceOutputID>237428744</SequenceOutputID>
        <InstanceInputID>
          <NodeID>-1</NodeID>
          <VariableName />
        </InstanceInputID>
        <InputParameterIDs />
        <OutputParametersIDs />
        <InputParameterValues>
          <MyParameterValue>
            <ParameterName>entityName</ParameterName>
            <Value>Station419Main</Value>
          </MyParameterValue>
          <MyParameterValue>
            <ParameterName>editable</ParameterName>
            <Value>false</Value>
          </MyParameterValue>
        </InputParameterValues>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>1615432155</ID>
        <Position>
          <X>1800.79822</X>
          <Y>956.1439</Y>
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
            <OriginType>System.Int64</OriginType>
            <Ids>
              <MyVariableIdentifier>
                <NodeID>810405687</NodeID>
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
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_BranchingScriptNode">
        <ID>1180217698</ID>
        <Position>
          <X>1408.044</X>
          <Y>192.936508</Y>
        </Position>
        <InputID>
          <NodeID>1434319471</NodeID>
          <VariableName>Output</VariableName>
          <OriginName />
          <OriginType />
        </InputID>
        <SequenceInputID>2022840184</SequenceInputID>
        <SequenceTrueOutputID>1783365535</SequenceTrueOutputID>
        <SequnceFalseOutputID>-1</SequnceFalseOutputID>
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_ArithmeticScriptNode">
        <ID>1434319471</ID>
        <Position>
          <X>1250.044</X>
          <Y>224.936508</Y>
        </Position>
        <OutputNodeIDs>
          <MyVariableIdentifier>
            <NodeID>1180217698</NodeID>
            <VariableName>Comparator</VariableName>
          </MyVariableIdentifier>
        </OutputNodeIDs>
        <Operation>!=</Operation>
        <InputAID>
          <NodeID>842241999</NodeID>
          <VariableName>playerId</VariableName>
          <OriginName />
          <OriginType />
        </InputAID>
        <InputBID>
          <NodeID>2086971724</NodeID>
          <VariableName>Return</VariableName>
          <OriginName />
          <OriginType />
        </InputBID>
        <ValueA />
        <ValueB />
      </MyObjectBuilder_ScriptNode>
      <MyObjectBuilder_ScriptNode xsi:type="MyObjectBuilder_FunctionScriptNode">
        <ID>2086971724</ID>
        <Position>
          <X>950.788</X>
          <Y>276.444122</Y>
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
                <NodeID>1434319471</NodeID>
                <VariableName>Input_B</VariableName>
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
    <Name>Station419_LS</Name>
  </LevelScript>
</MyObjectBuilder_VSFiles>