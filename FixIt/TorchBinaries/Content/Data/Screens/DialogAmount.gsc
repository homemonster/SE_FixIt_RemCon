<?xml version="1.0"?>
<MyObjectBuilder_GuiScreen xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Controls>
    <Controls>
      <MyObjectBuilder_GuiControlBase xsi:type="MyObjectBuilder_GuiControlTextbox">
        <Position>
          <X>0.115</X>
          <Y>-0.028</Y>
        </Position>
        <Size>
          <X>0.308</X>
          <Y>0.04</Y>
        </Size>
        <Name>AmountTextbox</Name>
        <BackgroundColor>
          <X>1</X>
          <Y>1</Y>
          <Z>1</Z>
          <W>1</W>
        </BackgroundColor>
        <OriginAlign>HORISONTAL_RIGHT_AND_VERTICAL_CENTER</OriginAlign>
      </MyObjectBuilder_GuiControlBase>
      <MyObjectBuilder_GuiControlBase xsi:type="MyObjectBuilder_GuiControlButton">
        <Position>
          <X>0.125</X>
          <Y>-0.024</Y>
        </Position>
        <Size>
          <X>0.025</X>
          <Y>0.025</Y>
        </Size>
        <Name>DecreaseButton</Name>
        <BackgroundColor>
          <X>1</X>
          <Y>1</Y>
          <Z>1</Z>
          <W>1</W>
        </BackgroundColor>
        <ControlTexture>Textures\GUI\Controls\button_decrease.dds</ControlTexture>
        <OriginAlign>HORISONTAL_LEFT_AND_VERTICAL_CENTER</OriginAlign>
        <Text />
        <TextEnum>Afterburner</TextEnum>
        <TextScale>0</TextScale>
        <TextAlignment>3</TextAlignment>
        <DrawCrossTextureWhenDisabled>true</DrawCrossTextureWhenDisabled>
        <DrawRedTextureWhenDisabled>false</DrawRedTextureWhenDisabled>
        <VisualStyle>Decrease</VisualStyle>
      </MyObjectBuilder_GuiControlBase>
      <MyObjectBuilder_GuiControlBase xsi:type="MyObjectBuilder_GuiControlButton">
        <Position>
          <X>0.16</X>
          <Y>-0.024</Y>
        </Position>
        <Size>
          <X>0.025</X>
          <Y>0.025</Y>
        </Size>
        <Name>IncreaseButton</Name>
        <BackgroundColor>
          <X>1</X>
          <Y>1</Y>
          <Z>1</Z>
          <W>1</W>
        </BackgroundColor>
        <ControlTexture>Textures\GUI\Controls\button_increase.dds</ControlTexture>
        <OriginAlign>HORISONTAL_LEFT_AND_VERTICAL_CENTER</OriginAlign>
        <Text />
        <TextEnum>Afterburner</TextEnum>
        <TextScale>0</TextScale>
        <TextAlignment>3</TextAlignment>
        <DrawCrossTextureWhenDisabled>true</DrawCrossTextureWhenDisabled>
        <DrawRedTextureWhenDisabled>false</DrawRedTextureWhenDisabled>
        <VisualStyle>Increase</VisualStyle>
      </MyObjectBuilder_GuiControlBase>
      <MyObjectBuilder_GuiControlBase xsi:type="MyObjectBuilder_GuiControlLabel">
        <Position>
          <X>0</X>
          <Y>0.022</Y>
        </Position>
        <Size>
          <X>0.0470270254</X>
          <Y>0.0266666654</Y>
        </Size>
        <Name>ErrorLabel</Name>
        <BackgroundColor>
          <X>1</X>
          <Y>0</Y>
          <Z>0</Z>
          <W>1</W>
        </BackgroundColor>
        <OriginAlign>HORISONTAL_CENTER_AND_VERTICAL_CENTER</OriginAlign>
        <TextEnum>Afterburner</TextEnum>
        <TextColor>
          <X>0.996078432</X>
          <Y>0.996078432</Y>
          <Z>0.996078432</Z>
          <W>1</W>
        </TextColor>
        <TextScale>1</TextScale>
        <Font>Blue</Font>
      </MyObjectBuilder_GuiControlBase>
    </Controls>
  </Controls>
  <BackgroundColor>
    <X>1</X>
    <Y>1</Y>
    <Z>1</Z>
    <W>1</W>
  </BackgroundColor>
  <BackgroundTexture>Textures\GUI\Screens\screen_background.dds</BackgroundTexture>
  <Size>
    <X>0.5</X>
    <Y>0.3</Y>
  </Size>
  <CloseButtonEnabled>true</CloseButtonEnabled>
  <InfoButtonEnabled>false</InfoButtonEnabled>
  <CloseButtonOffset>
    <X>-0.016</X>
    <Y>0.01</Y>
  </CloseButtonOffset>
</MyObjectBuilder_GuiScreen>