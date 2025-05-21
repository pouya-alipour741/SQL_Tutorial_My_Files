GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 198) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (198, N'فرم سرنخ فروش',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1096" Height="687.03333333" Background="White">
  <Canvas Width="1076" Height="662">
    <ViewLayouts>
      <ViewLayoutItem Name="ثبت" ID="5258126576438739276" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5124242136251439262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5611438163255659051" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بازماندن سرنخ" ID="5547138725011950588" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5124242136251439262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5611438163255659051" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نماینده" ID="5173945606304940947" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه مذاکره" ID="5698669280549050986" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ریکاوری" ID="4651490091848373544" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>4792878568360849497</ID>
        <Name>کدملی نامعتبر</Name>
        <Condition>({@chkValidNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده نامعتبر است.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4984130768009581061</ComponentID>
            <ComponentName>chkValidNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4730828091541141751</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5724268443252201508</ID>
        <Name>شماره موبایل</Name>
        <Condition>({@chkMobile.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره موبایل وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4764322014286876371</ComponentID>
            <ComponentName>chkMobile</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5394840939787810873</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5049754229731249939</ID>
        <Name>پاسخ سئوال</Name>
        <Condition>({@rbdIssued.Value} ==False) &amp;&amp; ({@rbdNotIssued.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ سئوال آیا سرنخ های ارسالی منجر به صدور بیمه نامه شده است را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4713191385551044467</ComponentID>
            <ComponentName>rbdIssued</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5520382283934575632</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5372234100468683109</ComponentID>
            <ComponentName>rbdNotIssued</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5008978144522795467</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4979721608134296974</ID>
        <Name>انتخاب نمایندگی</Name>
        <Condition>({@txtNextAgencyUserID.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا نمایندگی فعال را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5649399619552018490</ComponentID>
            <ComponentName>txtNextAgencyUserID</ComponentName>
            <ComponentDataType>BigInt</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5637319775132308681</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5294028596891222983</ID>
        <Name>برقراری تماس</Name>
        <Condition>({@rbdContact.Value} ==False) &amp;&amp; ({@rbdNotContact.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از گزینه های برقراری تماس با مشتری و یا عدم موفقیت در برقراری تماس را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5672081014092220427</ComponentID>
            <ComponentName>rbdContact</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5645271311033313167</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5397542361376195100</ComponentID>
            <ComponentName>rbdNotContact</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4797448067354130306</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5472514593980962009</ID>
        <Name>شماره بیمه نامه </Name>
        <Condition>({@chkFullBno.Value} ==True) &amp;&amp; ("{@txtFullBno.Value}" !="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره بیمه نامه وارد شده معتبر نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4965374130685763840</ComponentID>
            <ComponentName>chkFullBno</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5070253121235919481</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5124242136251439262</ComponentID>
            <ComponentName>txtFullBno</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4725498077312928378</ExpressionConditionID>
            <Operator>!=</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4796509578030704164</ID>
        <Name>اعتبار سنجی وجود کاربر برای نمایندگی</Name>
        <Condition>({@chkUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>برای نمایندگی انتخاب شده کاربری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5356258724042226763</ComponentID>
            <ComponentName>chkUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5208705192423898331</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5063519763503751230</ID>
        <Name>اعتبارسنجی درخواست تکراری</Name>
        <Condition>({@chkRepeat.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>درخواست تکراری است</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5652786583614604673</ComponentID>
            <ComponentName>chkRepeat</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5066190711739761599</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1060" Height="647" Background="#FFB9D1EA" ControlID="4949931117162381316" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="فرم سرنخ فروش">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="1032" Height="67" Background="#FFDEEFF7" ControlID="5635369506503982610" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="مشخصات اولیه">
          <Canvas>
            <cm:tzLabel Name="Lable4" Content=":نام کاربر ثبت کننده" ControlID="4911390851007965812" FontFamily="Tahoma" Canvas.Left="869.20387011000014" Canvas.Top="7.0333333333332178" />
            <cm:tzLabel Name="Lable5" Content=":تاریخ ثبت" ControlID="4923368417354934190" FontFamily="Tahoma" Canvas.Left="525.08151092999992" Canvas.Top="10.516666663333041" />
            <cm:tzLabel Name="Lable6" Content=":ساعت ثبت" ControlID="5577163815290341281" FontFamily="Tahoma" Canvas.Left="217.50497017999987" Canvas.Top="7.03333333333309" />
            <cm:PDatePicker Name="pdRegDate" Width="164" Height="20" ControlID="4962505521418366642" TabIndex="2" Canvas.Left="383.33001988" Canvas.Top="11.516666666666396" cm:DefaultValue="$CurrentDate" cm:Event="dsChkRepetitiosData" />
            <cm:TzPersianTime Name="PersianTime8" Width="51" Height="20" ControlID="5566475310013326353" Canvas.Left="157.50497017999987" Canvas.Top="10.514817708333112" cm:DefaultValue="$CurrentTime" cm:TabIndex="3" />
            <cm:tzTextBox Name="txtUserFullName" Width="184" Height="21" ControlID="4869186778912237930" Canvas.Left="676.20387011000014" Canvas.Top="10.516666666666396" cm:DataBinding="dsFullName" cm:DataBindingField="FullName" cm:TabIndex="1" />
            <cm:tzDataSource Name="dsFullName" Content="dsFullName" Width="110" Height="25" ControlID="4744676061921912219" Canvas.Left="730.43589050000014" Canvas.Top="5.5148177083331138" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFUllName">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox10" Width="1032" Height="231.51666667" Background="#FFDEEFF7" ControlID="4637653500481605498" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="84" cm:Header="اطلاعات سرنخ">
          <Canvas>
            <cm:tzLabel Name="Lable11" Content=":درگاه ورودی" ControlID="4780295965153114959" FontFamily="Tahoma" Canvas.Left="863.91632869000023" Canvas.Top="8" />
            <cm:tzLabel Name="Lable12" Content=":کد ملی" ControlID="5597536046182562526" FontFamily="Tahoma" Canvas.Left="528.03163684999993" Canvas.Top="8" />
            <cm:tzLabel Name="Lable13" Content=":نام و نام خانوادگی" ControlID="5081039359572343321" FontFamily="Tahoma" Canvas.Left="221.16830351666675" Canvas.Top="7.6679920466663845" />
            <cm:tzLabel Name="Lable14" Content=":شماره همراه" ControlID="5741060782265116303" FontFamily="Tahoma" Canvas.Left="863.91632869000023" Canvas.Top="42.151325383333358" />
            <cm:tzLabel Name="Lable15" Content=":شماره ثابت" ControlID="5271102615269864595" FontFamily="Tahoma" Canvas.Left="528.03163684999981" Canvas.Top="42.151325383333358" />
            <cm:tzLabel Name="Lable16" Content=":شغل" ControlID="5097581717557177379" FontFamily="Tahoma" Canvas.Left="221.1683035166663" Canvas.Top="41.151325383333088" />
            <cm:tzLabel Name="Lable17" Content=":رشته بیمه ای مورد تقاضا" ControlID="5518766708536857405" FontFamily="Tahoma" Canvas.Left="863.91632869" Canvas.Top="75.63465871666665" />
            <cm:tzLabel Name="Lable18" Content=":استان" ControlID="5309019411939751681" FontFamily="Tahoma" Canvas.Left="528.03163684999981" Canvas.Top="75.63465871666665" />
            <cm:tzLabel Name="Lable19" Content=":شهر" ControlID="5667253933590960516" FontFamily="Tahoma" Canvas.Left="224.03830351666619" Canvas.Top="75.634658716666777" />
            <cm:tzLookUpComboBox Name="cmbInputPort" Width="183.99999999999989" Height="22" ControlID="5221905107454111965" Canvas.Left="670.91632869000034" Canvas.Top="8.6679920499998389" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInputPort" cm:DataBindingField="InputPortID" cm:DefaultValue="$اولی" cm:SelectedDataBinding="dsSelectInput" cm:TabIndex="4" cm:tzDisplayItem="InputPortTitle" cm:tzValueItem="InputPortID" />
            <cm:tzTextBox Name="txtFullName" Width="192.00000000000011" Height="21" Canvas.Left="20.168303519999881" Canvas.Top="11.15132538" cm:ControlID="5457900391677280406" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FullName" cm:Len="100" cm:TabIndex="6" />
            <cm:tzTextBox Name="txtJobTitle" Width="192" Height="21" Canvas.Left="20.16830352" Canvas.Top="44.63465872" cm:ControlID="4940331532834525606" cm:DataBinding="dsLoadInfo" cm:DataBindingField="JobTitle" cm:Len="50" cm:TabIndex="9" />
            <cm:tzTextBox Name="txtPhoneNO" Width="184" Height="21" Canvas.Left="335.03163684999993" Canvas.Top="45.634658716666593" cm:ControlID="5306351824122831530" cm:DataBinding="dsLoadInfo" cm:DataBindingField="PhoneNO" cm:Len="11" cm:TabIndex="8" />
            <cm:tzTextBox Name="txtMobileNO" Width="184" Height="21" Canvas.Left="670.91632869000023" Canvas.Top="45.634658716666536" cm:ControlID="4613639992271604626" cm:DataBinding="dsLoadInfo" cm:DataBindingField="MobileNO" cm:Event="dsCheckMobile,dsChkRepetitiosData" cm:Len="11" cm:TabIndex="7" />
            <cm:tzLookUpComboBox Name="cmbInsuranceGroup" Width="183.99999999999989" Height="22" ControlID="5101302444275927146" Canvas.Left="670.91632869000034" Canvas.Top="78.1179920500004" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInsuranceGroup" cm:DataBindingField="BimeGroupID" cm:Event="dsChkRepetitiosData" cm:SelectedDataBinding="dsLoadInfo" cm:TabIndex="10" cm:tzDisplayItem="BimeGroupName" cm:tzValueItem="BimeGroupID" />
            <cm:tzLookUpComboBox Name="cmbProvince" Width="183.99999999999989" Height="22" Canvas.Left="335.03163685000004" Canvas.Top="78.1179920500004" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4741021543590103433" cm:DataBinding="dsProvince" cm:DataBindingField="ProvinceID" cm:DefaultValue="" cm:Event="dsCity" cm:TabIndex="11" cm:tzDisplayItem="ProvinceName" cm:tzValueItem="ProvinceID" />
            <cm:tzLookUpComboBox Name="cmbCity" Width="192.00000000000011" Height="22" Canvas.Left="20.168303519999881" Canvas.Top="77.11799205" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5631453772834689748" cm:DataBinding="dsCity" cm:DataBindingField="CityID" cm:TabIndex="12" cm:tzDisplayItem="CityName" cm:tzValueItem="CityID" />
            <cm:tzTextBox Name="txtNationalCode" Width="184" Height="21" Canvas.Left="335.03163684999993" Canvas.Top="12.151325380000003" cm:ControlID="5222312950179194682" cm:DataBinding="dsLoadInfo" cm:DataBindingField="NationalCode" cm:Event="dtsValidNationalCode" cm:Len="10" cm:TabIndex="5" />
            <cm:tzLabel Name="Lable56" Content=":توضیحات" ControlID="4693216493594900826" FontFamily="Tahoma" Canvas.Left="469.39830351666672" Canvas.Top="109.11799204666671" />
            <cm:tzTextBox Name="txtDesc" Width="455.19930699" Height="86.10000001" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="112.60132538" cm:ControlID="4628781788341651288" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Descript" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="13" />
            <cm:tzLabel Name="Lable60" Content="*" ControlID="4746483888418912443" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="317.48163685000003" Canvas.Top="7.6679920466663845" />
            <cm:tzLabel Name="Lable6162" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="572.07830351666666" Canvas.Top="8.6679920466667113" cm:ControlID="4899263888538202998" />
            <cm:tzLabel Name="Lable62" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="934.84632869000029" Canvas.Top="42.151325383333131" cm:ControlID="5593800740338150171" />
            <cm:tzLabel Name="Lable6364" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="985.9129953566669" Canvas.Top="75.634658716666763" cm:ControlID="5310934279893889285" />
            <cm:tzLabel Name="Lable64" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="564.08830351666654" Canvas.Top="75.63465871666682" cm:ControlID="5467926811511504009" />
            <cm:tzLabel Name="Lable65" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="253.09163684999948" Canvas.Top="74.634658716666664" cm:ControlID="5057669816529502200" />
            <cm:tzDataSource Name="dsInsuranceGroup" Content="dsInsuranceGroup" Width="54" Height="25" ControlID="5062634195442045899" Canvas.Left="615.91632869" Canvas.Top="86.60132538" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetReshteID" />
            <cm:tzLabel Name="Lable91" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="934.84632869000029" Canvas.Top="8.6679920499998389" cm:ControlID="5752473581802551545" />
            <cm:tzDataSource Name="dsCheckMobile" Content="dsCheckMobile" Width="110" Height="25" ControlID="5345664692464895542" Canvas.Left="195.19930698999951" Canvas.Top="173.70132539000008" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckMobileNO_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtMobileNO}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @MobileNO" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkMobile" Content="chkMobile" Width="120" Height="20" ControlID="4764322014286876371" Canvas.Left="306.1993069899994" Canvas.Top="173.70132538999997" cm:DataBinding="dsCheckMobile" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable47" Content="09122345678" Width="80.288025173333338" Height="23" ControlID="5114005208672554165" FontSize="11" Foreground="#FF3DAF69" Canvas.Left="589.62830351666662" Canvas.Top="42.45" />
            <cm:tzTextBox Name="txtProvinceName" Width="183.99999999999989" Height="21" ControlID="4716761535544883575" Canvas.Left="335.03163685000004" Canvas.Top="79.117992050000055" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ProvinceName" />
            <cm:tzTextBox Name="txtCityName" Width="191.99999999000011" Height="21" ControlID="4968159177977063475" Canvas.Left="20.168303519999881" Canvas.Top="79.11799205" cm:DataBinding="dsLoadInfo" cm:DataBindingField="CityName" />
            <cm:tzDataSource Name="dsInputPort" Content="dsInputPort" Width="110" Height="25" ControlID="5522440895892010161" Canvas.Left="727.45974794999961" Canvas.Top="0.6679920499998957" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_InputPort" />
            <cm:tzDataSource Name="dsSelectInput" Content="dsSelectInput" Width="42" Height="25" ControlID="5042414003054825578" Canvas.Left="676.45974795" Canvas.Top="0.66799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Selected_Tbl_Cu_Base_InputPort">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="110" Height="25" ControlID="5655127928093179374" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="360.48033707999991" Canvas.Top="8.15132538333323" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log (@WorkflowInstanceID), {@ChckFlag}">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsChkRepetitiosData" Content="dsChkRepetitiosData" Width="92" Height="25" ControlID="4746225051084394351" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="26" Canvas.Top="173.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_ChkRepetitiosData_Saleslead">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNO}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Mobile" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdRegDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @RegDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInsuranceGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Insurance" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkRepeat" Content="TZCheckBox" Width="37" Height="20" ControlID="5652786583614604673" Canvas.Left="118.99999999999955" Canvas.Top="178.70132539000019" cm:DataBinding="dsChkRepetitiosData" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" ControlID="5225505677637092669" Canvas.Left="360.4803370799998" Canvas.Top="75.11799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadSalse_Tbl_Cu_Base_Province" />
            <cm:tzDataSource Name="dsCity" Content="dsCity" Width="92" Height="25" ControlID="5585168031985867519" Canvas.Left="26" Canvas.Top="74.11799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadSalse_Tbl_Cu_Base_City">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProvince}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProvinceID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="DataSource109" Width="92" Height="25" ControlID="5294042534189400076" Canvas.Left="26" Canvas.Top="139.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetCntrCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp75}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ComplainUnitsID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txbBCode" Width="22" Height="21" ControlID="5505812908880962150" Canvas.Left="139" Canvas.Top="143.70132539000008" cm:DataBinding="DataSource109" cm:DataBindingField="result" cm:Event="dsChkUserForPCode,dsGetUser" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsChkUserForPCode" Content="dsChkUserForPCode" Width="92" Height="25" ControlID="4873115086578600690" Canvas.Left="26" Canvas.Top="113.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ChkUserForPCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txbBCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @Pcode" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkUser" Content="TZCheckBox" Width="42" Height="20" ControlID="5356258724042226763" Canvas.Left="119" Canvas.Top="118.70132538999998" cm:DataBinding="dsChkUserForPCode" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dtsGudID" Content="dtsGudID" Width="110.0000000000006" Height="25" ControlID="5488081060031574093" Canvas.Left="195.1993069899994" Canvas.Top="147.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Get_New_GUDID">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGuIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="    @GUDID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtGuIDD" Width="85" Height="21" ControlID="5522297125622396319" Canvas.Left="306.19930699" Canvas.Top="151.70132539" cm:DataBinding="dtsGudID" cm:DataBindingField="GUDID" cm:Event="dsReadData" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chkIsAutomat" Content="chkIsAutomat" Width="84.999999999999716" Height="20" ControlID="4705819997363775719" Canvas.Left="385.48033707999986" Canvas.Top="173.70132538999997" cm:DataBinding="dsLoadInfo" cm:DataBindingField="IsAutomate" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4716761535544883575#4968159177977063475#" />
            <cm:tzDataSource Name="dtsValidNationalCode" Content="dtsValidNationalCode" Width="110" Height="25" ControlID="4952211064534324025" Canvas.Left="195.19930699" Canvas.Top="117.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="     @NationalCode" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidNationalCode" Content="chkValidNationalCode" Width="149" Height="20" ControlID="4984130768009581061" FontFamily="Tahoma" Canvas.Left="314.19930698999985" Canvas.Top="122.70132538999998" cm:DataBinding="dtsValidNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtUserID" Width="55.29090766000013" Height="21" ControlID="4639891614577493038" Canvas.Left="270.74072919" Canvas.Top="79.117992050000055" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:Event="dsFullName" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtExpertUserID" Width="35.973592059999874" Height="21" ControlID="5070546843852189382" Canvas.Left="158.22571493000021" Canvas.Top="165.70132539000002" cm:DataType="BigInt" cm:Event="dsExpertFullName" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtContactDesc" Width="49.20387011" Height="21.54815104" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="609.12163685" Canvas.Top="23.086507676666535" cm:ControlID="5676000566889795729" cm:IsMulitiLine="True" cm:IsVisibleItem="False" cm:Len="2000" cm:TabIndex="26" />
            <cm:tzTextBox Name="txtResultDesc" Width="72.84333333" Height="23.23721881000003" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="594.61641462" Canvas.Top="2.4307732399999793" cm:ControlID="5398258095385330778" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ResultDesc" cm:IsMulitiLine="True" cm:IsVisibleItem="False" cm:Len="1000" cm:TabIndex="27" />
            <cm:tzDataSource Name="dsFullBno" Content="dsFullBno" Width="110" Height="25" ControlID="5647335368169543079" Canvas.Left="498.12163684999996" Canvas.Top="95.701325390000022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFullBnoFormat_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullBno}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullBno" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFullBno" Content="chkFullBno" Width="80" Height="20" ControlID="4965374130685763840" Canvas.Left="587.45974795000006" Canvas.Top="65.601325379999992" cm:DataBinding="dsFullBno" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable117118" Content=":شماره بیمه نامه قبلی" Width="128" Height="23" ControlID="5580177196756927886" FontFamily="Tahoma" Canvas.Left="863.91632869" Canvas.Top="112.70132538999985" />
            <cm:tzTextBox Name="txtPolicyID" Width="183.99999999999994" Height="21" ControlID="5637360776860205377" Canvas.Left="670.91632869" Canvas.Top="112.60132538" cm:DataBinding="dsLoadInfo" cm:DataBindingField="PolicyID" />
            <cm:TZCheckBox Name="ChckIsRecovery" Content="IsRecovery" Width="120" Height="20" ControlID="5217067062659695142" FontFamily="Tahoma" Canvas.Left="392.19930698999997" Canvas.Top="152.70132539000002" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Recovery" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
            <cm:tzTextBox Name="txtInsuranceGroup" Width="72.45658074" Height="21" ControlID="5510356059517547211" Canvas.Left="597.45974794999984" Canvas.Top="112.60132537999999" cm:DataBinding="dsLoadInfo" cm:DataBindingField="InsuranceGroupTitle" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="TextBox128" Width="184.99666667" Height="21" ControlID="5591053147183080771" Canvas.Left="670.91632869" Canvas.Top="143.70132539" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable129" Content=":شعبه سرپرستی" Width="120" Height="23" ControlID="5439351209992643449" FontFamily="Tahoma" Canvas.Left="864.91299535666667" Canvas.Top="141.70132539000025" />
            <cm:tzTextBox Name="TextBox130" Width="86.884691839999732" Height="21" ControlID="5193730271735176352" Canvas.Left="484.1936116766671" Canvas.Top="143.70132539000002" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable131" Content=":کد بیمه گذار" Width="120" Height="23" ControlID="5609533060540588240" FontFamily="Tahoma" Canvas.Left="580.07830351666678" Canvas.Top="141.70132539000014" cm:IsEnableItem="True" />
            <cm:tzLabel Name="Lable132" Content=":کد نمایندگی" Width="120" Height="23" ControlID="5634916278606005639" FontFamily="Tahoma" Canvas.Left="864.91299535666667" Canvas.Top="170.70132539000002" />
            <cm:tzTextBox Name="TextBox133" Width="120" Height="21" ControlID="5209051614731024975" Canvas.Left="735.91299535666656" Canvas.Top="172.70132539000002" cm:IsEnableItem="False" />
            <cm:TZCheckBox Name="CheckBox136" Content=":بدون اجازه" Width="91.543419260000064" Height="20" ControlID="4696798250810445498" FontFamily="Tahoma" Canvas.Left="553.82169954" Canvas.Top="178.70132539000025" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox29" Width="1032" Height="101" Background="#FFDEEFF7" ControlID="4658722945562441415" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="324.51666667" cm:Header="اختصاص نمایندگی فعال">
          <Canvas>
            <cm:tzLabel Name="Lable30" Content=":نام کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="870.20387011000025" Canvas.Top="9.03333333333319" cm:ControlID="5208206632733532214" />
            <cm:tzTextBox Name="txtExpertFullName" Width="184" Height="21" Canvas.Left="678.73476899" Canvas.Top="12.516666666666424" cm:ControlID="5715607538012291320" cm:DataBinding="dsExpertFullName" cm:DataBindingField="FullName" cm:TabIndex="14" />
            <cm:tzLabel Name="Lable32" Content=":تاریخ و ساعت ثبت" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="534.08151092999992" Canvas.Top="12.516666666666367" cm:ControlID="5042157930154027558" />
            <cm:TzPersianTime Name="ptExpertTime" Width="51" Height="20" Canvas.Left="328.50497017999987" Canvas.Top="12.514817708333112" cm:ControlID="5493914966483501897" cm:TabIndex="16" />
            <cm:PDatePicker Name="pdExpertDate" Width="159.57654075" Height="20" TabIndex="15" Canvas.Left="388.50497017999987" Canvas.Top="12.514817708333112" cm:ControlID="5149611784371480095" />
            <cm:tzLabel Name="Lable52" Content=":نمایندگی / شعبه" ControlID="5302471437215963603" FontFamily="Tahoma" Canvas.Left="179.24586912000007" Canvas.Top="4.21872658666679" />
            <cm:tzTextBox Name="txtAgency" Width="184" Height="21" Canvas.Left="678.73476899" Canvas.Top="49.702059920000124" cm:ControlID="5218099495923471035" cm:DataBinding="dsGetUser" cm:DataBindingField="OldAgency" cm:IsVisibleItem="True" cm:TabIndex="18" />
            <cm:tzLabel Name="Lable5960" Content=":نمایندگی قبلی" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="871.73476899" Canvas.Top="46.2187265899999" cm:ControlID="5515006489273191870" />
            <cm:tzLabel Name="Lable6667" Content="*" ControlID="5637558461490511039" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="281.26586912" Canvas.Top="4.2187265866667332" />
            <cm:tzLabel Name="Lable7172" Content=":رتبه نماینده" ControlID="5230592037230222122" FontFamily="Tahoma" Canvas.Left="535.61240981" Canvas.Top="46.2187265899999" />
            <cm:tzTextBox Name="txtGrade" Width="194" Height="21" Canvas.Left="327.61240980999992" Canvas.Top="49.702059920000124" cm:ControlID="5257933441955732096" cm:DataBinding="dsGetUser" cm:DataBindingField="Grade" cm:IsVisibleItem="True" cm:TabIndex="19" />
            <cm:TZLookUp Name="LookUp75" ControlID="5464667694249660504" TabIndex="17" Canvas.Left="3.2458691199999521" Canvas.Top="5.7020599200001119" cm:Event="DataSource109,dsGetUser">
              <cm:TZLookUp.LoadFormValue>
                <cm:TZLookupLoadFromBrowse DataGridId="5711210534124133436" DisplayMemberColumn="BranchName" FormID="202" ValueMemberColumn="ComplainUnitsID" />
              </cm:TZLookUp.LoadFormValue>
            </cm:TZLookUp>
            <cm:tzTextBox Name="txtNextAgencyUserID" Width="120" Height="21" ControlID="5649399619552018490" Canvas.Left="177.81586911999995" Canvas.Top="49.702059920000124" cm:DataBinding="dsGetUser" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetUser" Content="dsGetUser" Width="110" Height="25" Background="#FFDDDDDD" ControlID="4957782785385817741" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="693.3407234976421" Canvas.Top="45.702059920000181" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetNextAgencyUserID_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txbBCode}" IsOutputParameter="False" ParameterType="int" SpParamName="   @ComplainUnitsID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsExpertFullName" Content="dsExpertFullName" Width="110" Height="25" Canvas.Left="711.34072349764222" Canvas.Top="3.7020599200000106" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4811300946089165859" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFUllName">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtExpertUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox55" Width="1032" Height="185" Background="#FFDEEFF7" ControlID="4858369204428413871" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="434.51666667" cm:Header="نتایج بررسی">
          <Canvas>
            <cm:tzLabel Name="Lable57" Content=":نام نماینده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="878.2038701099998" Canvas.Top="12.7224011116664" cm:ControlID="4636660323316460361" />
            <cm:tzTextBox Name="txtAgencyName" Width="273" Height="21" Canvas.Left="596.20387011" Canvas.Top="16.84307116" cm:ControlID="5750209935965205484" cm:DataBinding="dsAgencyName" cm:DataBindingField="FullName" cm:TabIndex="20" />
            <cm:tzLabel Name="Lable63" Content=":تاریخ و ساعت تماس" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="229.03852597000005" Canvas.Top="6.5499999899996162" cm:ControlID="4690449152826350818" />
            <cm:PDatePicker Name="pdContactDate" Width="156.57654075" Height="20" TabIndex="24" Canvas.Left="90.911985220000048" Canvas.Top="9.0333333233330784" cm:ControlID="4621335856663143943" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ContactDate" />
            <cm:TzPersianTime Name="pdContactTime" Width="51" Height="20" Canvas.Left="30.911985216666977" Canvas.Top="7.8412221916662581" cm:ControlID="5442010510253248869" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ContactTime" cm:TabIndex="25" />
            <cm:tzDataSource Name="dsAgencyName" Content="dsAgencyName" Width="110" Height="25" ControlID="5531120540019077596" Canvas.Left="710.3538276099996" Canvas.Top="14.549999989999833" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetAgencyFullName_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLookUpComboBox Name="cmbCustomerContact" Width="273" Height="22" ControlID="4716113222665995154" Canvas.Left="596.20387011" Canvas.Top="50.03333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCustomerContact" cm:DataType="Int" cm:Event="dsEnableNegotiate,dsChkContactCustomer" cm:IsEnableItem="True" cm:tzDisplayItem="ContactCustomer" cm:tzValueItem="ContactCustomerID" />
            <cm:tzLabel Name="Lable113" Content="*" Width="NaN" Height="NaN" ControlID="5686002781281687188" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="510.8566666700001" Canvas.Top="40.549999989999719" />
            <cm:tzLookUpComboBox Name="cmbNegotiateCustomer" Width="363.11333333666676" Height="22" ControlID="4911284196201931262" Canvas.Left="8" Canvas.Top="43.03333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsNegotiateCustomer" cm:DataType="Int" cm:Event="dsEnableReasonReject,dsEnableFullBno,dsReason,DSFlag,dsCheckTamayolBeKharid,dsCheckMandatoryReasonReject" cm:IsEnableItem="True" cm:tzDisplayItem="NegotiateCustomer" cm:tzValueItem="NegotiateCustomerID" />
            <cm:tzDataSource Name="dsCustomerContact" Content="dsCustomerContact" Width="110" Height="25" ControlID="4898308758059904712" Canvas.Left="710.35382760999937" Canvas.Top="47.033333329999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_CU_Base_ContactCustomer" />
            <cm:tzLabel Name="Lable71" Content=":شماره بیمه نامه" ControlID="5174069206793353966" Canvas.Left="878.2038701099998" Canvas.Top="81.033333333333317" />
            <cm:tzTextBox Name="txtFullBno" Width="273" Height="21" Canvas.Left="596.20387011" Canvas.Top="84.51666667" cm:ControlID="5124242136251439262" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FullBno" cm:Event="dsFullBno" cm:IsEnableItem="False" cm:TabIndex="30" />
            <cm:tzLabel Name="Lable73" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="1005.2805367766665" Canvas.Top="47.549999996666656" cm:ControlID="4880138763828235306" />
            <cm:tzLabel Name="Lable9192" Content="......./......-....../....../......." Width="167" Height="23" ControlID="5594442565448197525" Foreground="#FF0FBC2C" Canvas.Left="687.73118609999983" Canvas.Top="106.51666666666665" />
            <cm:tzLabel Name="Lable92" Content="1399/100-100/460/143086" Width="167" Height="23" Foreground="#FF0FBC2C" Canvas.Left="687.73118609999983" Canvas.Top="130.51666666666665" cm:ControlID="5245372461334569284" />
            <cm:tzLookUpComboBox Name="cmbReason" Width="362.66666667" Height="22" ControlID="5611438163255659051" Canvas.Left="8" Canvas.Top="76.51666667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsReason" cm:DataType="Int" cm:Event="DataSource122" cm:IsEnableItem="True" cm:tzDisplayItem="SalesLeadsReason" cm:tzValueItem="SalesLeadsReasonID" />
            <cm:tzLabel Name="Lable97" Content=":دلیل عدم خرید" Width="NaN" Height="NaN" Foreground="#FF000000" Canvas.Left="379.66666667333357" Canvas.Top="74.033333323333068" cm:ControlID="5352913077725881877" />
            <cm:tzLabel Name="Lable98" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="467.85666667333362" Canvas.Top="74.033333323333068" cm:ControlID="5200536210186389679" />
            <cm:tzDataSource Name="dsNegotiateCustomer" Content="dsNegotiateCustomer" Width="106.45987407999996" Height="25" ControlID="5683455469442536601" Canvas.Left="181.54012592" Canvas.Top="40.03333332" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Read_Tbl_CU_Base_NegotiateCustomer {@cmbNegotiationResultForShowCmb}" />
            <cm:tzDataSource Name="dsReason" Content="dsReason" Width="110" Height="25" ControlID="4922857318310871982" Canvas.Left="178" Canvas.Top="73.516666656666416" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:TabIndex="2147483646" cm:tzSelectQuery="exec Sp_Cu_Read_Tbl_CU_Base_SalesLeadsReason {@cmbNegotiateCustomer}, {@cmbNegotiationResultForShowCmb}" />
            <cm:tzLabel Name="Lable110111" Content=":برقراری تماس با مشتری" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="878.2038701099998" Canvas.Top="47.549999996666671" cm:ControlID="5113524035153885316" />
            <cm:tzLabel Name="Lable110111112" Content=":نتیجه مذاکره با مشتری" Width="NaN" Height="NaN" Foreground="#FF000000" Canvas.Left="380.11333333666676" Canvas.Top="40.549999989999833" cm:ControlID="5333830433755019940" />
            <cm:tzDataSource Name="dsEnableNegotiate" Content="dsEnableNegotiate" Width="110" Height="25" ControlID="4955084346430074178" Canvas.Left="137" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_Enable_NegotiateCustomer_SalesLeads {@cmbCustomerContact}, (@WorkflowInstanceID)">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbCustomerContact}" IsOutputParameter="False" ParameterType="int" SpParamName=" @CustomerContactID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableNegotiate" Content="chkEnableNegotiate" Width="120" Height="20" ControlID="5730839491973638524" Canvas.Left="137" Canvas.Top="107.51666666666665" cm:DataBinding="dsEnableNegotiate" cm:DataBindingField="res" cm:FCVCol="4911284196201931262#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4911284196201931262#" cm:TMCol="4911284196201931262#" cm:TVCol="" />
            <cm:tzDataSource Name="dsEnableReasonReject" Content="dsEnableReasonReject" Width="110" Height="25" ControlID="5432991273002384941" Canvas.Left="8" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Enable_ReasonReject_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbNegotiateCustomer}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NegotiateCustomerID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableReasonReject" Content="chkEnableReasonReject" Width="120" Height="20" ControlID="4729015082844702876" Canvas.Left="8" Canvas.Top="107.51666666666665" cm:DataBinding="dsEnableReasonReject" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5611438163255659051#" cm:TMCol="5611438163255659051#" cm:TVCol="" />
            <cm:tzDataSource Name="dsEnableFullBno" Content="dsEnableFullBno" Width="110" Height="25" Canvas.Left="278.11666667000003" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4800498649893851262" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Enable_FullBno_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbNegotiateCustomer}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NegotiateCustomerID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableFullBno" Content="chkEnableFullBno" Width="120" Height="20" Canvas.Left="278.11666667000003" Canvas.Top="107.51666666666665" cm:ControlID="4656153073016457807" cm:DataBinding="dsEnableFullBno" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5124242136251439262#" cm:TMCol="5124242136251439262#" cm:TVCol="" />
            <cm:tzTextBox Name="TxtَََAgencyCode" Width="64" Height="21" ControlID="4857729203360183353" Canvas.Left="588.19922630999986" Canvas.Top="124.76278119000017" cm:DataBinding="dsAgencyName" cm:DataBindingField="grade" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable117" Content=":رتبه" Width="72" Height="23" ControlID="5385852390089974874" FontFamily="Tahoma" Canvas.Left="431.68592964" Canvas.Top="5.84307115" />
            <cm:tzTextBox Name="TextBox118" Width="57" Height="21" ControlID="4633134698619148725" Canvas.Left="365.68592964000015" Canvas.Top="7.84307114999956" cm:DataBinding="dsAgencyName" cm:DataBindingField="grade" />
            <cm:tzTextBox Name="txtSaledReadRecoveryID" Width="120" Height="21" ControlID="4644767477812316645" Canvas.Left="459.1992263099994" Canvas.Top="124.76278118999994" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="DSFlag" Content="DSFlag" Width="110" Height="25" ControlID="4978975858314261143" Canvas.Left="417.40666667000028" Canvas.Top="104.51666666666664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
            <cm:TZCheckBox Name="ChckFlag" Content="flag" Width="85.792559639999354" Height="20" ControlID="5347937603121876258" FontFamily="Tahoma" Canvas.Left="417.89337000000057" Canvas.Top="133.76278118999994" cm:DataBinding="DSFlag" cm:DataBindingField="Column1" cm:Event="dsLoadInfo" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="cmbNegotiationResultForShowCmb" Content="NegotiationResultForShowCmb این چک باکس از فرآیند پر میشود" Width="40" Height="20" ControlID="4921984102759853303" Canvas.Left="30.911985216666949" Canvas.Top="26.549999996666656" cm:Event="dsNegotiateCustomer" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5611438163255659051#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsCheckMandatoryReasonReject" Content="dsCheckMandatoryReasonReject" Width="110" Height="25" ControlID="5684030600896213865" Canvas.Left="485.20387011" Canvas.Top="58.516666670000063" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckMandatoryReasonReject {@cmbNegotiateCustomer}" />
            <cm:TZCheckBox Name="chbCheckMandatoryReasonReject" Content="" Width="44.202796560000195" Height="20" ControlID="5350182045290888872" FontFamily="Tahoma" Canvas.Left="483.20387011" Canvas.Top="83.51666667" cm:DataBinding="dsCheckMandatoryReasonReject" cm:DataBindingField="Ejbari" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5611438163255659051#" cm:TVCol="" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TZCheckBox Name="chkIsContact" Content="برقرای اولین تماس صورت پذیرفت" ControlID="5672081014092220427" FontFamily="Tahoma" Canvas.Left="541.61240980999992" Canvas.Top="335.60371988884856" cm:DataBinding="dsLoadInfo" cm:DataBindingField="IsContact" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TabIndex="23" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:tzDataSource Name="dsCheckTamayolBeKharid" Content="dsCheckTamayolBeKharid" Width="110" Height="25" ControlID="5297536759274593723" Canvas.Left="162" Canvas.Top="426.51666667000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if ({@cmbNegotiateCustomer} = 100) select 1 As Res else  Select 0 As Res" />
        <cm:TZCheckBox Name="chkTamayolBeKharid" Content="chkTamayolBeKharid" Width="23" Height="20" ControlID="5428052653233469903" FontFamily="Tahoma" Canvas.Left="291" Canvas.Top="426.51666667" cm:DataBinding="dsCheckTamayolBeKharid" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4628781788341651288#5464667694249660504#" cm:TMCol="" cm:TVCol="" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1404/01/17 12:42:08', '80e9fd8c-c7d0-4dda-8d8d-230214f7a1f0', 0, N'', N'{"formID": "198" ,"components": [{"value": "","key": "5350182045290888872","label": "chbCheckMandatoryReasonReject","controlType": "checkbox","caption": "" ,"DataBindingField" : "Ejbari"},{"value": "","key": "5347937603121876258","label": "ChckFlag","controlType": "checkbox","caption": "flag" ,"DataBindingField" : "Column1"},{"value": "","key": "5217067062659695142","label": "ChckIsRecovery","controlType": "checkbox","caption": "IsRecovery" ,"DataBindingField" : "Recovery"},{"value": "","key": "4696798250810445498","label": "CheckBox136","controlType": "checkbox","caption": ":بدون اجازه" ,"DataBindingField" : ""},{"value": "","key": "4656153073016457807","label": "chkEnableFullBno","controlType": "checkbox","caption": "chkEnableFullBno" ,"DataBindingField" : "res"},{"value": "","key": "5730839491973638524","label": "chkEnableNegotiate","controlType": "checkbox","caption": "chkEnableNegotiate" ,"DataBindingField" : "res"},{"value": "","key": "4729015082844702876","label": "chkEnableReasonReject","controlType": "checkbox","caption": "chkEnableReasonReject" ,"DataBindingField" : "res"},{"value": "","key": "4965374130685763840","label": "chkFullBno","controlType": "checkbox","caption": "chkFullBno" ,"DataBindingField" : "Result"},{"value": "","key": "4705819997363775719","label": "chkIsAutomat","controlType": "checkbox","caption": "chkIsAutomat" ,"DataBindingField" : "IsAutomate"},{"value": "","key": "5672081014092220427","label": "chkIsContact","controlType": "checkbox","caption": "برقرای اولین تماس صورت پذیرفت" ,"DataBindingField" : "IsContact"},{"value": "","key": "4764322014286876371","label": "chkMobile","controlType": "checkbox","caption": "chkMobile" ,"DataBindingField" : "res"},{"value": "","key": "5652786583614604673","label": "chkRepeat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5428052653233469903","label": "chkTamayolBeKharid","controlType": "checkbox","caption": "chkTamayolBeKharid" ,"DataBindingField" : "Res"},{"value": "","key": "5356258724042226763","label": "chkUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4984130768009581061","label": "chkValidNationalCode","controlType": "checkbox","caption": "chkValidNationalCode" ,"DataBindingField" : "result"},{"key": "5631453772834689748","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4716113222665995154","label": "cmbCustomerContact","value": "", "controlType": "dropdown","options":""},{"key": "5221905107454111965","label": "cmbInputPort","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5101302444275927146","label": "cmbInsuranceGroup","value": "", "controlType": "dropdown","options":""},{"key": "4911284196201931262","label": "cmbNegotiateCustomer","value": "", "controlType": "dropdown","options":""},{"value": "","key": "4921984102759853303","label": "cmbNegotiationResultForShowCmb","controlType": "checkbox","caption": "NegotiationResultForShowCmb این چک باکس از فرآیند پر میشود" ,"DataBindingField" : ""},{"key": "4741021543590103433","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5611438163255659051","label": "cmbReason","value": "", "controlType": "dropdown","options":""},{"key":"5294042534189400076" , "dataSourceName":"DataSource109" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetCntrCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5531120540019077596" , "dataSourceName":"dsAgencyName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetAgencyFullName_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5684030600896213865" , "dataSourceName":"dsCheckMandatoryReasonReject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckMandatoryReasonReject {@cmbNegotiateCustomer}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5345664692464895542" , "dataSourceName":"dsCheckMobile" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckMobileNO_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5297536759274593723" , "dataSourceName":"dsCheckTamayolBeKharid" , "controlType": "datasource",  "selectQuery" :"if ({@cmbNegotiateCustomer} = 100) select 1 As Res else  Select 0 As Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4746225051084394351" , "dataSourceName":"dsChkRepetitiosData" , "controlType": "datasource",  "selectQuery" :"SP_Cu_ChkRepetitiosData_Saleslead" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4873115086578600690" , "dataSourceName":"dsChkUserForPCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_ChkUserForPCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5585168031985867519" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadSalse_Tbl_Cu_Base_City" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4898308758059904712" , "dataSourceName":"dsCustomerContact" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_CU_Base_ContactCustomer" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4800498649893851262" , "dataSourceName":"dsEnableFullBno" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_FullBno_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4955084346430074178" , "dataSourceName":"dsEnableNegotiate" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_NegotiateCustomer_SalesLeads {@cmbCustomerContact}, (@WorkflowInstanceID)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5432991273002384941" , "dataSourceName":"dsEnableReasonReject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_ReasonReject_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4811300946089165859" , "dataSourceName":"dsExpertFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFUllName" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4978975858314261143" , "dataSourceName":"DSFlag" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5647335368169543079" , "dataSourceName":"dsFullBno" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFullBnoFormat_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4744676061921912219" , "dataSourceName":"dsFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFUllName" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4957782785385817741" , "dataSourceName":"dsGetUser" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetNextAgencyUserID_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522440895892010161" , "dataSourceName":"dsInputPort" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_InputPort" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5062634195442045899" , "dataSourceName":"dsInsuranceGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetReshteID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5655127928093179374" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log (@WorkflowInstanceID), {@ChckFlag}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5683455469442536601" , "dataSourceName":"dsNegotiateCustomer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_CU_Base_NegotiateCustomer {@cmbNegotiationResultForShowCmb}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5225505677637092669" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadSalse_Tbl_Cu_Base_Province" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4922857318310871982" , "dataSourceName":"dsReason" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_Read_Tbl_CU_Base_SalesLeadsReason {@cmbNegotiateCustomer}, {@cmbNegotiationResultForShowCmb}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5042414003054825578" , "dataSourceName":"dsSelectInput" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Selected_Tbl_Cu_Base_InputPort" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5488081060031574093" , "dataSourceName":"dtsGudID" , "controlType": "datasource",  "selectQuery" :"SP_Get_New_GUDID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4952211064534324025" , "dataSourceName":"dtsValidNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "4633134698619148725","label": "TextBox118","controlType": "textbox", "type": "" , "DataBindingField" : "grade"},{"value": "","key": "5591053147183080771","label": "TextBox128","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5193730271735176352","label": "TextBox130","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5209051614731024975","label": "TextBox133","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5505812908880962150","label": "txbBCode","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5218099495923471035","label": "txtAgency","controlType": "textbox", "type": "" , "DataBindingField" : "OldAgency"},{"value": "","key": "4857729203360183353","label": "TxtَََAgencyCode","controlType": "textbox", "type": "" , "DataBindingField" : "grade"},{"value": "","key": "5750209935965205484","label": "txtAgencyName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4968159177977063475","label": "txtCityName","controlType": "textbox", "type": "" , "DataBindingField" : "CityName"},{"value": "","key": "5676000566889795729","label": "txtContactDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4628781788341651288","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Descript"},{"value": "","key": "5715607538012291320","label": "txtExpertFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5070546843852189382","label": "txtExpertUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5124242136251439262","label": "txtFullBno","controlType": "textbox", "type": "" , "DataBindingField" : "FullBno"},{"value": "","key": "5457900391677280406","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5257933441955732096","label": "txtGrade","controlType": "textbox", "type": "" , "DataBindingField" : "Grade"},{"value": "","key": "5522297125622396319","label": "txtGuIDD","controlType": "textbox", "type": "" , "DataBindingField" : "GUDID"},{"value": "","key": "5510356059517547211","label": "txtInsuranceGroup","controlType": "textbox", "type": "" , "DataBindingField" : "InsuranceGroupTitle"},{"value": "","key": "4940331532834525606","label": "txtJobTitle","controlType": "textbox", "type": "" , "DataBindingField" : "JobTitle"},{"value": "","key": "4613639992271604626","label": "txtMobileNO","controlType": "textbox", "type": "" , "DataBindingField" : "MobileNO"},{"value": "","key": "5222312950179194682","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "","key": "5649399619552018490","label": "txtNextAgencyUserID","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5306351824122831530","label": "txtPhoneNO","controlType": "textbox", "type": "" , "DataBindingField" : "PhoneNO"},{"value": "","key": "5637360776860205377","label": "txtPolicyID","controlType": "textbox", "type": "" , "DataBindingField" : "PolicyID"},{"value": "","key": "4716761535544883575","label": "txtProvinceName","controlType": "textbox", "type": "" , "DataBindingField" : "ProvinceName"},{"value": "","key": "5398258095385330778","label": "txtResultDesc","controlType": "textbox", "type": "" , "DataBindingField" : "ResultDesc"},{"value": "","key": "4644767477812316645","label": "txtSaledReadRecoveryID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4869186778912237930","label": "txtUserFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "$CurrentUserId","key": "4639891614577493038","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5258126576438739276","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5124242136251439262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5611438163255659051","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5547138725011950588","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5124242136251439262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5611438163255659051","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5173945606304940947","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5698669280549050986","data": [{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "4651490091848373544","data": [{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم سرنخ فروش',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1096" Height="687.03333333" Background="White">
  <Canvas Width="1076" Height="662">
    <ViewLayouts>
      <ViewLayoutItem Name="ثبت" ID="5258126576438739276" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5124242136251439262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5611438163255659051" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بازماندن سرنخ" ID="5547138725011950588" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5124242136251439262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5611438163255659051" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نماینده" ID="5173945606304940947" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5681310900441283094" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4671399735978253438" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4713191385551044467" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5372234100468683109" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5398258095385330778" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه مذاکره" ID="5698669280549050986" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5672081014092220427" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5676000566889795729" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5102261507499075575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5397542361376195100" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ریکاوری" ID="4651490091848373544" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4869186778912237930" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4962505521418366642" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5566475310013326353" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5221905107454111965" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5222312950179194682" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5457900391677280406" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4613639992271604626" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4940331532834525606" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5101302444275927146" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716761535544883575" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5306351824122831530" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4968159177977063475" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5637360776860205377" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4628781788341651288" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5715607538012291320" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5149611784371480095" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5493914966483501897" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5464667694249660504" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218099495923471035" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5257933441955732096" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5750209935965205484" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4633134698619148725" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4716113222665995154" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911284196201931262" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4621335856663143943" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5442010510253248869" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4741021543590103433" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5631453772834689748" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5510356059517547211" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>4792878568360849497</ID>
        <Name>کدملی نامعتبر</Name>
        <Condition>({@chkValidNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده نامعتبر است.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4984130768009581061</ComponentID>
            <ComponentName>chkValidNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4730828091541141751</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5724268443252201508</ID>
        <Name>شماره موبایل</Name>
        <Condition>({@chkMobile.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره موبایل وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4764322014286876371</ComponentID>
            <ComponentName>chkMobile</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5394840939787810873</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5049754229731249939</ID>
        <Name>پاسخ سئوال</Name>
        <Condition>({@rbdIssued.Value} ==False) &amp;&amp; ({@rbdNotIssued.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ سئوال آیا سرنخ های ارسالی منجر به صدور بیمه نامه شده است را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4713191385551044467</ComponentID>
            <ComponentName>rbdIssued</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5520382283934575632</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5372234100468683109</ComponentID>
            <ComponentName>rbdNotIssued</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5008978144522795467</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4979721608134296974</ID>
        <Name>انتخاب نمایندگی</Name>
        <Condition>({@txtNextAgencyUserID.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا نمایندگی فعال را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5649399619552018490</ComponentID>
            <ComponentName>txtNextAgencyUserID</ComponentName>
            <ComponentDataType>BigInt</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5637319775132308681</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5294028596891222983</ID>
        <Name>برقراری تماس</Name>
        <Condition>({@rbdContact.Value} ==False) &amp;&amp; ({@rbdNotContact.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از گزینه های برقراری تماس با مشتری و یا عدم موفقیت در برقراری تماس را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5672081014092220427</ComponentID>
            <ComponentName>rbdContact</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5645271311033313167</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5397542361376195100</ComponentID>
            <ComponentName>rbdNotContact</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4797448067354130306</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5472514593980962009</ID>
        <Name>شماره بیمه نامه </Name>
        <Condition>({@chkFullBno.Value} ==True) &amp;&amp; ("{@txtFullBno.Value}" !="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره بیمه نامه وارد شده معتبر نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4965374130685763840</ComponentID>
            <ComponentName>chkFullBno</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5070253121235919481</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5124242136251439262</ComponentID>
            <ComponentName>txtFullBno</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4725498077312928378</ExpressionConditionID>
            <Operator>!=</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4796509578030704164</ID>
        <Name>اعتبار سنجی وجود کاربر برای نمایندگی</Name>
        <Condition>({@chkUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>برای نمایندگی انتخاب شده کاربری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5356258724042226763</ComponentID>
            <ComponentName>chkUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5208705192423898331</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5063519763503751230</ID>
        <Name>اعتبارسنجی درخواست تکراری</Name>
        <Condition>({@chkRepeat.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>درخواست تکراری است</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5652786583614604673</ComponentID>
            <ComponentName>chkRepeat</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5066190711739761599</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1060" Height="647" Background="#FFB9D1EA" ControlID="4949931117162381316" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="فرم سرنخ فروش">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="1032" Height="67" Background="#FFDEEFF7" ControlID="5635369506503982610" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="مشخصات اولیه">
          <Canvas>
            <cm:tzLabel Name="Lable4" Content=":نام کاربر ثبت کننده" ControlID="4911390851007965812" FontFamily="Tahoma" Canvas.Left="869.20387011000014" Canvas.Top="7.0333333333332178" />
            <cm:tzLabel Name="Lable5" Content=":تاریخ ثبت" ControlID="4923368417354934190" FontFamily="Tahoma" Canvas.Left="525.08151092999992" Canvas.Top="10.516666663333041" />
            <cm:tzLabel Name="Lable6" Content=":ساعت ثبت" ControlID="5577163815290341281" FontFamily="Tahoma" Canvas.Left="217.50497017999987" Canvas.Top="7.03333333333309" />
            <cm:PDatePicker Name="pdRegDate" Width="164" Height="20" ControlID="4962505521418366642" TabIndex="2" Canvas.Left="383.33001988" Canvas.Top="11.516666666666396" cm:DefaultValue="$CurrentDate" cm:Event="dsChkRepetitiosData" />
            <cm:TzPersianTime Name="PersianTime8" Width="51" Height="20" ControlID="5566475310013326353" Canvas.Left="157.50497017999987" Canvas.Top="10.514817708333112" cm:DefaultValue="$CurrentTime" cm:TabIndex="3" />
            <cm:tzTextBox Name="txtUserFullName" Width="184" Height="21" ControlID="4869186778912237930" Canvas.Left="676.20387011000014" Canvas.Top="10.516666666666396" cm:DataBinding="dsFullName" cm:DataBindingField="FullName" cm:TabIndex="1" />
            <cm:tzDataSource Name="dsFullName" Content="dsFullName" Width="110" Height="25" ControlID="4744676061921912219" Canvas.Left="730.43589050000014" Canvas.Top="5.5148177083331138" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFUllName">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox10" Width="1032" Height="231.51666667" Background="#FFDEEFF7" ControlID="4637653500481605498" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="84" cm:Header="اطلاعات سرنخ">
          <Canvas>
            <cm:tzLabel Name="Lable11" Content=":درگاه ورودی" ControlID="4780295965153114959" FontFamily="Tahoma" Canvas.Left="863.91632869000023" Canvas.Top="8" />
            <cm:tzLabel Name="Lable12" Content=":کد ملی" ControlID="5597536046182562526" FontFamily="Tahoma" Canvas.Left="528.03163684999993" Canvas.Top="8" />
            <cm:tzLabel Name="Lable13" Content=":نام و نام خانوادگی" ControlID="5081039359572343321" FontFamily="Tahoma" Canvas.Left="221.16830351666675" Canvas.Top="7.6679920466663845" />
            <cm:tzLabel Name="Lable14" Content=":شماره همراه" ControlID="5741060782265116303" FontFamily="Tahoma" Canvas.Left="863.91632869000023" Canvas.Top="42.151325383333358" />
            <cm:tzLabel Name="Lable15" Content=":شماره ثابت" ControlID="5271102615269864595" FontFamily="Tahoma" Canvas.Left="528.03163684999981" Canvas.Top="42.151325383333358" />
            <cm:tzLabel Name="Lable16" Content=":شغل" ControlID="5097581717557177379" FontFamily="Tahoma" Canvas.Left="221.1683035166663" Canvas.Top="41.151325383333088" />
            <cm:tzLabel Name="Lable17" Content=":رشته بیمه ای مورد تقاضا" ControlID="5518766708536857405" FontFamily="Tahoma" Canvas.Left="863.91632869" Canvas.Top="75.63465871666665" />
            <cm:tzLabel Name="Lable18" Content=":استان" ControlID="5309019411939751681" FontFamily="Tahoma" Canvas.Left="528.03163684999981" Canvas.Top="75.63465871666665" />
            <cm:tzLabel Name="Lable19" Content=":شهر" ControlID="5667253933590960516" FontFamily="Tahoma" Canvas.Left="224.03830351666619" Canvas.Top="75.634658716666777" />
            <cm:tzLookUpComboBox Name="cmbInputPort" Width="183.99999999999989" Height="22" ControlID="5221905107454111965" Canvas.Left="670.91632869000034" Canvas.Top="8.6679920499998389" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInputPort" cm:DataBindingField="InputPortID" cm:DefaultValue="$اولی" cm:SelectedDataBinding="dsSelectInput" cm:TabIndex="4" cm:tzDisplayItem="InputPortTitle" cm:tzValueItem="InputPortID" />
            <cm:tzTextBox Name="txtFullName" Width="192.00000000000011" Height="21" Canvas.Left="20.168303519999881" Canvas.Top="11.15132538" cm:ControlID="5457900391677280406" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FullName" cm:Len="100" cm:TabIndex="6" />
            <cm:tzTextBox Name="txtJobTitle" Width="192" Height="21" Canvas.Left="20.16830352" Canvas.Top="44.63465872" cm:ControlID="4940331532834525606" cm:DataBinding="dsLoadInfo" cm:DataBindingField="JobTitle" cm:Len="50" cm:TabIndex="9" />
            <cm:tzTextBox Name="txtPhoneNO" Width="184" Height="21" Canvas.Left="335.03163684999993" Canvas.Top="45.634658716666593" cm:ControlID="5306351824122831530" cm:DataBinding="dsLoadInfo" cm:DataBindingField="PhoneNO" cm:Len="11" cm:TabIndex="8" />
            <cm:tzTextBox Name="txtMobileNO" Width="184" Height="21" Canvas.Left="670.91632869000023" Canvas.Top="45.634658716666536" cm:ControlID="4613639992271604626" cm:DataBinding="dsLoadInfo" cm:DataBindingField="MobileNO" cm:Event="dsCheckMobile,dsChkRepetitiosData" cm:Len="11" cm:TabIndex="7" />
            <cm:tzLookUpComboBox Name="cmbInsuranceGroup" Width="183.99999999999989" Height="22" ControlID="5101302444275927146" Canvas.Left="670.91632869000034" Canvas.Top="78.1179920500004" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInsuranceGroup" cm:DataBindingField="BimeGroupID" cm:Event="dsChkRepetitiosData" cm:SelectedDataBinding="dsLoadInfo" cm:TabIndex="10" cm:tzDisplayItem="BimeGroupName" cm:tzValueItem="BimeGroupID" />
            <cm:tzLookUpComboBox Name="cmbProvince" Width="183.99999999999989" Height="22" Canvas.Left="335.03163685000004" Canvas.Top="78.1179920500004" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4741021543590103433" cm:DataBinding="dsProvince" cm:DataBindingField="ProvinceID" cm:DefaultValue="" cm:Event="dsCity" cm:TabIndex="11" cm:tzDisplayItem="ProvinceName" cm:tzValueItem="ProvinceID" />
            <cm:tzLookUpComboBox Name="cmbCity" Width="192.00000000000011" Height="22" Canvas.Left="20.168303519999881" Canvas.Top="77.11799205" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5631453772834689748" cm:DataBinding="dsCity" cm:DataBindingField="CityID" cm:TabIndex="12" cm:tzDisplayItem="CityName" cm:tzValueItem="CityID" />
            <cm:tzTextBox Name="txtNationalCode" Width="184" Height="21" Canvas.Left="335.03163684999993" Canvas.Top="12.151325380000003" cm:ControlID="5222312950179194682" cm:DataBinding="dsLoadInfo" cm:DataBindingField="NationalCode" cm:Event="dtsValidNationalCode" cm:Len="10" cm:TabIndex="5" />
            <cm:tzLabel Name="Lable56" Content=":توضیحات" ControlID="4693216493594900826" FontFamily="Tahoma" Canvas.Left="469.39830351666672" Canvas.Top="109.11799204666671" />
            <cm:tzTextBox Name="txtDesc" Width="455.19930699" Height="86.10000001" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="112.60132538" cm:ControlID="4628781788341651288" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Descript" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="13" />
            <cm:tzLabel Name="Lable60" Content="*" ControlID="4746483888418912443" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="317.48163685000003" Canvas.Top="7.6679920466663845" />
            <cm:tzLabel Name="Lable6162" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="572.07830351666666" Canvas.Top="8.6679920466667113" cm:ControlID="4899263888538202998" />
            <cm:tzLabel Name="Lable62" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="934.84632869000029" Canvas.Top="42.151325383333131" cm:ControlID="5593800740338150171" />
            <cm:tzLabel Name="Lable6364" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="985.9129953566669" Canvas.Top="75.634658716666763" cm:ControlID="5310934279893889285" />
            <cm:tzLabel Name="Lable64" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="564.08830351666654" Canvas.Top="75.63465871666682" cm:ControlID="5467926811511504009" />
            <cm:tzLabel Name="Lable65" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="253.09163684999948" Canvas.Top="74.634658716666664" cm:ControlID="5057669816529502200" />
            <cm:tzDataSource Name="dsInsuranceGroup" Content="dsInsuranceGroup" Width="54" Height="25" ControlID="5062634195442045899" Canvas.Left="615.91632869" Canvas.Top="86.60132538" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetReshteID" />
            <cm:tzLabel Name="Lable91" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="934.84632869000029" Canvas.Top="8.6679920499998389" cm:ControlID="5752473581802551545" />
            <cm:tzDataSource Name="dsCheckMobile" Content="dsCheckMobile" Width="110" Height="25" ControlID="5345664692464895542" Canvas.Left="195.19930698999951" Canvas.Top="173.70132539000008" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckMobileNO_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtMobileNO}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @MobileNO" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkMobile" Content="chkMobile" Width="120" Height="20" ControlID="4764322014286876371" Canvas.Left="306.1993069899994" Canvas.Top="173.70132538999997" cm:DataBinding="dsCheckMobile" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable47" Content="09122345678" Width="80.288025173333338" Height="23" ControlID="5114005208672554165" FontSize="11" Foreground="#FF3DAF69" Canvas.Left="589.62830351666662" Canvas.Top="42.45" />
            <cm:tzTextBox Name="txtProvinceName" Width="183.99999999999989" Height="21" ControlID="4716761535544883575" Canvas.Left="335.03163685000004" Canvas.Top="79.117992050000055" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ProvinceName" />
            <cm:tzTextBox Name="txtCityName" Width="191.99999999000011" Height="21" ControlID="4968159177977063475" Canvas.Left="20.168303519999881" Canvas.Top="79.11799205" cm:DataBinding="dsLoadInfo" cm:DataBindingField="CityName" />
            <cm:tzDataSource Name="dsInputPort" Content="dsInputPort" Width="110" Height="25" ControlID="5522440895892010161" Canvas.Left="727.45974794999961" Canvas.Top="0.6679920499998957" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_InputPort" />
            <cm:tzDataSource Name="dsSelectInput" Content="dsSelectInput" Width="42" Height="25" ControlID="5042414003054825578" Canvas.Left="676.45974795" Canvas.Top="0.66799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Selected_Tbl_Cu_Base_InputPort">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="110" Height="25" ControlID="5655127928093179374" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="360.48033707999991" Canvas.Top="8.15132538333323" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log (@WorkflowInstanceID), {@ChckFlag}">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsChkRepetitiosData" Content="dsChkRepetitiosData" Width="92" Height="25" ControlID="4746225051084394351" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="26" Canvas.Top="173.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_ChkRepetitiosData_Saleslead">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNO}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Mobile" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdRegDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @RegDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInsuranceGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Insurance" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkRepeat" Content="TZCheckBox" Width="37" Height="20" ControlID="5652786583614604673" Canvas.Left="118.99999999999955" Canvas.Top="178.70132539000019" cm:DataBinding="dsChkRepetitiosData" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" ControlID="5225505677637092669" Canvas.Left="360.4803370799998" Canvas.Top="75.11799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadSalse_Tbl_Cu_Base_Province" />
            <cm:tzDataSource Name="dsCity" Content="dsCity" Width="92" Height="25" ControlID="5585168031985867519" Canvas.Left="26" Canvas.Top="74.11799205" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadSalse_Tbl_Cu_Base_City">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProvince}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProvinceID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="DataSource109" Width="92" Height="25" ControlID="5294042534189400076" Canvas.Left="26" Canvas.Top="139.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetCntrCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp75}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ComplainUnitsID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txbBCode" Width="22" Height="21" ControlID="5505812908880962150" Canvas.Left="139" Canvas.Top="143.70132539000008" cm:DataBinding="DataSource109" cm:DataBindingField="result" cm:Event="dsChkUserForPCode,dsGetUser" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsChkUserForPCode" Content="dsChkUserForPCode" Width="92" Height="25" ControlID="4873115086578600690" Canvas.Left="26" Canvas.Top="113.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ChkUserForPCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txbBCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @Pcode" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkUser" Content="TZCheckBox" Width="42" Height="20" ControlID="5356258724042226763" Canvas.Left="119" Canvas.Top="118.70132538999998" cm:DataBinding="dsChkUserForPCode" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dtsGudID" Content="dtsGudID" Width="110.0000000000006" Height="25" ControlID="5488081060031574093" Canvas.Left="195.1993069899994" Canvas.Top="147.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Get_New_GUDID">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGuIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="    @GUDID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtGuIDD" Width="85" Height="21" ControlID="5522297125622396319" Canvas.Left="306.19930699" Canvas.Top="151.70132539" cm:DataBinding="dtsGudID" cm:DataBindingField="GUDID" cm:Event="dsReadData" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chkIsAutomat" Content="chkIsAutomat" Width="84.999999999999716" Height="20" ControlID="4705819997363775719" Canvas.Left="385.48033707999986" Canvas.Top="173.70132538999997" cm:DataBinding="dsLoadInfo" cm:DataBindingField="IsAutomate" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4716761535544883575#4968159177977063475#" />
            <cm:tzDataSource Name="dtsValidNationalCode" Content="dtsValidNationalCode" Width="110" Height="25" ControlID="4952211064534324025" Canvas.Left="195.19930699" Canvas.Top="117.70132539" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="     @NationalCode" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidNationalCode" Content="chkValidNationalCode" Width="149" Height="20" ControlID="4984130768009581061" FontFamily="Tahoma" Canvas.Left="314.19930698999985" Canvas.Top="122.70132538999998" cm:DataBinding="dtsValidNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtUserID" Width="55.29090766000013" Height="21" ControlID="4639891614577493038" Canvas.Left="270.74072919" Canvas.Top="79.117992050000055" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:Event="dsFullName" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtExpertUserID" Width="35.973592059999874" Height="21" ControlID="5070546843852189382" Canvas.Left="158.22571493000021" Canvas.Top="165.70132539000002" cm:DataType="BigInt" cm:Event="dsExpertFullName" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtContactDesc" Width="49.20387011" Height="21.54815104" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="609.12163685" Canvas.Top="23.086507676666535" cm:ControlID="5676000566889795729" cm:IsMulitiLine="True" cm:IsVisibleItem="False" cm:Len="2000" cm:TabIndex="26" />
            <cm:tzTextBox Name="txtResultDesc" Width="72.84333333" Height="23.23721881000003" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="594.61641462" Canvas.Top="2.4307732399999793" cm:ControlID="5398258095385330778" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ResultDesc" cm:IsMulitiLine="True" cm:IsVisibleItem="False" cm:Len="1000" cm:TabIndex="27" />
            <cm:tzDataSource Name="dsFullBno" Content="dsFullBno" Width="110" Height="25" ControlID="5647335368169543079" Canvas.Left="498.12163684999996" Canvas.Top="95.701325390000022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFullBnoFormat_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullBno}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullBno" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFullBno" Content="chkFullBno" Width="80" Height="20" ControlID="4965374130685763840" Canvas.Left="587.45974795000006" Canvas.Top="65.601325379999992" cm:DataBinding="dsFullBno" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable117118" Content=":شماره بیمه نامه قبلی" Width="128" Height="23" ControlID="5580177196756927886" FontFamily="Tahoma" Canvas.Left="863.91632869" Canvas.Top="112.70132538999985" />
            <cm:tzTextBox Name="txtPolicyID" Width="183.99999999999994" Height="21" ControlID="5637360776860205377" Canvas.Left="670.91632869" Canvas.Top="112.60132538" cm:DataBinding="dsLoadInfo" cm:DataBindingField="PolicyID" />
            <cm:TZCheckBox Name="ChckIsRecovery" Content="IsRecovery" Width="120" Height="20" ControlID="5217067062659695142" FontFamily="Tahoma" Canvas.Left="392.19930698999997" Canvas.Top="152.70132539000002" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Recovery" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
            <cm:tzTextBox Name="txtInsuranceGroup" Width="72.45658074" Height="21" ControlID="5510356059517547211" Canvas.Left="597.45974794999984" Canvas.Top="112.60132537999999" cm:DataBinding="dsLoadInfo" cm:DataBindingField="InsuranceGroupTitle" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="TextBox128" Width="184.99666667" Height="21" ControlID="5591053147183080771" Canvas.Left="670.91632869" Canvas.Top="143.70132539" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable129" Content=":شعبه سرپرستی" Width="120" Height="23" ControlID="5439351209992643449" FontFamily="Tahoma" Canvas.Left="864.91299535666667" Canvas.Top="141.70132539000025" />
            <cm:tzTextBox Name="TextBox130" Width="86.884691839999732" Height="21" ControlID="5193730271735176352" Canvas.Left="484.1936116766671" Canvas.Top="143.70132539000002" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable131" Content=":کد بیمه گذار" Width="120" Height="23" ControlID="5609533060540588240" FontFamily="Tahoma" Canvas.Left="580.07830351666678" Canvas.Top="141.70132539000014" cm:IsEnableItem="True" />
            <cm:tzLabel Name="Lable132" Content=":کد نمایندگی" Width="120" Height="23" ControlID="5634916278606005639" FontFamily="Tahoma" Canvas.Left="864.91299535666667" Canvas.Top="170.70132539000002" />
            <cm:tzTextBox Name="TextBox133" Width="120" Height="21" ControlID="5209051614731024975" Canvas.Left="735.91299535666656" Canvas.Top="172.70132539000002" cm:IsEnableItem="False" />
            <cm:TZCheckBox Name="CheckBox136" Content=":بدون اجازه" Width="91.543419260000064" Height="20" ControlID="4696798250810445498" FontFamily="Tahoma" Canvas.Left="553.82169954" Canvas.Top="178.70132539000025" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox29" Width="1032" Height="101" Background="#FFDEEFF7" ControlID="4658722945562441415" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="324.51666667" cm:Header="اختصاص نمایندگی فعال">
          <Canvas>
            <cm:tzLabel Name="Lable30" Content=":نام کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="870.20387011000025" Canvas.Top="9.03333333333319" cm:ControlID="5208206632733532214" />
            <cm:tzTextBox Name="txtExpertFullName" Width="184" Height="21" Canvas.Left="678.73476899" Canvas.Top="12.516666666666424" cm:ControlID="5715607538012291320" cm:DataBinding="dsExpertFullName" cm:DataBindingField="FullName" cm:TabIndex="14" />
            <cm:tzLabel Name="Lable32" Content=":تاریخ و ساعت ثبت" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="534.08151092999992" Canvas.Top="12.516666666666367" cm:ControlID="5042157930154027558" />
            <cm:TzPersianTime Name="ptExpertTime" Width="51" Height="20" Canvas.Left="328.50497017999987" Canvas.Top="12.514817708333112" cm:ControlID="5493914966483501897" cm:TabIndex="16" />
            <cm:PDatePicker Name="pdExpertDate" Width="159.57654075" Height="20" TabIndex="15" Canvas.Left="388.50497017999987" Canvas.Top="12.514817708333112" cm:ControlID="5149611784371480095" />
            <cm:tzLabel Name="Lable52" Content=":نمایندگی / شعبه" ControlID="5302471437215963603" FontFamily="Tahoma" Canvas.Left="179.24586912000007" Canvas.Top="4.21872658666679" />
            <cm:tzTextBox Name="txtAgency" Width="184" Height="21" Canvas.Left="678.73476899" Canvas.Top="49.702059920000124" cm:ControlID="5218099495923471035" cm:DataBinding="dsGetUser" cm:DataBindingField="OldAgency" cm:IsVisibleItem="True" cm:TabIndex="18" />
            <cm:tzLabel Name="Lable5960" Content=":نمایندگی قبلی" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="871.73476899" Canvas.Top="46.2187265899999" cm:ControlID="5515006489273191870" />
            <cm:tzLabel Name="Lable6667" Content="*" ControlID="5637558461490511039" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="281.26586912" Canvas.Top="4.2187265866667332" />
            <cm:tzLabel Name="Lable7172" Content=":رتبه نماینده" ControlID="5230592037230222122" FontFamily="Tahoma" Canvas.Left="535.61240981" Canvas.Top="46.2187265899999" />
            <cm:tzTextBox Name="txtGrade" Width="194" Height="21" Canvas.Left="327.61240980999992" Canvas.Top="49.702059920000124" cm:ControlID="5257933441955732096" cm:DataBinding="dsGetUser" cm:DataBindingField="Grade" cm:IsVisibleItem="True" cm:TabIndex="19" />
            <cm:TZLookUp Name="LookUp75" ControlID="5464667694249660504" TabIndex="17" Canvas.Left="3.2458691199999521" Canvas.Top="5.7020599200001119" cm:Event="DataSource109,dsGetUser">
              <cm:TZLookUp.LoadFormValue>
                <cm:TZLookupLoadFromBrowse DataGridId="5711210534124133436" DisplayMemberColumn="BranchName" FormID="202" ValueMemberColumn="ComplainUnitsID" />
              </cm:TZLookUp.LoadFormValue>
            </cm:TZLookUp>
            <cm:tzTextBox Name="txtNextAgencyUserID" Width="120" Height="21" ControlID="5649399619552018490" Canvas.Left="177.81586911999995" Canvas.Top="49.702059920000124" cm:DataBinding="dsGetUser" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetUser" Content="dsGetUser" Width="110" Height="25" Background="#FFDDDDDD" ControlID="4957782785385817741" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="693.3407234976421" Canvas.Top="45.702059920000181" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetNextAgencyUserID_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txbBCode}" IsOutputParameter="False" ParameterType="int" SpParamName="   @ComplainUnitsID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsExpertFullName" Content="dsExpertFullName" Width="110" Height="25" Canvas.Left="711.34072349764222" Canvas.Top="3.7020599200000106" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4811300946089165859" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFUllName">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtExpertUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox55" Width="1032" Height="185" Background="#FFDEEFF7" ControlID="4858369204428413871" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="434.51666667" cm:Header="نتایج بررسی">
          <Canvas>
            <cm:tzLabel Name="Lable57" Content=":نام نماینده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="878.2038701099998" Canvas.Top="12.7224011116664" cm:ControlID="4636660323316460361" />
            <cm:tzTextBox Name="txtAgencyName" Width="273" Height="21" Canvas.Left="596.20387011" Canvas.Top="16.84307116" cm:ControlID="5750209935965205484" cm:DataBinding="dsAgencyName" cm:DataBindingField="FullName" cm:TabIndex="20" />
            <cm:tzLabel Name="Lable63" Content=":تاریخ و ساعت تماس" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="229.03852597000005" Canvas.Top="6.5499999899996162" cm:ControlID="4690449152826350818" />
            <cm:PDatePicker Name="pdContactDate" Width="156.57654075" Height="20" TabIndex="24" Canvas.Left="90.911985220000048" Canvas.Top="9.0333333233330784" cm:ControlID="4621335856663143943" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ContactDate" />
            <cm:TzPersianTime Name="pdContactTime" Width="51" Height="20" Canvas.Left="30.911985216666977" Canvas.Top="7.8412221916662581" cm:ControlID="5442010510253248869" cm:DataBinding="dsLoadInfo" cm:DataBindingField="ContactTime" cm:TabIndex="25" />
            <cm:tzDataSource Name="dsAgencyName" Content="dsAgencyName" Width="110" Height="25" ControlID="5531120540019077596" Canvas.Left="710.3538276099996" Canvas.Top="14.549999989999833" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetAgencyFullName_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLookUpComboBox Name="cmbCustomerContact" Width="273" Height="22" ControlID="4716113222665995154" Canvas.Left="596.20387011" Canvas.Top="50.03333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCustomerContact" cm:DataType="Int" cm:Event="dsEnableNegotiate,dsChkContactCustomer" cm:IsEnableItem="True" cm:tzDisplayItem="ContactCustomer" cm:tzValueItem="ContactCustomerID" />
            <cm:tzLabel Name="Lable113" Content="*" Width="NaN" Height="NaN" ControlID="5686002781281687188" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="510.8566666700001" Canvas.Top="40.549999989999719" />
            <cm:tzLookUpComboBox Name="cmbNegotiateCustomer" Width="363.11333333666676" Height="22" ControlID="4911284196201931262" Canvas.Left="8" Canvas.Top="43.03333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsNegotiateCustomer" cm:DataType="Int" cm:Event="dsEnableReasonReject,dsEnableFullBno,dsReason,DSFlag,dsCheckTamayolBeKharid,dsCheckMandatoryReasonReject" cm:IsEnableItem="True" cm:tzDisplayItem="NegotiateCustomer" cm:tzValueItem="NegotiateCustomerID" />
            <cm:tzDataSource Name="dsCustomerContact" Content="dsCustomerContact" Width="110" Height="25" ControlID="4898308758059904712" Canvas.Left="710.35382760999937" Canvas.Top="47.033333329999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_CU_Base_ContactCustomer" />
            <cm:tzLabel Name="Lable71" Content=":شماره بیمه نامه" ControlID="5174069206793353966" Canvas.Left="878.2038701099998" Canvas.Top="81.033333333333317" />
            <cm:tzTextBox Name="txtFullBno" Width="273" Height="21" Canvas.Left="596.20387011" Canvas.Top="84.51666667" cm:ControlID="5124242136251439262" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FullBno" cm:Event="dsFullBno" cm:IsEnableItem="False" cm:TabIndex="30" />
            <cm:tzLabel Name="Lable73" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="1005.2805367766665" Canvas.Top="47.549999996666656" cm:ControlID="4880138763828235306" />
            <cm:tzLabel Name="Lable9192" Content="......./......-....../....../......." Width="167" Height="23" ControlID="5594442565448197525" Foreground="#FF0FBC2C" Canvas.Left="687.73118609999983" Canvas.Top="106.51666666666665" />
            <cm:tzLabel Name="Lable92" Content="1399/100-100/460/143086" Width="167" Height="23" Foreground="#FF0FBC2C" Canvas.Left="687.73118609999983" Canvas.Top="130.51666666666665" cm:ControlID="5245372461334569284" />
            <cm:tzLookUpComboBox Name="cmbReason" Width="362.66666667" Height="22" ControlID="5611438163255659051" Canvas.Left="8" Canvas.Top="76.51666667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsReason" cm:DataType="Int" cm:Event="DataSource122" cm:IsEnableItem="True" cm:tzDisplayItem="SalesLeadsReason" cm:tzValueItem="SalesLeadsReasonID" />
            <cm:tzLabel Name="Lable97" Content=":دلیل عدم خرید" Width="NaN" Height="NaN" Foreground="#FF000000" Canvas.Left="379.66666667333357" Canvas.Top="74.033333323333068" cm:ControlID="5352913077725881877" />
            <cm:tzLabel Name="Lable98" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="467.85666667333362" Canvas.Top="74.033333323333068" cm:ControlID="5200536210186389679" />
            <cm:tzDataSource Name="dsNegotiateCustomer" Content="dsNegotiateCustomer" Width="106.45987407999996" Height="25" ControlID="5683455469442536601" Canvas.Left="181.54012592" Canvas.Top="40.03333332" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Read_Tbl_CU_Base_NegotiateCustomer {@cmbNegotiationResultForShowCmb}" />
            <cm:tzDataSource Name="dsReason" Content="dsReason" Width="110" Height="25" ControlID="4922857318310871982" Canvas.Left="178" Canvas.Top="73.516666656666416" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:TabIndex="2147483646" cm:tzSelectQuery="exec Sp_Cu_Read_Tbl_CU_Base_SalesLeadsReason {@cmbNegotiateCustomer}, {@cmbNegotiationResultForShowCmb}" />
            <cm:tzLabel Name="Lable110111" Content=":برقراری تماس با مشتری" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="878.2038701099998" Canvas.Top="47.549999996666671" cm:ControlID="5113524035153885316" />
            <cm:tzLabel Name="Lable110111112" Content=":نتیجه مذاکره با مشتری" Width="NaN" Height="NaN" Foreground="#FF000000" Canvas.Left="380.11333333666676" Canvas.Top="40.549999989999833" cm:ControlID="5333830433755019940" />
            <cm:tzDataSource Name="dsEnableNegotiate" Content="dsEnableNegotiate" Width="110" Height="25" ControlID="4955084346430074178" Canvas.Left="137" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_Enable_NegotiateCustomer_SalesLeads {@cmbCustomerContact}, (@WorkflowInstanceID)">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbCustomerContact}" IsOutputParameter="False" ParameterType="int" SpParamName=" @CustomerContactID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableNegotiate" Content="chkEnableNegotiate" Width="120" Height="20" ControlID="5730839491973638524" Canvas.Left="137" Canvas.Top="107.51666666666665" cm:DataBinding="dsEnableNegotiate" cm:DataBindingField="res" cm:FCVCol="4911284196201931262#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4911284196201931262#" cm:TMCol="4911284196201931262#" cm:TVCol="" />
            <cm:tzDataSource Name="dsEnableReasonReject" Content="dsEnableReasonReject" Width="110" Height="25" ControlID="5432991273002384941" Canvas.Left="8" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Enable_ReasonReject_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbNegotiateCustomer}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NegotiateCustomerID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableReasonReject" Content="chkEnableReasonReject" Width="120" Height="20" ControlID="4729015082844702876" Canvas.Left="8" Canvas.Top="107.51666666666665" cm:DataBinding="dsEnableReasonReject" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5611438163255659051#" cm:TMCol="5611438163255659051#" cm:TVCol="" />
            <cm:tzDataSource Name="dsEnableFullBno" Content="dsEnableFullBno" Width="110" Height="25" Canvas.Left="278.11666667000003" Canvas.Top="128.51666666666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4800498649893851262" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Enable_FullBno_SalesLeads">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbNegotiateCustomer}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NegotiateCustomerID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkEnableFullBno" Content="chkEnableFullBno" Width="120" Height="20" Canvas.Left="278.11666667000003" Canvas.Top="107.51666666666665" cm:ControlID="4656153073016457807" cm:DataBinding="dsEnableFullBno" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5124242136251439262#" cm:TMCol="5124242136251439262#" cm:TVCol="" />
            <cm:tzTextBox Name="TxtَََAgencyCode" Width="64" Height="21" ControlID="4857729203360183353" Canvas.Left="588.19922630999986" Canvas.Top="124.76278119000017" cm:DataBinding="dsAgencyName" cm:DataBindingField="grade" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable117" Content=":رتبه" Width="72" Height="23" ControlID="5385852390089974874" FontFamily="Tahoma" Canvas.Left="431.68592964" Canvas.Top="5.84307115" />
            <cm:tzTextBox Name="TextBox118" Width="57" Height="21" ControlID="4633134698619148725" Canvas.Left="365.68592964000015" Canvas.Top="7.84307114999956" cm:DataBinding="dsAgencyName" cm:DataBindingField="grade" />
            <cm:tzTextBox Name="txtSaledReadRecoveryID" Width="120" Height="21" ControlID="4644767477812316645" Canvas.Left="459.1992263099994" Canvas.Top="124.76278118999994" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="DSFlag" Content="DSFlag" Width="110" Height="25" ControlID="4978975858314261143" Canvas.Left="417.40666667000028" Canvas.Top="104.51666666666664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
            <cm:TZCheckBox Name="ChckFlag" Content="flag" Width="85.792559639999354" Height="20" ControlID="5347937603121876258" FontFamily="Tahoma" Canvas.Left="417.89337000000057" Canvas.Top="133.76278118999994" cm:DataBinding="DSFlag" cm:DataBindingField="Column1" cm:Event="dsLoadInfo" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="cmbNegotiationResultForShowCmb" Content="NegotiationResultForShowCmb این چک باکس از فرآیند پر میشود" Width="40" Height="20" ControlID="4921984102759853303" Canvas.Left="30.911985216666949" Canvas.Top="26.549999996666656" cm:Event="dsNegotiateCustomer" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5611438163255659051#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsCheckMandatoryReasonReject" Content="dsCheckMandatoryReasonReject" Width="110" Height="25" ControlID="5684030600896213865" Canvas.Left="485.20387011" Canvas.Top="58.516666670000063" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckMandatoryReasonReject {@cmbNegotiateCustomer}" />
            <cm:TZCheckBox Name="chbCheckMandatoryReasonReject" Content="" Width="44.202796560000195" Height="20" ControlID="5350182045290888872" FontFamily="Tahoma" Canvas.Left="483.20387011" Canvas.Top="83.51666667" cm:DataBinding="dsCheckMandatoryReasonReject" cm:DataBindingField="Ejbari" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5611438163255659051#" cm:TVCol="" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TZCheckBox Name="chkIsContact" Content="برقرای اولین تماس صورت پذیرفت" ControlID="5672081014092220427" FontFamily="Tahoma" Canvas.Left="541.61240980999992" Canvas.Top="335.60371988884856" cm:DataBinding="dsLoadInfo" cm:DataBindingField="IsContact" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TabIndex="23" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:tzDataSource Name="dsCheckTamayolBeKharid" Content="dsCheckTamayolBeKharid" Width="110" Height="25" ControlID="5297536759274593723" Canvas.Left="162" Canvas.Top="426.51666667000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if ({@cmbNegotiateCustomer} = 100) select 1 As Res else  Select 0 As Res" />
        <cm:TZCheckBox Name="chkTamayolBeKharid" Content="chkTamayolBeKharid" Width="23" Height="20" ControlID="5428052653233469903" FontFamily="Tahoma" Canvas.Left="291" Canvas.Top="426.51666667" cm:DataBinding="dsCheckTamayolBeKharid" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4628781788341651288#5464667694249660504#" cm:TMCol="" cm:TVCol="" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1404/01/17 12:42:08', GUID = '80e9fd8c-c7d0-4dda-8d8d-230214f7a1f0', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "198" ,"components": [{"value": "","key": "5350182045290888872","label": "chbCheckMandatoryReasonReject","controlType": "checkbox","caption": "" ,"DataBindingField" : "Ejbari"},{"value": "","key": "5347937603121876258","label": "ChckFlag","controlType": "checkbox","caption": "flag" ,"DataBindingField" : "Column1"},{"value": "","key": "5217067062659695142","label": "ChckIsRecovery","controlType": "checkbox","caption": "IsRecovery" ,"DataBindingField" : "Recovery"},{"value": "","key": "4696798250810445498","label": "CheckBox136","controlType": "checkbox","caption": ":بدون اجازه" ,"DataBindingField" : ""},{"value": "","key": "4656153073016457807","label": "chkEnableFullBno","controlType": "checkbox","caption": "chkEnableFullBno" ,"DataBindingField" : "res"},{"value": "","key": "5730839491973638524","label": "chkEnableNegotiate","controlType": "checkbox","caption": "chkEnableNegotiate" ,"DataBindingField" : "res"},{"value": "","key": "4729015082844702876","label": "chkEnableReasonReject","controlType": "checkbox","caption": "chkEnableReasonReject" ,"DataBindingField" : "res"},{"value": "","key": "4965374130685763840","label": "chkFullBno","controlType": "checkbox","caption": "chkFullBno" ,"DataBindingField" : "Result"},{"value": "","key": "4705819997363775719","label": "chkIsAutomat","controlType": "checkbox","caption": "chkIsAutomat" ,"DataBindingField" : "IsAutomate"},{"value": "","key": "5672081014092220427","label": "chkIsContact","controlType": "checkbox","caption": "برقرای اولین تماس صورت پذیرفت" ,"DataBindingField" : "IsContact"},{"value": "","key": "4764322014286876371","label": "chkMobile","controlType": "checkbox","caption": "chkMobile" ,"DataBindingField" : "res"},{"value": "","key": "5652786583614604673","label": "chkRepeat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5428052653233469903","label": "chkTamayolBeKharid","controlType": "checkbox","caption": "chkTamayolBeKharid" ,"DataBindingField" : "Res"},{"value": "","key": "5356258724042226763","label": "chkUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4984130768009581061","label": "chkValidNationalCode","controlType": "checkbox","caption": "chkValidNationalCode" ,"DataBindingField" : "result"},{"key": "5631453772834689748","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4716113222665995154","label": "cmbCustomerContact","value": "", "controlType": "dropdown","options":""},{"key": "5221905107454111965","label": "cmbInputPort","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5101302444275927146","label": "cmbInsuranceGroup","value": "", "controlType": "dropdown","options":""},{"key": "4911284196201931262","label": "cmbNegotiateCustomer","value": "", "controlType": "dropdown","options":""},{"value": "","key": "4921984102759853303","label": "cmbNegotiationResultForShowCmb","controlType": "checkbox","caption": "NegotiationResultForShowCmb این چک باکس از فرآیند پر میشود" ,"DataBindingField" : ""},{"key": "4741021543590103433","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5611438163255659051","label": "cmbReason","value": "", "controlType": "dropdown","options":""},{"key":"5294042534189400076" , "dataSourceName":"DataSource109" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetCntrCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5531120540019077596" , "dataSourceName":"dsAgencyName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetAgencyFullName_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5684030600896213865" , "dataSourceName":"dsCheckMandatoryReasonReject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckMandatoryReasonReject {@cmbNegotiateCustomer}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5345664692464895542" , "dataSourceName":"dsCheckMobile" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckMobileNO_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5297536759274593723" , "dataSourceName":"dsCheckTamayolBeKharid" , "controlType": "datasource",  "selectQuery" :"if ({@cmbNegotiateCustomer} = 100) select 1 As Res else  Select 0 As Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4746225051084394351" , "dataSourceName":"dsChkRepetitiosData" , "controlType": "datasource",  "selectQuery" :"SP_Cu_ChkRepetitiosData_Saleslead" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4873115086578600690" , "dataSourceName":"dsChkUserForPCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_ChkUserForPCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5585168031985867519" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadSalse_Tbl_Cu_Base_City" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4898308758059904712" , "dataSourceName":"dsCustomerContact" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_CU_Base_ContactCustomer" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4800498649893851262" , "dataSourceName":"dsEnableFullBno" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_FullBno_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4955084346430074178" , "dataSourceName":"dsEnableNegotiate" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_NegotiateCustomer_SalesLeads {@cmbCustomerContact}, (@WorkflowInstanceID)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5432991273002384941" , "dataSourceName":"dsEnableReasonReject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Enable_ReasonReject_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4811300946089165859" , "dataSourceName":"dsExpertFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFUllName" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4978975858314261143" , "dataSourceName":"DSFlag" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5647335368169543079" , "dataSourceName":"dsFullBno" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFullBnoFormat_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4744676061921912219" , "dataSourceName":"dsFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFUllName" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4957782785385817741" , "dataSourceName":"dsGetUser" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetNextAgencyUserID_SalesLeads" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522440895892010161" , "dataSourceName":"dsInputPort" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_InputPort" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5062634195442045899" , "dataSourceName":"dsInsuranceGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetReshteID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5655127928093179374" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log (@WorkflowInstanceID), {@ChckFlag}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5683455469442536601" , "dataSourceName":"dsNegotiateCustomer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_CU_Base_NegotiateCustomer {@cmbNegotiationResultForShowCmb}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5225505677637092669" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadSalse_Tbl_Cu_Base_Province" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4922857318310871982" , "dataSourceName":"dsReason" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_Read_Tbl_CU_Base_SalesLeadsReason {@cmbNegotiateCustomer}, {@cmbNegotiationResultForShowCmb}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5042414003054825578" , "dataSourceName":"dsSelectInput" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Selected_Tbl_Cu_Base_InputPort" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5488081060031574093" , "dataSourceName":"dtsGudID" , "controlType": "datasource",  "selectQuery" :"SP_Get_New_GUDID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4952211064534324025" , "dataSourceName":"dtsValidNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "4633134698619148725","label": "TextBox118","controlType": "textbox", "type": "" , "DataBindingField" : "grade"},{"value": "","key": "5591053147183080771","label": "TextBox128","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5193730271735176352","label": "TextBox130","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5209051614731024975","label": "TextBox133","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5505812908880962150","label": "txbBCode","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5218099495923471035","label": "txtAgency","controlType": "textbox", "type": "" , "DataBindingField" : "OldAgency"},{"value": "","key": "4857729203360183353","label": "TxtَََAgencyCode","controlType": "textbox", "type": "" , "DataBindingField" : "grade"},{"value": "","key": "5750209935965205484","label": "txtAgencyName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4968159177977063475","label": "txtCityName","controlType": "textbox", "type": "" , "DataBindingField" : "CityName"},{"value": "","key": "5676000566889795729","label": "txtContactDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4628781788341651288","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Descript"},{"value": "","key": "5715607538012291320","label": "txtExpertFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5070546843852189382","label": "txtExpertUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5124242136251439262","label": "txtFullBno","controlType": "textbox", "type": "" , "DataBindingField" : "FullBno"},{"value": "","key": "5457900391677280406","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5257933441955732096","label": "txtGrade","controlType": "textbox", "type": "" , "DataBindingField" : "Grade"},{"value": "","key": "5522297125622396319","label": "txtGuIDD","controlType": "textbox", "type": "" , "DataBindingField" : "GUDID"},{"value": "","key": "5510356059517547211","label": "txtInsuranceGroup","controlType": "textbox", "type": "" , "DataBindingField" : "InsuranceGroupTitle"},{"value": "","key": "4940331532834525606","label": "txtJobTitle","controlType": "textbox", "type": "" , "DataBindingField" : "JobTitle"},{"value": "","key": "4613639992271604626","label": "txtMobileNO","controlType": "textbox", "type": "" , "DataBindingField" : "MobileNO"},{"value": "","key": "5222312950179194682","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "","key": "5649399619552018490","label": "txtNextAgencyUserID","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5306351824122831530","label": "txtPhoneNO","controlType": "textbox", "type": "" , "DataBindingField" : "PhoneNO"},{"value": "","key": "5637360776860205377","label": "txtPolicyID","controlType": "textbox", "type": "" , "DataBindingField" : "PolicyID"},{"value": "","key": "4716761535544883575","label": "txtProvinceName","controlType": "textbox", "type": "" , "DataBindingField" : "ProvinceName"},{"value": "","key": "5398258095385330778","label": "txtResultDesc","controlType": "textbox", "type": "" , "DataBindingField" : "ResultDesc"},{"value": "","key": "4644767477812316645","label": "txtSaledReadRecoveryID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4869186778912237930","label": "txtUserFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "$CurrentUserId","key": "4639891614577493038","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5258126576438739276","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5124242136251439262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5611438163255659051","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5547138725011950588","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5124242136251439262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5611438163255659051","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5173945606304940947","data": [{"key": "5681310900441283094","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4671399735978253438","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4713191385551044467","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5372234100468683109","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5398258095385330778","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5698669280549050986","data": [{"key": "5672081014092220427","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5676000566889795729","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5102261507499075575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5397542361376195100","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "4651490091848373544","data": [{"key": "4869186778912237930","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4962505521418366642","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5566475310013326353","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5221905107454111965","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5222312950179194682","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5457900391677280406","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4613639992271604626","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4940331532834525606","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5101302444275927146","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716761535544883575","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5306351824122831530","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4968159177977063475","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5637360776860205377","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4628781788341651288","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5715607538012291320","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5149611784371480095","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5493914966483501897","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5464667694249660504","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218099495923471035","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5257933441955732096","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5750209935965205484","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4633134698619148725","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4716113222665995154","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911284196201931262","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4621335856663143943","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5442010510253248869","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4741021543590103433","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5631453772834689748","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5510356059517547211","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',DefaultCulture = NULL  WHERE FormId = 198
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm198') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm198] ( [frm198Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4869186778912237930]  [nvarchar] ( 50) NULL , [Col_5457900391677280406]  [nvarchar] ( 100) NULL , [Col_4940331532834525606]  [nvarchar] ( 50) NULL , [Col_5306351824122831530]  [nvarchar] ( 11) NULL , [Col_4613639992271604626]  [nvarchar] ( 11) NULL , [Col_5222312950179194682]  [nvarchar] ( 10) NULL , [Col_5221905107454111965]  [nvarchar] ( 50) NULL , [Col_5101302444275927146]  [nvarchar] ( 50) NULL , [Col_4741021543590103433]  [nvarchar] ( 50) NULL , [Col_5631453772834689748]  [nvarchar] ( 50) NULL , [Col_4962505521418366642]  [nvarchar] ( 10) NULL , [Col_5566475310013326353]  [nvarchar] ( 5) NULL , [Col_5715607538012291320]  [nvarchar] ( 50) NULL , [Col_5149611784371480095]  [nvarchar] ( 10) NULL , [Col_5493914966483501897]  [nvarchar] ( 5) NULL , [Col_5750209935965205484]  [nvarchar] ( 50) NULL , [Col_5676000566889795729]  [nvarchar] ( 2000) NULL , [Col_4621335856663143943]  [nvarchar] ( 10) NULL , [Col_5442010510253248869]  [nvarchar] ( 5) NULL , [Col_5124242136251439262]  [nvarchar] ( 50) NULL , [Col_5398258095385330778]  [nvarchar] ( 1000) NULL , [Col_4628781788341651288]  [nvarchar] ( 2000) NULL , [Col_5672081014092220427]  [bit] NULL , [Col_5218099495923471035]  [nvarchar] ( 50) NULL , [Col_5257933441955732096]  [nvarchar] ( 50) NULL , [Col_4713191385551044467]  [bit] NULL , [Col_5372234100468683109]  [bit] NULL , [Col_4639891614577493038]  [bigint] NULL , [Col_5464667694249660504]  [nvarchar] ( 50) NULL , [Col_5070546843852189382]  [bigint] NULL , [Col_4984130768009581061]  [bit] NULL , [Col_5522297125622396319]  [nvarchar] ( 50) NULL , [Col_4764322014286876371]  [bit] NULL , [Col_5649399619552018490]  [bigint] NULL , [Col_4965374130685763840]  [bit] NULL , [Col_4716761535544883575]  [nvarchar] ( 50) NULL , [Col_4968159177977063475]  [nvarchar] ( 50) NULL , [Col_4705819997363775719]  [bit] NULL , [Col_4716113222665995154]  [int] NULL , [Col_4911284196201931262]  [int] NULL , [Col_5611438163255659051]  [int] NULL , [Col_5397542361376195100]  [bit] NULL , [Col_5102261507499075575]  [bit] NULL , [Col_5730839491973638524]  [bit] NULL , [Col_4729015082844702876]  [bit] NULL , [Col_4656153073016457807]  [bit] NULL , [Col_5098023129115050578]  [bit] NULL , [Col_5505812908880962150]  [nvarchar] ( 50) NULL , [Col_5356258724042226763]  [bit] NULL , [Col_5175159809507122479]  [nvarchar] ( 50) NULL , [Col_5710387481358620417]  [bit] NULL , [Col_5628529865448661409]  [bit] NULL , [Col_4857729203360183353]  [nvarchar] ( 50) NULL , [Col_5652786583614604673]  [bit] NULL , [Col_4633134698619148725]  [nvarchar] ( 50) NULL , [Col_4644767477812316645]  [bigint] NULL , [Col_5637360776860205377]  [nvarchar] ( 50) NULL , [Col_5347937603121876258]  [bit] NULL , [Col_5217067062659695142]  [bit] NULL , [Col_5510356059517547211]  [nvarchar] ( 50) NULL , [Col_5428052653233469903]  [bit] NULL , [Col_4921984102759853303]  [bit] NULL , [Col_5350182045290888872]  [bit] NULL , [Col_5591053147183080771]  [nvarchar] ( 50) NULL , [Col_5193730271735176352]  [nvarchar] ( 50) NULL , [Col_5209051614731024975]  [nvarchar] ( 50) NULL , [Col_4696798250810445498]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm198Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'frm198Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD frm198Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4869186778912237930' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4869186778912237930 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5457900391677280406' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5457900391677280406 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4940331532834525606' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4940331532834525606 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5306351824122831530' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5306351824122831530 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4613639992271604626' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4613639992271604626 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5222312950179194682' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5222312950179194682 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5221905107454111965' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5221905107454111965 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5101302444275927146' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5101302444275927146 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4741021543590103433' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4741021543590103433 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5631453772834689748' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5631453772834689748 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4962505521418366642' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4962505521418366642 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5566475310013326353' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5566475310013326353 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5715607538012291320' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5715607538012291320 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5149611784371480095' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5149611784371480095 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5493914966483501897' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5493914966483501897 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5750209935965205484' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5750209935965205484 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5676000566889795729' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5676000566889795729 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4621335856663143943' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4621335856663143943 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5442010510253248869' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5442010510253248869 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5124242136251439262' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5124242136251439262 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5398258095385330778' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5398258095385330778 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4628781788341651288' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4628781788341651288 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5672081014092220427' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5672081014092220427 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5218099495923471035' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5218099495923471035 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5257933441955732096' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5257933441955732096 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4713191385551044467' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4713191385551044467 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5372234100468683109' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5372234100468683109 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4639891614577493038' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4639891614577493038 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5464667694249660504' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5464667694249660504 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5070546843852189382' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5070546843852189382 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4984130768009581061' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4984130768009581061 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5522297125622396319' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5522297125622396319 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4764322014286876371' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4764322014286876371 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5649399619552018490' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5649399619552018490 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4965374130685763840' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4965374130685763840 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4716761535544883575' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4716761535544883575 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4968159177977063475' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4968159177977063475 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4705819997363775719' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4705819997363775719 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4716113222665995154' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4716113222665995154 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4911284196201931262' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4911284196201931262 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5611438163255659051' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5611438163255659051 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5397542361376195100' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5397542361376195100 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5102261507499075575' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5102261507499075575 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5730839491973638524' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5730839491973638524 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4729015082844702876' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4729015082844702876 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4656153073016457807' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4656153073016457807 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5098023129115050578' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5098023129115050578 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5505812908880962150' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5505812908880962150 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5356258724042226763' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5356258724042226763 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5175159809507122479' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5175159809507122479 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5710387481358620417' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5710387481358620417 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5628529865448661409' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5628529865448661409 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4857729203360183353' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4857729203360183353 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5652786583614604673' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5652786583614604673 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4633134698619148725' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4633134698619148725 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4644767477812316645' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4644767477812316645 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5637360776860205377' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5637360776860205377 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5347937603121876258' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5347937603121876258 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5217067062659695142' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5217067062659695142 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5510356059517547211' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5510356059517547211 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5428052653233469903' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5428052653233469903 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4921984102759853303' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4921984102759853303 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5350182045290888872' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5350182045290888872 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5591053147183080771' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5591053147183080771 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5193730271735176352' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5193730271735176352 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_5209051614731024975' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_5209051614731024975 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm198' AND COLUMN_NAME = 'Col_4696798250810445498' )  BEGIN ALTER TABLE [dbo].[Tbl_frm198] ADD Col_4696798250810445498 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm198]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm198
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm198] ( @PKFormId as bigint OUTPUT ,  @Col_4869186778912237930 AS nvarchar(50),  @Col_5457900391677280406 AS nvarchar(100),  @Col_4940331532834525606 AS nvarchar(50),  @Col_5306351824122831530 AS nvarchar(11),  @Col_4613639992271604626 AS nvarchar(11),  @Col_5222312950179194682 AS nvarchar(10),  @Col_5221905107454111965 AS nvarchar(50),  @Col_5101302444275927146 AS nvarchar(50),  @Col_4741021543590103433 AS nvarchar(50),  @Col_5631453772834689748 AS nvarchar(50),  @Col_4962505521418366642 AS nvarchar(10),  @Col_5566475310013326353 AS nvarchar(5),  @Col_5715607538012291320 AS nvarchar(50),  @Col_5149611784371480095 AS nvarchar(10),  @Col_5493914966483501897 AS nvarchar(5),  @Col_5750209935965205484 AS nvarchar(50),  @Col_5676000566889795729 AS nvarchar(2000),  @Col_4621335856663143943 AS nvarchar(10),  @Col_5442010510253248869 AS nvarchar(5),  @Col_5124242136251439262 AS nvarchar(50),  @Col_5398258095385330778 AS nvarchar(1000),  @Col_4628781788341651288 AS nvarchar(2000),  @Col_5672081014092220427 AS bit,  @Col_5218099495923471035 AS nvarchar(50),  @Col_5257933441955732096 AS nvarchar(50),  @Col_4713191385551044467 AS bit,  @Col_5372234100468683109 AS bit,  @Col_4639891614577493038 AS bigint,  @Col_5464667694249660504 AS nvarchar(50),  @Col_5070546843852189382 AS bigint,  @Col_4984130768009581061 AS bit,  @Col_5522297125622396319 AS nvarchar(50),  @Col_4764322014286876371 AS bit,  @Col_5649399619552018490 AS bigint,  @Col_4965374130685763840 AS bit,  @Col_4716761535544883575 AS nvarchar(50),  @Col_4968159177977063475 AS nvarchar(50),  @Col_4705819997363775719 AS bit,  @Col_4716113222665995154 AS int,  @Col_4911284196201931262 AS int,  @Col_5611438163255659051 AS int,  @Col_5397542361376195100 AS bit,  @Col_5102261507499075575 AS bit,  @Col_5730839491973638524 AS bit,  @Col_4729015082844702876 AS bit,  @Col_4656153073016457807 AS bit,  @Col_5098023129115050578 AS bit,  @Col_5505812908880962150 AS nvarchar(50),  @Col_5356258724042226763 AS bit,  @Col_5175159809507122479 AS nvarchar(50),  @Col_5710387481358620417 AS bit,  @Col_5628529865448661409 AS bit,  @Col_4857729203360183353 AS nvarchar(50),  @Col_5652786583614604673 AS bit,  @Col_4633134698619148725 AS nvarchar(50),  @Col_4644767477812316645 AS bigint,  @Col_5637360776860205377 AS nvarchar(50),  @Col_5347937603121876258 AS bit,  @Col_5217067062659695142 AS bit,  @Col_5510356059517547211 AS nvarchar(50),  @Col_5428052653233469903 AS bit,  @Col_4921984102759853303 AS bit,  @Col_5350182045290888872 AS bit,  @Col_5591053147183080771 AS nvarchar(50),  @Col_5193730271735176352 AS nvarchar(50),  @Col_5209051614731024975 AS nvarchar(50),  @Col_4696798250810445498 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm198](Col_4869186778912237930,Col_5457900391677280406,Col_4940331532834525606,Col_5306351824122831530,Col_4613639992271604626,Col_5222312950179194682,Col_5221905107454111965,Col_5101302444275927146,Col_4741021543590103433,Col_5631453772834689748,Col_4962505521418366642,Col_5566475310013326353,Col_5715607538012291320,Col_5149611784371480095,Col_5493914966483501897,Col_5750209935965205484,Col_5676000566889795729,Col_4621335856663143943,Col_5442010510253248869,Col_5124242136251439262,Col_5398258095385330778,Col_4628781788341651288,Col_5672081014092220427,Col_5218099495923471035,Col_5257933441955732096,Col_4713191385551044467,Col_5372234100468683109,Col_4639891614577493038,Col_5464667694249660504,Col_5070546843852189382,Col_4984130768009581061,Col_5522297125622396319,Col_4764322014286876371,Col_5649399619552018490,Col_4965374130685763840,Col_4716761535544883575,Col_4968159177977063475,Col_4705819997363775719,Col_4716113222665995154,Col_4911284196201931262,Col_5611438163255659051,Col_5397542361376195100,Col_5102261507499075575,Col_5730839491973638524,Col_4729015082844702876,Col_4656153073016457807,Col_5098023129115050578,Col_5505812908880962150,Col_5356258724042226763,Col_5175159809507122479,Col_5710387481358620417,Col_5628529865448661409,Col_4857729203360183353,Col_5652786583614604673,Col_4633134698619148725,Col_4644767477812316645,Col_5637360776860205377,Col_5347937603121876258,Col_5217067062659695142,Col_5510356059517547211,Col_5428052653233469903,Col_4921984102759853303,Col_5350182045290888872,Col_5591053147183080771,Col_5193730271735176352,Col_5209051614731024975,Col_4696798250810445498) VALUES ( @Col_4869186778912237930,@Col_5457900391677280406,@Col_4940331532834525606,@Col_5306351824122831530,@Col_4613639992271604626,@Col_5222312950179194682,@Col_5221905107454111965,@Col_5101302444275927146,@Col_4741021543590103433,@Col_5631453772834689748,@Col_4962505521418366642,@Col_5566475310013326353,@Col_5715607538012291320,@Col_5149611784371480095,@Col_5493914966483501897,@Col_5750209935965205484,@Col_5676000566889795729,@Col_4621335856663143943,@Col_5442010510253248869,@Col_5124242136251439262,@Col_5398258095385330778,@Col_4628781788341651288,@Col_5672081014092220427,@Col_5218099495923471035,@Col_5257933441955732096,@Col_4713191385551044467,@Col_5372234100468683109,@Col_4639891614577493038,@Col_5464667694249660504,@Col_5070546843852189382,@Col_4984130768009581061,@Col_5522297125622396319,@Col_4764322014286876371,@Col_5649399619552018490,@Col_4965374130685763840,@Col_4716761535544883575,@Col_4968159177977063475,@Col_4705819997363775719,@Col_4716113222665995154,@Col_4911284196201931262,@Col_5611438163255659051,@Col_5397542361376195100,@Col_5102261507499075575,@Col_5730839491973638524,@Col_4729015082844702876,@Col_4656153073016457807,@Col_5098023129115050578,@Col_5505812908880962150,@Col_5356258724042226763,@Col_5175159809507122479,@Col_5710387481358620417,@Col_5628529865448661409,@Col_4857729203360183353,@Col_5652786583614604673,@Col_4633134698619148725,@Col_4644767477812316645,@Col_5637360776860205377,@Col_5347937603121876258,@Col_5217067062659695142,@Col_5510356059517547211,@Col_5428052653233469903,@Col_4921984102759853303,@Col_5350182045290888872,@Col_5591053147183080771,@Col_5193730271735176352,@Col_5209051614731024975,@Col_4696798250810445498 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm198]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm198
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm198] ( @PKFormId as bigint OUTPUT ,  @Col_4869186778912237930 AS nvarchar(50),  @Col_5457900391677280406 AS nvarchar(100),  @Col_4940331532834525606 AS nvarchar(50),  @Col_5306351824122831530 AS nvarchar(11),  @Col_4613639992271604626 AS nvarchar(11),  @Col_5222312950179194682 AS nvarchar(10),  @Col_5221905107454111965 AS nvarchar(50),  @Col_5101302444275927146 AS nvarchar(50),  @Col_4741021543590103433 AS nvarchar(50),  @Col_5631453772834689748 AS nvarchar(50),  @Col_4962505521418366642 AS nvarchar(10),  @Col_5566475310013326353 AS nvarchar(5),  @Col_5715607538012291320 AS nvarchar(50),  @Col_5149611784371480095 AS nvarchar(10),  @Col_5493914966483501897 AS nvarchar(5),  @Col_5750209935965205484 AS nvarchar(50),  @Col_5676000566889795729 AS nvarchar(2000),  @Col_4621335856663143943 AS nvarchar(10),  @Col_5442010510253248869 AS nvarchar(5),  @Col_5124242136251439262 AS nvarchar(50),  @Col_5398258095385330778 AS nvarchar(1000),  @Col_4628781788341651288 AS nvarchar(2000),  @Col_5672081014092220427 AS bit,  @Col_5218099495923471035 AS nvarchar(50),  @Col_5257933441955732096 AS nvarchar(50),  @Col_4713191385551044467 AS bit,  @Col_5372234100468683109 AS bit,  @Col_4639891614577493038 AS bigint,  @Col_5464667694249660504 AS nvarchar(50),  @Col_5070546843852189382 AS bigint,  @Col_4984130768009581061 AS bit,  @Col_5522297125622396319 AS nvarchar(50),  @Col_4764322014286876371 AS bit,  @Col_5649399619552018490 AS bigint,  @Col_4965374130685763840 AS bit,  @Col_4716761535544883575 AS nvarchar(50),  @Col_4968159177977063475 AS nvarchar(50),  @Col_4705819997363775719 AS bit,  @Col_4716113222665995154 AS int,  @Col_4911284196201931262 AS int,  @Col_5611438163255659051 AS int,  @Col_5397542361376195100 AS bit,  @Col_5102261507499075575 AS bit,  @Col_5730839491973638524 AS bit,  @Col_4729015082844702876 AS bit,  @Col_4656153073016457807 AS bit,  @Col_5098023129115050578 AS bit,  @Col_5505812908880962150 AS nvarchar(50),  @Col_5356258724042226763 AS bit,  @Col_5175159809507122479 AS nvarchar(50),  @Col_5710387481358620417 AS bit,  @Col_5628529865448661409 AS bit,  @Col_4857729203360183353 AS nvarchar(50),  @Col_5652786583614604673 AS bit,  @Col_4633134698619148725 AS nvarchar(50),  @Col_4644767477812316645 AS bigint,  @Col_5637360776860205377 AS nvarchar(50),  @Col_5347937603121876258 AS bit,  @Col_5217067062659695142 AS bit,  @Col_5510356059517547211 AS nvarchar(50),  @Col_5428052653233469903 AS bit,  @Col_4921984102759853303 AS bit,  @Col_5350182045290888872 AS bit,  @Col_5591053147183080771 AS nvarchar(50),  @Col_5193730271735176352 AS nvarchar(50),  @Col_5209051614731024975 AS nvarchar(50),  @Col_4696798250810445498 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm198] SET Col_4869186778912237930 =  @Col_4869186778912237930, Col_5457900391677280406 =  @Col_5457900391677280406, Col_4940331532834525606 =  @Col_4940331532834525606, Col_5306351824122831530 =  @Col_5306351824122831530, Col_4613639992271604626 =  @Col_4613639992271604626, Col_5222312950179194682 =  @Col_5222312950179194682, Col_5221905107454111965 =  @Col_5221905107454111965, Col_5101302444275927146 =  @Col_5101302444275927146, Col_4741021543590103433 =  @Col_4741021543590103433, Col_5631453772834689748 =  @Col_5631453772834689748, Col_4962505521418366642 =  @Col_4962505521418366642, Col_5566475310013326353 =  @Col_5566475310013326353, Col_5715607538012291320 =  @Col_5715607538012291320, Col_5149611784371480095 =  @Col_5149611784371480095, Col_5493914966483501897 =  @Col_5493914966483501897, Col_5750209935965205484 =  @Col_5750209935965205484, Col_5676000566889795729 =  @Col_5676000566889795729, Col_4621335856663143943 =  @Col_4621335856663143943, Col_5442010510253248869 =  @Col_5442010510253248869, Col_5124242136251439262 =  @Col_5124242136251439262, Col_5398258095385330778 =  @Col_5398258095385330778, Col_4628781788341651288 =  @Col_4628781788341651288, Col_5672081014092220427 =  @Col_5672081014092220427, Col_5218099495923471035 =  @Col_5218099495923471035, Col_5257933441955732096 =  @Col_5257933441955732096, Col_4713191385551044467 =  @Col_4713191385551044467, Col_5372234100468683109 =  @Col_5372234100468683109, Col_4639891614577493038 =  @Col_4639891614577493038, Col_5464667694249660504 =  @Col_5464667694249660504, Col_5070546843852189382 =  @Col_5070546843852189382, Col_4984130768009581061 =  @Col_4984130768009581061, Col_5522297125622396319 =  @Col_5522297125622396319, Col_4764322014286876371 =  @Col_4764322014286876371, Col_5649399619552018490 =  @Col_5649399619552018490, Col_4965374130685763840 =  @Col_4965374130685763840, Col_4716761535544883575 =  @Col_4716761535544883575, Col_4968159177977063475 =  @Col_4968159177977063475, Col_4705819997363775719 =  @Col_4705819997363775719, Col_4716113222665995154 =  @Col_4716113222665995154, Col_4911284196201931262 =  @Col_4911284196201931262, Col_5611438163255659051 =  @Col_5611438163255659051, Col_5397542361376195100 =  @Col_5397542361376195100, Col_5102261507499075575 =  @Col_5102261507499075575, Col_5730839491973638524 =  @Col_5730839491973638524, Col_4729015082844702876 =  @Col_4729015082844702876, Col_4656153073016457807 =  @Col_4656153073016457807, Col_5098023129115050578 =  @Col_5098023129115050578, Col_5505812908880962150 =  @Col_5505812908880962150, Col_5356258724042226763 =  @Col_5356258724042226763, Col_5175159809507122479 =  @Col_5175159809507122479, Col_5710387481358620417 =  @Col_5710387481358620417, Col_5628529865448661409 =  @Col_5628529865448661409, Col_4857729203360183353 =  @Col_4857729203360183353, Col_5652786583614604673 =  @Col_5652786583614604673, Col_4633134698619148725 =  @Col_4633134698619148725, Col_4644767477812316645 =  @Col_4644767477812316645, Col_5637360776860205377 =  @Col_5637360776860205377, Col_5347937603121876258 =  @Col_5347937603121876258, Col_5217067062659695142 =  @Col_5217067062659695142, Col_5510356059517547211 =  @Col_5510356059517547211, Col_5428052653233469903 =  @Col_5428052653233469903, Col_4921984102759853303 =  @Col_4921984102759853303, Col_5350182045290888872 =  @Col_5350182045290888872, Col_5591053147183080771 =  @Col_5591053147183080771, Col_5193730271735176352 =  @Col_5193730271735176352, Col_5209051614731024975 =  @Col_5209051614731024975, Col_4696798250810445498 =  @Col_4696798250810445498 WHERE [frm198Id] = @PKFormId 
 END 
GO
