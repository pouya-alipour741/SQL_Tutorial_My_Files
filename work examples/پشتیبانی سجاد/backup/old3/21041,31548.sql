GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 21041) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (21041, N'فرم فرآیند درخواست پشتیبانی سامانه سجاد',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1099" Height="1456.03333333" Background="White">
  <Canvas Width="1054" Height="1304">
    <ViewLayouts>
      <ViewLayoutItem Name="بررسی درون سازمان" ID="5453529218873335310" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218500402960342909" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه نهایی" ID="4838605854342166465" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4757820249046486749" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4905698283024938119" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5269038917764596706" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ثبت پرسش" ID="5506106183357399091" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5269038917764596706" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5734364465859836924" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="مشاهده نهایی اداره" ID="5159633470799826347" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218500402960342909" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="اتومات" ID="4899345810615436228" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بررسی کارشناس پشتیبان سامانه سجاد" ID="4758356032329010723" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بررسی کاربر مشاهده کننده" ID="5029762373589799426" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4948200665753577473" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5195609748428162630" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5649431032226153954" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5208403737968325202" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5610076180504582867" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5273781445844994672" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>4635659206458993792</ID>
        <Name>تلفن تماس</Name>
        <Condition>({@chkPhone.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تلفن تماس وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5389058767208499138</ComponentID>
            <ComponentName>chkPhone</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5731953549719914661</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4632295450849452445</ID>
        <Name>ایمیل </Name>
        <Condition>({@chkCheckEmail.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>ایمیل وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5568440564971718604</ComponentID>
            <ComponentName>chkCheckEmail</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4777736926483232342</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5200747115578219122</ID>
        <Name>چک کردن کد ملی</Name>
        <Condition>({@chkNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده معتبر نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4793634241596138168</ComponentID>
            <ComponentName>chkNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5311943642425436040</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5415861941485941443</ID>
        <Name>پساخ کارشناس</Name>
        <Condition>({@chkCheckAnswer.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5382784310684242131</ComponentID>
            <ComponentName>chkCheckAnswer</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5283938535680513962</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5179173474267205878</ID>
        <Name>چک نتیجه به متقاضی</Name>
        <Condition>({@chkSendToTazarvMandatory.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد نتیجه بررسی را انتخاب نمایید و یا اگر پشتیبانی هستید، در صورت خالی بودن این فیلد، انتخاب گزینه ارسال به تذرو اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4769532511991724310</ComponentID>
            <ComponentName>chkSendToTazarvMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4696636621051111380</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1032" Height="1263" Background="#FF06427F" ControlID="4986405015211422657" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox32" Width="1006" Height="460.50318181999967" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4612881781226092198" Canvas.Left="7" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:TZTabControl Name="TabControl28" Width="983" Height="424.01984848666632" ControlID="5453843684688870228" Canvas.Left="3" Canvas.Top="8">
              <cm:TZTabItem HeaderText="مشخصات درخواست">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox3" Width="964" Height="387.34333333" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4905698283024938119" Canvas.Left="5" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzLabel Name="Lable6" Content=": ساعت ثبت" Width="120" Height="23" ControlID="5558400471724855202" Canvas.Left="432.59666667000067" Canvas.Top="6.0985910466667406" />
                      <cm:tzLabel Name="Lable13" Content=": تاريخ ثبت" Width="120" Height="23" ControlID="4917895951280043116" Canvas.Left="186" Canvas.Top="6.723333323333236" />
                      <cm:TzPersianTime Name="prtTime" Width="43" Height="20" ControlID="5447864216398602997" Canvas.Left="380.59666667000067" Canvas.Top="10.204694000416623" cm:DefaultValue="$CurrentTime" cm:Len="11" cm:TabIndex="2" />
                      <cm:PDatePicker Name="prcDate" Width="120" Height="20" ControlID="5392809815104644429" TabIndex="3" Canvas.Left="91.5" Canvas.Top="9.723333323333236" cm:DefaultValue="$CurrentDate" />
                      <cm:tzTextBox Name="txtPhone" Width="149.09466019" Height="21" ControlID="5684013610708670363" Canvas.Left="282.50200648000043" Canvas.Top="39.098591039999974" cm:DataType="NVarChar" cm:Event="dsPhone" cm:Len="11" cm:TabIndex="5" />
                      <cm:tzLabel Name="Lable35" Content=":شماره همراه" ControlID="5749413498697313151" Canvas.Left="432.05397407000009" Canvas.Top="35.050481336666678" />
                      <cm:tzLabel Name="Lable59" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="497.59666667000113" Canvas.Top="32.206666656666584" cm:ControlID="4725301455225641895" />
                      <cm:tzDataSource Name="dsPhone" Content="dsPhone" Width="77" Height="25" ControlID="5456061131679790609" Canvas.Left="321.59666667" Canvas.Top="33.40859105" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_ValidMobileNumber">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPhone}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNum" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzLabel Name="Lable5" Content=": نام کاربري" Width="67" Height="23" ControlID="5046534906102027490" Canvas.Left="861" Canvas.Top="6.7233333233332644" />
                      <cm:tzLabel Name="Lable14" Content=": موضوع اصلي" Width="82.5" Height="28" ControlID="5128267890403750918" Canvas.Left="861.5" Canvas.Top="33.615257710000037" />
                      <cm:tzTextBox Name="txtFullName" Width="216.99999999999977" Height="21" ControlID="5279528291598107148" Canvas.Left="643.00000000000023" Canvas.Top="8.7233333233332644" cm:DataBinding="dtsFullName" cm:DataBindingField="UserName" />
                      <cm:tzLabel Name="Lable32" Content=": شرح" Width="43" Height="26" ControlID="4754007848503515472" Canvas.Left="861.00000000000057" Canvas.Top="140.40859105000044" />
                      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="342" Height="22" ControlID="5734364465859836924" Canvas.Left="517.00000000000023" Canvas.Top="36.408591050000041" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataBindingField="WorkflowId" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsSelectReadyAnswerInfo" cm:SelectedDataBinding="dtsGetPortalName" cm:TabIndex="4" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                      <cm:tzLabel Name="Lable36" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="934.00000000000023" Canvas.Top="31.891924390000042" cm:ControlID="4825980631278188069" />
                      <cm:tzLabel Name="Lable3738" Content="*" Width="16" Height="18" Foreground="#FFFF0000" Canvas.Left="896.00000000000057" Canvas.Top="142.57325988666713" cm:ControlID="5176021053831209478" />
                      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="110.0000000033333" Height="25" ControlID="4791881557067791466" Canvas.Left="639.40666666666675" Canvas.Top="33.40859105" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm21041 (@UserID)">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalLogID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="txtDesc" Width="852" Height="216.28674010666666" ControlID="5588901027094583235" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="7" Canvas.Top="142.57325989" cm:IsMulitiLine="True" cm:Len="1000" />
                      <cm:tzLabel Name="Lable50" Content=": پست الکترونیک" Width="99.000000000000568" Height="24" Canvas.Left="185.99999999999986" Canvas.Top="34.61525770999998" cm:ControlID="5045947217997467757" />
                      <cm:tzTextBox Name="txtEmail" Width="177" Height="21" Canvas.Left="8.00000000000005" Canvas.Top="37.61525770999998" cm:ControlID="5410123904378380874" cm:DataType="NVarChar" cm:Event="dsCheckEmail" cm:Len="50" cm:TabIndex="6" />
                      <cm:tzTextBox Name="txtPotalName" Width="344.80999999999887" Height="21" ControlID="5307054846183699357" Canvas.Left="516.59666667000113" Canvas.Top="8.72307942" cm:DataBinding="dtsGetPortalName" cm:DataBindingField="FullName" cm:IsEnableItem="True" cm:TabIndex="1" />
                      <cm:tzLabel Name="Lable7374" Content=":نوع مشکل" ControlID="4876010017240978348" Canvas.Left="860.14000000000033" Canvas.Top="63.92525771666665" />
                      <cm:tzLookUpComboBox Name="cmbProblemType" Width="342.40333332999887" Height="22" ControlID="4659311251708217602" Canvas.Left="516.59666667000113" Canvas.Top="66.40859105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectProblemType" cm:DataType="Int" cm:Event="dschkWFFollowUpCode" cm:tzDisplayItem="Problem" cm:tzValueItem="ProblemTypeID" />
                      <cm:tzDataSource Name="dsSelectProblemType" Content="dsSelectProblemType" Width="110" Height="25" ControlID="5306534729843751800" Canvas.Left="639.40666666666675" Canvas.Top="63.408591050000041" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetProblemType_frm21041" />
                      <cm:tzLabel Name="Lable74" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="267.0000000000004" Canvas.Top="31.891924390000042" cm:ControlID="5080047452072082408" />
                      <cm:tzTextBox Name="txtPortalDes" Width="852" Height="216.28674010666666" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="7" Canvas.Top="142.57325989" cm:ControlID="4809213762955760342" cm:DataBinding="dtsGetPortalName" cm:DataBindingField="Descript" cm:IsMulitiLine="True" cm:Len="1000" />
                      <cm:tzDataSource Name="dsCheckProblemType" Content="dsCheckProblemType" Width="76.000000000000114" Height="25" Background="#FFDDDDDD" ControlID="4853680612637721892" Canvas.Left="457.1959799" Canvas.Top="227.57325989000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckProblemType_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrienProblem}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OrienProblem" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnQuestion}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnQuestion" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsCheckEmail" Content="dsCheckEmail" Width="110" Height="25" ControlID="5363169941782671292" Canvas.Left="48.183012189999886" Canvas.Top="33.408591050000041" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ValidateEmail">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtEmail}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Email" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:TZCheckBox Name="chkCheckEmail" Content="chkCheckEmail" Width="59.999999999999886" Height="20" ControlID="5568440564971718604" Canvas.Left="15.668903800000116" Canvas.Top="4.61525770999998" cm:DataBinding="dsCheckEmail" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtNationalCode" Width="149.09466019" Height="21" ControlID="4911623689532144782" Canvas.Left="282.50200648000043" Canvas.Top="68.891924380000034" cm:Event="dsNationalCode,test" cm:Len="100" />
                      <cm:tzLabel Name="Lable93" Content=":کد ملی" ControlID="5370197942083422256" Canvas.Left="432.59666667000067" Canvas.Top="65.408591049999984" />
                      <cm:tzLabel Name="Lable94" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="475.19333333666748" Canvas.Top="64.891924383333389" cm:ControlID="5484199428562419402" cm:ForeColor="#FFFF0000" />
                      <cm:TZCheckBox Name="chkNationalCode" Content="chkNationalCode" Width="58.403333329999839" Height="20" ControlID="4793634241596138168" FontFamily="Tahoma" Canvas.Left="271.50200647999992" Canvas.Top="4.61525770999998" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                      <cm:TZRadioButton Name="rbnOrienProblem" Content="مشکل در سامانه" ControlID="4676825254353781655" FontFamily="Tahoma" Canvas.Left="750.40666666666675" Canvas.Top="154.57325988666736" cm:DefaultValue="true" cm:Event="dsCheckProblemType" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:TZRadioButton Name="rbnQuestion" Content="سوال آیین نامه ای" FontFamily="Tahoma" Canvas.Left="617.48000000000025" Canvas.Top="154.57325988666753" cm:ControlID="4858775235086145070" cm:Event="dsCheckProblemType" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:tzTextBox Name="txtPortalUserID" Width="178" Height="21" HorizontalAlignment="Right" ControlID="4819760547104058387" Canvas.Left="7" Canvas.Top="67.40859105" cm:DataType="BigInt" cm:Event="dsSearchWfFromPortal" cm:IsVisibleItem="True" />
                      <cm:tzLabel Name="Lable127" Content=": شناسه کاربری" ControlID="4724166171553961079" Canvas.Left="186" Canvas.Top="65.408591049999984" />
                      <cm:tzLookUpComboBox Name="cmbPriority" Width="342" Height="22" ControlID="5274322539269778963" Canvas.Left="516.59666667000113" Canvas.Top="97.40859105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsPriority" cm:DataType="Int" cm:DefaultValue="$اولی" cm:tzDisplayItem="PriorityName" cm:tzValueItem="PriorityID" />
                      <cm:tzLabel Name="Lable115" Content=": اولویت" ControlID="5248050679982927604" Canvas.Left="857" Canvas.Top="96.408591050000041" />
                      <cm:tzDataSource Name="dsPriority" Content="dsPriority" Width="110" Height="25" ControlID="4951765384964759143" Canvas.Left="639.40666666666675" Canvas.Top="95.891924383333375" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetPriority_Frm20937" />
                      <cm:tzDataSource Name="dtsFullName" Content="dtsFullName" Width="110" Height="25" ControlID="5753063740601993322" Canvas.Left="7.0000000000001705" Canvas.Top="143.57325988666742" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_FullName_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@TxtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="txtPortalLogID" Width="81" Height="21" ControlID="4798298711155420350" Canvas.Left="130.50000000000006" Canvas.Top="198.94195979999995" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtPortalEntryID" Width="68" Height="21" ControlID="5624003739167460820" Canvas.Left="138.33919598000006" Canvas.Top="164.57325988666742" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                      <cm:tzDataSource Name="dsGetgridUser" Content="dsGetgridUser" Width="110" Height="25" ControlID="5693625512062971190" Canvas.Left="7.0000000000001137" Canvas.Top="227.57325988666719" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@grvAttach.SelectedRowItem}" />
                      <cm:tzDataSource Name="dsValidateAttachment" Content="dsValidateAttachment" Width="110" Height="25" ControlID="5094590819579418620" Canvas.Left="7.0000000000001084" Canvas.Top="261.57325988666707" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateAttachment_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="DataSource79" Content="dsFileDeleteVal" Width="110" Height="25" Canvas.Left="7.0000000000001137" Canvas.Top="295.57325988666707" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4645744200936818873" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtgrv}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GridID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsPortalAttachments" Content="dsPortalAttachments" Width="110" Height="25" ControlID="5622603866125465760" Canvas.Left="7.0000000000001137" Canvas.Top="329.57325988666696" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadPortalAttachmentForfrm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsGrv" Content="dsGrv" Width="85.500000000000057" Height="25" ControlID="4644121629476164323" Canvas.Left="126" Canvas.Top="227.57325989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@grvAttach}" />
                      <cm:tzTextBox Name="txtgrv" Width="56" Height="21" ControlID="5565421426804681014" Canvas.Left="214.50200648000003" Canvas.Top="231.57325989000003" cm:DataBinding="dsGrv" cm:DataBindingField="Column1" cm:Event="dsFileDeleteVal" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtChartNodeID" Width="58" Height="21" ControlID="5735039865522523619" Canvas.Left="279.50200648000003" Canvas.Top="231.57325989000003" cm:DataBinding="dsGetChartNode" cm:DataBindingField="ChartNodeID" cm:IsVisibleItem="False" />
                      <cm:TZCheckBox Name="chkIsAutomat" Content="TZCheckBox" Width="60.000000000000114" Height="20" ControlID="4839663788828962407" Canvas.Left="729.24333333333379" Canvas.Top="227.57325989000003" cm:Event="dsValidateUpload,dsValidateUploadInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5279528291598107148#" cm:IsVisibleItem="False" cm:Persistable="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5307054846183699357#4809213762955760342#5259234939364520244#4942352716982036217#" />
                      <cm:tzDataSource Name="dsGUID" Content="dsGUID" Width="105" Height="25" ControlID="5590257507101018373" Canvas.Left="345.65919768" Canvas.Top="261.57325989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetNewGUID {@txtguid}" />
                      <cm:tzTextBox Name="txtguid" Width="38.999999999999886" Height="21" ControlID="5190992840719060449" Canvas.Left="459.65919768000009" Canvas.Top="261.57325989000003" cm:DataBinding="dsGUID" cm:DataBindingField="GUDID" cm:Event="dsGUID,dsSearchSaoResult" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtUserID" Width="39" Height="21" ControlID="4917072605639784939" Canvas.Left="459.65919768" Canvas.Top="283.57325989" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                      <cm:TZCheckBox Name="CheckBox80" Content="TZCheckBox" Width="120" Height="20" Canvas.Left="507.65919768" Canvas.Top="262.57325989000003" cm:ControlID="5123824079997506024" cm:DataBinding="dsFileDeleteVal" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5745325606417398951#" />
                      <cm:tzDataSource Name="DataSource123" Width="105.00000000000011" Height="25" ControlID="4955571905321158146" Canvas.Left="345.65919768" Canvas.Top="312.70577889" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
                      <cm:tzDataSource Name="dsGetChartNode" Content="dsGetChartNode" Width="110" Height="25" ControlID="4613902331168262520" Canvas.Left="459.6591976800002" Canvas.Top="312.70577888999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetChartNodeIDForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsFileDeleteVal" Content="dsFileDeleteVal" Width="110" Height="25" ControlID="4763756049839051263" Canvas.Left="578.65919768000026" Canvas.Top="312.70577888999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtgrv}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GridID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="TextBox120" Width="27" Height="21" ControlID="5287576350964428431" Canvas.Left="689.65919768000026" Canvas.Top="316.70577888999992" cm:DataBinding="DataSource123" cm:DataBindingField="Column1" cm:Event="dsMainSubject" cm:IsVisibleItem="False" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzTextBox Name="TxtUserID" Width="120" Height="10" ControlID="5231956594990321764" Canvas.Left="256.5" Canvas.Top="-18.966666659999987" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:Event="dtsFullName" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="پیوست ها">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox216217" Width="961" Height="379.53651515333297" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5700912637587499592" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="grvAttach" Width="933" Height="343.05318181999962" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4846713678857291603" ItemsSource="{Binding ElementName=dsAttaches, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsAttaches" cm:Event="dsGrv,dsFileDeleteVal" cm:EventForAdd="dsAttaches" cm:EventForDelete="dsAttaches" cm:Form="20301" cm:FormName="افزودن پیوست" cm:KeyField="Id" cm:ParamValues="5190992840719060449¢guid" cm:UserCanDelete="True" cm:UserCanEdit="False" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Id" DecimalMark="False" HeaderText="Id" IsRowColorField="False" KeyField="True" SortMemberPath="Id">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Id}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="fullname" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="fullname">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding fullname}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="fileId" DataTextField="fileId" DecimalMark="False" HeaderText="فایل" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="fileId">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding fileId}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding fileId}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="File2" DataTextField="File2" DecimalMark="False" HeaderText="تصویر خطا" HyperLinkType="URL" IsRowColorField="False" KeyField="False" SortMemberPath="File2">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding File2}" Command="{Binding Source={StaticResource MainCommands}, Path=ShowExtenalLink}" CommandParameter="{Binding File2}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachTitle" DecimalMark="False" HeaderText="عنوان پیوست" IsRowColorField="False" KeyField="False" SortMemberPath="AttachTitle">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachTitle}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="AttachDate">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachDate}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsAttaches" Content="dsAttaches" Width="92" Height="25" ControlID="5137999111554449378" Canvas.Left="49.180012830000607" Canvas.Top="50.892617449999946" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_ReadAttachmentForfrm210141 {@txtguid} ,(@WorkflowInstanceID)">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzLabel Name="Lable118" Content="tzLabel" Width="64.7380675200003" Height="23" Background="#FFC5DEF7" ControlID="5745325606417398951" Foreground="#FFC5DEF7" Canvas.Left="810.92719869999974" Canvas.Top="9.9999999999999432" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:TZCheckBox Name="chkValidateAttachment" Content="TZCheckBox" Width="120" Height="20" ControlID="5118256872779995066" Canvas.Left="756.30082987000037" Canvas.Top="-21" cm:DataBinding="dsValidateAttachment" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="سوابق درخواست">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox89" Width="961" Height="379.53651515333297" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5273781445844994672" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvWfFromPortal" Width="933" Height="341.05318181999962" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5128432528941420333" ItemsSource="{Binding ElementName=dsSearchAllWF, Path=DataItems}" Canvas.Left="8" Canvas.Top="10" cm:BindingForm="dsSearchAllWF" cm:IsSearchable="True" cm:KeyField="WorkFlowInstanceID">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WorkFlowInstanceID" DataTextField="WorkFlowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowInstanceID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding WorkFlowInstanceID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WorkFlowInstanceID}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowName">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowName}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی/نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="InsertDateTime" DecimalMark="False" HeaderText="تاریخ شروع فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="InsertDateTime">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding InsertDateTime}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemType" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemType">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemType}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descrpit" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Descrpit">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descrpit}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="نتیجه نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="status">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding status}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:TZButton Name="Button113" Content="جستجو" Width="75" Height="23" ControlID="5206706301334893092" Canvas.Left="8" Canvas.Top="10" cm:Event="dsSearchAllWF" />
                      <cm:tzDataSource Name="dsSearchAllWF" Content="dsSearchAllWF" Width="110" Height="25" ControlID="5360335574965201173" Canvas.Left="308.28056275999995" Canvas.Top="287.22613636666676" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_SearchAllWF_ForSaoSupport">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @IsAutomat" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@gdvWfFromPortal}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPortalUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalUserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
            </cm:TZTabControl>
            <cm:tzDataSource Name="dtsGetPortalName" Content="dtsGetPortalName" Width="104" Height="25" ControlID="5763559335780557314" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="365.27728813" Canvas.Top="284.01093611" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetPortalName_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFileDeleteVal" Content="TZCheckBox" Width="60.000000000000227" Height="20" ControlID="5656869007242304861" Canvas.Left="550.51005025" Canvas.Top="284.01093610666658" cm:DataBinding="dsFileDeleteVal" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5382151786499929743#" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox33" Width="1006" Height="546.29481496" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5269038917764596706" Canvas.Left="7" Canvas.Top="490.01430454" cm:Header="نتیجه بررسی">
          <Canvas>
            <cm:tzDataGrid Name="GridView72" Width="978" Height="201.44784526" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5280655504225515880" ItemsSource="{Binding ElementName=dsSearchRefer, Path=DataItems}" Canvas.Left="8" Canvas.Top="312.74764414000032" cm:AllowPaging="False" cm:BindingForm="dsSearchRefer" cm:Event="dsGetGrv" cm:EventForAdd="dsCheckReferAnswer" cm:EventForDelete="dsCheckReferAnswer" cm:EventForEdit="dsCheckReferAnswer" cm:KeyField="Id" cm:ParamValues="5734364465859836924¢MainSubject$4839663788828962407¢IsAutomat$5231956594990321764¢RegUserID$4819422034654599507¢id" cm:UserCanDelete="False" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="-1">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="40" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Id" DecimalMark="False" HeaderText="id" IsRowColorField="False" KeyField="True" SortMemberPath="Id">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Id}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Column1" DecimalMark="False" HeaderText="کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="Column1">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Column1}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Res" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Res">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Res}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Chart" DecimalMark="False" HeaderText="ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="Chart">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Chart}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Expert" DecimalMark="False" HeaderText="کاربر ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="Expert">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Expert}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="115" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="Attachment" DataTextField="Attachment" DecimalMark="False" HeaderText="پیوست صورت جلسه" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="Attachment">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Attachment}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding Attachment}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Des" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Des">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Des}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsRefergrvValidate" Content="dsRefergrvValidate" Width="93" Height="25" Canvas.Left="25.000000000000114" Canvas.Top="416.74095398000026" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5415135109535469888" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @GridID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable277" Content="tzLabel" Width="96.73806752" Height="23" Background="#FFC5DEF7" Foreground="#FFC5DEF7" Canvas.Left="827.38056096" Canvas.Top="11" cm:ControlID="5527256412247801932" />
            <cm:TZCheckBox Name="chkReferValidate" Content="TZCheckBox" Width="120" Height="20" ControlID="5203196081588324600" Canvas.Left="256" Canvas.Top="353.74095398000026" cm:DataBinding="dsRefergrvValidate" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4681735953927289917#5527256412247801932#" />
            <cm:tzTextBox Name="txtReferCurrent" Width="120" Height="21" ControlID="4819422034654599507" Canvas.Left="127" Canvas.Top="352.74095398000003" cm:DataBinding="dsGetGrv" cm:DataBindingField="Res" cm:DataType="BigInt" cm:Event="dsRefergrvValidate" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsSearchRefer" Content="dsSearchRefer" Width="93" Height="25" ControlID="5394642795927386120" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="25.000000000000114" Canvas.Top="382.74095398000026" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchRefer_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetGrv" Content="dsGetGrv" Width="93" Height="25" ControlID="4944608555118802285" Canvas.Left="25.000000000000114" Canvas.Top="348.74095398000071" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView72.SelectedRowItem} AS Res" />
            <cm:TZRadioButton Name="rbnSendResultInfo" Content="اعلام نتیجه به متقاضی" Width="NaN" Height="NaN" ControlID="5581934880622446261" GroupName="1" Canvas.Left="772.07136341000046" Canvas.Top="17.332099980000635" cm:DataBindingField="Res" cm:DefaultValue="true" cm:Event="dschkSendToTazarvMandatory" cm:FCVCol="5195609748428162630#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5649431032226153954#5208403737968325202#5610076180504582867#" cm:TECol="4948200665753577473#" cm:TMCol="5409369756743812385#" cm:TVCol="" />
            <cm:TZRadioButton Name="rbnDesiredOfficeInfo" Content="ارجاع به ادارات سازمان امور دانشجویان " Width="NaN" Height="NaN" ControlID="5319920761961862933" GroupName="1" Canvas.Left="771.07666666666728" Canvas.Top="51.332099980000748" cm:DataBindingField="DesiredOffice" cm:Event="dsGetGroupIDInfo" cm:FCVCol="5195609748428162630#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5208403737968325202#5610076180504582867#4945194059781672514#" cm:TECol="5195609748428162630#5649431032226153954#" cm:TMCol="5195609748428162630#5409369756743812385#" cm:TVCol="" />
            <cm:TZRadioButton Name="rbnOtherOrgInfo" Content="ارجاع به دانشگاه ها" Width="NaN" Height="NaN" ControlID="5139528391810745165" GroupName="1" Canvas.Left="772.07136341000034" Canvas.Top="87.270718910000369" cm:Event="dsGetGroupIDInfo,dschkIfInCertainUniversities" cm:FCVCol="5195609748428162630#5525857097060403882#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="4945194059781672514#5649431032226153954#" cm:TECol="5525857097060403882#5208403737968325202#" cm:TMCol="5525857097060403882#5409369756743812385#5208403737968325202#" cm:TVCol="" />
            <cm:tzLabel Name="Lable3637Info" Content=":نتیجه بررسی" Width="NaN" Height="NaN" Canvas.Left="652.59916813333359" Canvas.Top="6.8487666466673023" cm:ControlID="5184350259769853418" />
            <cm:tzLookUpComboBox Name="cmbResultInfo" Width="190" Height="22" ControlID="4948200665753577473" Canvas.Left="446.88711749000015" Canvas.Top="9.3320999800008639" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetFinalResultInfo" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsValidateUploadInfo,dsGetGroupIDInfo,dschkSendToTazarvMandatory" cm:tzDisplayItem="FinalResult" cm:tzValueItem="FinalResultID" />
            <cm:tzLabel Name="Lable123Info" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="826.58005740999988" Canvas.Top="113.81543331666654" cm:ControlID="4795705159060889370" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbReadyAnswerInfo" Width="466.98604032" Height="22" Canvas.Left="350.59401709" Canvas.Top="115.75577125" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4728016897295625884" cm:DataBinding="dsSelectReadyAnswerInfo" cm:Event="dsSelectReadyAnswerInfo,dsSelectAnswerInfo" cm:tzDisplayItem="RequestType" cm:tzValueItem="PremadeResponses_ID" />
            <cm:tzLabel Name="Lable36Info" Content=":واحد مورد نظر" ControlID="4778676928864036774" Canvas.Left="651.54583480000019" Canvas.Top="40.848766646667521" />
            <cm:tzLookUpComboBox Name="cmbDesiredUnitInfo" Width="190" Height="22" ControlID="5195609748428162630" Canvas.Left="446.88711749000026" Canvas.Top="43.332099980000862" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubsetInfo" cm:DataType="Int" cm:Event="dsGetGroupIDInfo,dsGetExpertsInfo" cm:tzDisplayItem="OrganizationalUnit" cm:tzValueItem="OrganizationalUnitID" />
            <cm:tzLabel Name="Lable41Info" Content=":کارشناس" Width="NaN" Height="NaN" Canvas.Left="350.59401709000014" Canvas.Top="40.848766646667535" cm:ControlID="5070206581941278149" />
            <cm:tzLookUpComboBox Name="cmbExperUserIDInfo" Width="190" Height="22" ControlID="5649431032226153954" Canvas.Left="149.67328362000069" Canvas.Top="43.332099980000862" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetExpertsInfo" cm:DataType="Int" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable125Info" Content="*" Foreground="#FFFF0000" Canvas.Left="958.75856777333377" Canvas.Top="139.8154333133341" cm:ControlID="5274936147257852698" />
            <cm:tzLabel Name="Lable8Info" Content=": توضیحات" ControlID="4993196279543935988" Canvas.Left="913.92523444000028" Canvas.Top="146.27243791666811" />
            <cm:tzTextBox Name="txtDescInfo" Width="904.92523444" Height="114.19462178999983" ControlID="5409369756743812385" HorizontalScrollBarVisibility="Auto" Text="با سلام و احترام" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="147.29876665000018" cm:DataBinding="dsSelectAnswerInfo" cm:DataBindingField="Response" cm:Event="dsSelectReadyAnswerInfo" cm:IsMulitiLine="True" cm:Len="1000" />
            <cm:tzLabel Name="Lable27Info" Content=":بارگذاری صورتجلسه" ControlID="5717071478789357227" Canvas.Left="799.55190110666683" Canvas.Top="271.26431081000015" />
            <cm:TZFileUpload Name="fupProceedingsInfo" Width="234" Height="31" ControlID="4761793774768584392" Canvas.Left="564.55190110666706" Canvas.Top="272.7476441433343" />
            <cm:TZButton Name="Button132" Content="افزودن" Width="131.79942829000044" Height="23" ControlID="5606062516470892704" Canvas.Left="9.6634279800000513" Canvas.Top="275.53027982" cm:Event="dsInsert" />
            <cm:TZButton Name="Button167" Content="ویرایش" Width="131.79942829000044" Height="23" Canvas.Left="150.46285627000077" Canvas.Top="275.53027982" cm:ControlID="4627339655172121596" cm:Event="dsUpdate" />
            <cm:TZButton Name="Button168" Content="حذف" Width="131.79942829000044" Height="23" Canvas.Left="291.26228456000126" Canvas.Top="275.53027982" cm:ControlID="4891056825465543985" cm:Event="dsDelete" cm:IsEnableItem="True" />
            <cm:tzDataSource Name="dsGetFinalResultInfo" Content="dsGetFinalResultInfo" Width="53.999999999999474" Height="25" ControlID="5073551071295449599" Canvas.Left="471.59401709000088" Canvas.Top="6.3320999800008622" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFinalResult_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSubsetInfo" Content="dsSubsetInfo" Width="54.000000000000114" Height="25" ControlID="5212332765325729286" Canvas.Left="471.59401709000008" Canvas.Top="40.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetDesiredUnit_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue />
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetCurrentGroupIDInfo" Content="dsGetCurrentGroupIDInfo" Width="110" Height="25" ControlID="4843639403845914334" Canvas.Left="615.8558348" Canvas.Top="167.7557712500022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetCyrrentGroupID_frm31116">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGroupNameInfo" Content="dsGroupNameInfo" Width="108.33657201999995" Height="25" ControlID="5437145312846912627" Canvas.Left="9.6634279800003924" Canvas.Top="173.75577125000083" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetGroupName_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @GroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetExpertsInfo" Content="dsGetExpertsInfo" Width="110" Height="25" ControlID="5162293064969290818" Canvas.Left="94.134849760000179" Canvas.Top="40.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetExpertID_frm3116">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtOfficeExpertIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @GroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectReadyAnswerInfo" Content="dsSelectReadyAnswerInfo" Width="110" Height="25" Canvas.Left="283.26228456000109" Canvas.Top="110.29876664666757" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5312298001233396630" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtGroupNameInfo" Width="87.90309906" Height="21" ControlID="5321915798760308165" Canvas.Left="127.00000000000057" Canvas.Top="177.75577125000174" cm:DataBinding="dsGroupNameInfo" cm:DataBindingField="GroupName" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsReferIDInfo" Content="dsReferIDInfo" Width="110.00000000000034" Height="25" ControlID="5523819363780068150" Canvas.Left="8" Canvas.Top="139.29876664666719" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
            <cm:tzTextBox Name="txtReferIDInfo" Width="84.774530970000171" Height="21" ControlID="5491021531889411585" Canvas.Left="130.12856809000027" Canvas.Top="143.29876664666776" cm:DataBinding="dsReferIDInfo" cm:DataBindingField="Column1" cm:DataType="Int" cm:DecimalMark="False" cm:DefaultValue="" cm:Event="dsGetUserName" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsSelectOfficeExpertIDInfo" Content="dsSelectOfficeExpertIDInfo" Width="37" Height="25" ControlID="5538098029530721496" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="439.41335278000059" Canvas.Top="167.75577125000143" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP  1 a.OfficeExpertID from  [dbo].Tbl_Cu_Base_OrganizationalUnit a WHERE  GroupID={@txtGroupIDInfo}" />
            <cm:tzTextBox Name="txtOfficeExpertIDInfo" Width="46.081936150000871" Height="21" ControlID="4876911667450903111" Canvas.Left="485.41335278000042" Canvas.Top="174.75577125000129" cm:DataBinding="dsSelectOfficeExpertIDInfo" cm:DataBindingField="OfficeExpertID" cm:Event="dsGetExpertsInfo" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsValidateUploadInfo" Content="dsValidateUploadInfo" Width="107.46285627000043" Height="25" Canvas.Left="266" Canvas.Top="139.29876665000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4811721574090498970" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFileUpload_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @Result" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName="    @ChkAutomat" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidateUploadInfo" Content="chkValidateUpload" Width="46" Height="20" Canvas.Left="385.00000000000023" Canvas.Top="144.29876664666753" cm:ControlID="4937550961841903116" cm:DataBinding="dsValidateUploadInfo" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4761793774768584392#5717071478789357227#" />
            <cm:tzDataSource Name="dsInsert" Content="dsInsert" Width="110" Height="25" ControlID="4758810087077352413" Canvas.Left="8.0000000000003411" Canvas.Top="207.75577125000106" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Insert_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @SendResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @DesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredUnit" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExperUserIDInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbExperUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbInstitude" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUniversity" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Des" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@fupProceedingsInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Attachment" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ReferId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetGroupIDInfo" Content="dsGetGroupIDInfo" Width="108.50949946000043" Height="25" ControlID="5032837820067484785" Canvas.Left="264.95335681000017" Canvas.Top="173.75577125000015" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetGroupID_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnDesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OrganUnitID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @cmbUniversity" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbMainSubject" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectAnswerInfo" Content="dsSelectAnswerInfo" Width="64.360545870000124" Height="25" Canvas.Left="540.4952889299999" Canvas.Top="167.7557712500022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4735288222925314838" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbReadyAnswerInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbReadyAnswer" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtCurrentGroupIDInfo" Width="36.21552861" Height="21" ControlID="5215609702718612866" Canvas.Left="734.85583480000025" Canvas.Top="171.75577125000129" cm:DataBinding="dsGetCurrentGroupIDInfo" cm:DataBindingField="GroupID" cm:DataType="BigInt" cm:Event="dsOtherOrgInfo" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="TextBox143" Width="87.90309906000067" Height="21" ControlID="5414911147853621844" Canvas.Left="127" Canvas.Top="211.75577125000015" cm:DataBinding="dsInsert" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsUpdate" Content="dsUpdate" Width="110.00000000000057" Height="25" Canvas.Left="263.46285627000009" Canvas.Top="207.75577125000038" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4745204396550712809" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Update_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @SendResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @DesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredUnit" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExperUserIDInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbExperUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Des" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@fupProceedingsInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Attachment" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ReferId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @Id" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UniversityID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @InstitudeID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox169" Width="120" Height="21" ControlID="5397539152246789590" Canvas.Left="382.46285627000054" Canvas.Top="211.75577125000083" cm:DataBinding="dsUpdate" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="64.360545869998361" Height="25" Canvas.Left="540.49528893000149" Canvas.Top="207.75577125000038" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4632786207223072869" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Delete_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @Id" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox171" Width="120" Height="21" Canvas.Left="613.8558348" Canvas.Top="211.75577125000083" cm:ControlID="5525262411784463573" cm:DataBinding="dsDelete" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable166" Content=":نوع دانشگاه" ControlID="4906186255953856790" FontFamily="Tahoma" Canvas.Left="659.72250146666681" Canvas.Top="76.787385576666807" />
            <cm:tzLabel Name="Lable170" Content=":نام دانشگاه" ControlID="4845958621931404428" Canvas.Left="340.35735042333334" Canvas.Top="79.815433316666613" />
            <cm:tzLookUpComboBox Name="cmbInstitude" Width="190" Height="22" ControlID="5208403737968325202" Canvas.Left="446.88711749000026" Canvas.Top="79.270718910000255" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInstitude" cm:DataType="Int" cm:Event="dschkIfInCertainUniversities,dsUniversity" cm:tzDisplayItem="InstituteName" cm:tzValueItem="InstituteID" />
            <cm:tzLookUpComboBox Name="cmbUniversity" Width="190" Height="22" ControlID="5610076180504582867" Canvas.Left="149.35735042333337" Canvas.Top="82.298766649999948" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUniversity" cm:DataType="Int" cm:Event="dsGetGroupIDInfo" cm:tzDisplayItem="UniversityName" cm:tzValueItem="UniversityID" />
            <cm:tzDataSource Name="dsInstitude" Content="dsInstitude" Width="110" Height="25" ControlID="4642974385149322226" Canvas.Left="415.59401709000014" Canvas.Top="76.270718910000141" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Institute_FRM31557" />
            <cm:tzDataSource Name="dsUniversity" Content="dsUniversity" Width="93.039443000000176" Height="25" ControlID="5717205089627864650" Canvas.Left="94.1348497599999" Canvas.Top="76.270718910000141" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_university_By_institudeID_FRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @wfid" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @institudeID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dschkIfInCertainUniversities" Content="dschkIfInCertainUniversities" Width="68.318181780000373" Height="25" ControlID="5378293401337386285" Canvas.Left="16.816667979999352" Canvas.Top="61.270718910000376" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkIfInCertainUniversities_FRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @InstitudeID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @UniReferral" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkIfInCertainUniversities" Content="IfInCertainUniversities" Width="92.608171440001669" Height="20" ControlID="5425298620874923793" Canvas.Left="0.52667831999805514" Canvas.Top="84.298766650000061" cm:DataBinding="dschkIfInCertainUniversities" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5610076180504582867#" cm:TMCol="5610076180504582867#" cm:TVCol="" />
            <cm:TZCheckBox Name="chkSendToTazarv" Content="ارسال به تذرو" Width="87.28498035" Height="15.09834003" ControlID="4731394453799451628" FontFamily="Tahoma" Canvas.Left="317.31884894333308" Canvas.Top="16.233759950000973" cm:Event="dschkSendToTazarvMandatory" />
            <cm:TZCheckBox Name="chkSendToTazarvForSupport" Content="TZCheckBox" Width="51" Height="20" ControlID="5718253916155017387" Canvas.Left="228.91252484999956" Canvas.Top="4.3320999800007485" cm:DataBinding="dschkSendToTazarvForSupport" cm:DataBindingField="res" cm:Event="dschkSendToTazarvMandatory" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4731394453799451628#" />
            <cm:tzDataSource Name="dschkSendToTazarvForSupport" Content="dschkSendToTazarvForSupport" Width="48.431109319999564" Height="25" ControlID="5581871335013438964" Canvas.Left="239.48141552999985" Canvas.Top="17.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_chkSendToTazarv_frm21041 (@UserID)" />
            <cm:TZCheckBox Name="chkSendToTazarvMandatory" Content="TZCheckBox" Width="40" Height="20" ControlID="4769532511991724310" Canvas.Left="160.49130599999984" Canvas.Top="4.3320999800007485" cm:DataBinding="dschkSendToTazarvMandatory" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4731394453799451628#" cm:TVCol="" />
            <cm:tzDataSource Name="dschkSendToTazarvMandatory" Content="dschkSendToTazarvMandatory" Width="45.508693999999878" Height="25" ControlID="4621649417633749580" Canvas.Left="174.40383084999985" Canvas.Top="14.332099980000866" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkSendToTazarvMandatoryFRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResultInfo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnSendResultInfo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @userid" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkSendToTazarv}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkSendToTazarv" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzDataSource Name="dsNationalCode" Content="dsNationalCode" Width="106" Height="25" ControlID="5111840221966599354" Canvas.Left="40.59057818" Canvas.Top="274.23547547" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkCheckProblemType" Content="TZCheckBox" Width="60.000000000000114" Height="20" ControlID="5352530938879572280" Canvas.Left="628.23206200000016" Canvas.Top="306.82476742666722" cm:DataBinding="dsCheckProblemType" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chkPhone" Content="chkPhone" Width="60.616370839999888" Height="20" ControlID="5389058767208499138" Canvas.Left="697.23206200000016" Canvas.Top="306.82476742666722" cm:DataBinding="dsPhone" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
        <cm:tzTextBox Name="txtGroupIDInfo" Width="97.158018519999459" Height="21" ControlID="5214184851893828049" Canvas.Left="267.25772807000061" Canvas.Top="671.22185171" cm:DataBinding="dsGetGroupIDInfo" cm:DataBindingField="GROUPID" cm:DataType="BigInt" cm:Event="dsSelectOfficeExpertIDInfo,dsGetExpertsInfo,dsGroupNameInfo" cm:IsVisibleItem="False" />
        <cm:TzGroupBox Name="GroupBox45" Width="1006" Height="185.08230625" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5609388235331444980" Canvas.Left="6.9999999999999964" Canvas.Top="1048.4343604166666" cm:Header="نتيجه نهايي">
          <Canvas>
            <cm:TZRadioButton Name="rdbOk" Content="توضيحات کافي و مورد قبول مي باشد" Width="210" Height="20" ControlID="5668558491494590571" GroupName="B" Canvas.Left="664.23863636000067" Canvas.Top="138.13743478999913" cm:DefaultValue="true" cm:IsEnableItem="False" />
            <cm:TZRadioButton Name="rdbNotOk" Content="توضيحات کافي نمي باشد" Width="154" Height="20" ControlID="4681715191942200396" GroupName="B" Canvas.Left="449.31293547666638" Canvas.Top="138.13743478999913" cm:DataBindingField="Result" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable37" Content=":نتيجه نهايي" Width="73.5" Height="23" ControlID="4716404251340696191" Canvas.Left="875.23863636000067" Canvas.Top="75.894101449999425" />
            <cm:tzTextBox Name="txtFinalDesc" Width="859.00000000000091" Height="53.24333334" ControlID="5656188629762278570" TextWrapping="Wrap" Canvas.Left="15.238636359999603" Canvas.Top="75.894101449999425" cm:DataBinding="dsSelectAnswer" cm:DataBindingField="Answer" cm:IsMulitiLine="True" cm:Len="1000" />
            <cm:tzLabel Name="Lable157" Content=":پیوست صورت جلسه" Canvas.Left="141.38358198000071" Canvas.Top="7.1547075166669165" cm:ControlID="5331113800448581510" />
            <cm:TzHyperlink Name="HypFile" ControlID="5078728859619786614" Canvas.Left="79.8499999966674" Canvas.Top="13.886169710000626" cm:DataBinding="dsGetAttachment" cm:tzDisplayItem="Title" cm:tzValueItem="LoggingSystemLink" />
            <cm:tzTextBox Name="txtAttachmentName" Width="58" Height="21" Canvas.Left="496.46221834000062" Canvas.Top="85.1830461699991" cm:ControlID="4812790960432435113" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetAttachment" Content="dsGetAttachment" Width="59.241576879999265" Height="25" ControlID="4707690958349479569" Canvas.Left="167.22358198000075" Canvas.Top="104.13743479" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetAttachmentLink_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtAttacmentFile}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FileID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable101" Content=":نتيجه بررسی" Canvas.Left="874.00000000000091" Canvas.Top="7.1547075166669307" cm:ControlID="5041938745585771483" cm:IsVisibleItem="True" />
            <cm:tzTextBox Name="txtResult" Width="49" Height="21" ControlID="5495204189799604917" Canvas.Left="438.4622183400005" Canvas.Top="85.1830461699991" cm:DataBindingField="Result" cm:DataType="Int" cm:Event="dsCheckResult,dsGetAttachment" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtAttacmentFile" Width="58" Height="21" ControlID="4931141982883407186" Canvas.Left="563.46221834000073" Canvas.Top="85.1830461699991" cm:Event="dsGetAttachment" cm:IsVisibleItem="False" />
            <cm:TZFileUpload Name="fupProceedings" Width="236.7996713600009" Height="31" ControlID="5591128339706187262" Canvas.Left="276.02732394666691" Canvas.Top="11.121374179999748" />
            <cm:tzTextBox Name="txtReferID" Width="28.196258030000763" Height="21" ControlID="4949257785239518214" Canvas.Left="231.0273239500001" Canvas.Top="85.1830461699991" cm:DataBinding="dsGetReferID" cm:DataBindingField="Column1" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetReferID" Content="dsGetReferID" Width="59.241576880000054" Height="25" ControlID="5143983118687920988" Canvas.Left="167.22358198000069" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
            <cm:tzDataSource Name="dsValidateUpload" Content="dsValidateUpload" Width="34.680949539999972" Height="25" ControlID="4866688187989973053" Canvas.Left="74.5426324400006" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFileUpload_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @Result" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @ChkAutomat" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLookUpComboBox Name="CmbResult" Width="236.79967136000022" Height="22" ControlID="5302700424741166293" Canvas.Left="636.20032864000075" Canvas.Top="11.121374179999863" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetFinalResult" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsCheckReferAnswer,dsValidateUpload,dsCheckFinalResultDes,dsManResult" cm:IsVisibleItem="True" cm:tzDisplayItem="FinalResult" cm:tzValueItem="FinalResultID" />
            <cm:tzDataSource Name="dsGetFinalResult" Content="dsGetFinalResult" Width="110" Height="25" ControlID="5524048120021345473" Canvas.Left="674.8547008500002" Canvas.Top="8.12137417999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFinalResult_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFormAnswer" Content="chkFormAnswer" Width="42.151035009999973" Height="20" ControlID="5263443334754630598" FontFamily="Tahoma" Canvas.Left="75.072546970000715" Canvas.Top="104.13743478999912" cm:DataBinding="dsCheckFormAnswer" cm:DataBindingField="Result1" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5289141937530042459#4945194059781672514#" />
            <cm:tzDataSource Name="dsCheckFormAnswer" Content="dsCheckFormAnswer" Width="26.607388110000215" Height="25" ControlID="5307244416301889032" Canvas.Left="26.333333330000016" Canvas.Top="81.1830461699992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateQuestionRefer_SaoAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidateUpload" Content="chkValidateUpload" Width="40" Height="20" ControlID="5757621999401718644" Canvas.Left="118.22358198000063" Canvas.Top="80.1213741799994" cm:DataBinding="dsValidateUpload" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4693086156765405401#" />
            <cm:tzLabel Name="Lable102" Content=":بارگذاری صورتجلسه" Width="113.37333333333334" Height="24.483333333333334" Canvas.Left="513.82699530666764" Canvas.Top="8.6380408466665273" cm:ControlID="4693086156765405401" cm:IsVisibleItem="True" />
            <cm:TZCheckBox Name="chkCheckAnswer" Content="chkCheckAnswer" Width="50" Height="20" ControlID="5382784310684242131" FontFamily="Tahoma" Canvas.Left="303.46221833999994" Canvas.Top="80.1213741799994" cm:DataBinding="dsCheckReferAnswer" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsCheckReferAnswer" Content="dsCheckReferAnswer" Width="33" Height="25" ControlID="5209253164384725769" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="268.223581980001" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckReferAnswer_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Result" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkResult" Content="chkResult" Width="42" Height="20" ControlID="4615431540503671584" FontFamily="Tahoma" Canvas.Left="387.46221834000039" Canvas.Top="86.1830461699991" cm:DataBinding="dsCheckResult" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5331113800448581510#5078728859619786614#" />
            <cm:tzDataSource Name="dsCheckResult" Content="dsCheckResult" Width="32" Height="25" ControlID="4777808831952847071" Canvas.Left="354.46221834000028" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckResult_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Result" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsCheckFinalResultDes" Content="dsCheckFinalResultDes" Width="33.00000000000108" Height="25" ControlID="5464672363029610075" Canvas.Left="268.2235819799991" Canvas.Top="104.13743479000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateQuestionReferAnswer_SaoAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkCheckResultDes" Content="chkCheckResultDes" Width="51.23863636000037" Height="20" ControlID="4904625854686664683" FontFamily="Tahoma" Canvas.Left="302.22358198" Canvas.Top="109.13743479" cm:DataBinding="dsCheckFinalResultDes" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
            <cm:tzLabel Name="Lable117" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="874.00000000000091" Canvas.Top="42.410768116666034" cm:ControlID="5289141937530042459" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbReadyAnswer" Width="236.23148953999942" Height="22" ControlID="4945194059781672514" Canvas.Left="636.20032864000063" Canvas.Top="44.89410145" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectReadyAnswer" cm:Event="dsSelectAnswer" cm:tzDisplayItem="Title" cm:tzValueItem="ReadSaoAnswerID" />
            <cm:tzDataSource Name="dsSelectReadyAnswer" Content="dsSelectReadyAnswer" Width="110" Height="25" ControlID="4939650566442929498" Canvas.Left="674.85470085" Canvas.Top="41.894101449999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer {@cmbMainSubject},(@WorkflowInstanceID)">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectAnswer" Content="dsSelectAnswer" Width="110" Height="25" ControlID="4915910715601269065" Canvas.Left="674.85470085" Canvas.Top="75.1213741799994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " />
            <cm:TZCheckBox Name="CheckBox120" Content="TZCheckBox" Width="32" Height="20" ControlID="4839697049987806189" Canvas.Left="430.4622183400005" Canvas.Top="109.13743479000006" cm:DataBinding="dsCheckFormAnswer" cm:DataBindingField="Result2" cm:DefaultValue="" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5041938745585771483#5302700424741166293#" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/11/17 17:14:23', 'ae28bcc8-fe7c-4f93-8c50-972a3363bc97', 0, N'', N'{"formID": "21041" ,"components": [{"value": "","key": "4839697049987806189","label": "CheckBox120","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result2"},{"value": "","key": "5123824079997506024","label": "CheckBox80","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5382784310684242131","label": "chkCheckAnswer","controlType": "checkbox","caption": "chkCheckAnswer" ,"DataBindingField" : "Result"},{"value": "","key": "5568440564971718604","label": "chkCheckEmail","controlType": "checkbox","caption": "chkCheckEmail" ,"DataBindingField" : "res"},{"value": "","key": "5352530938879572280","label": "chkCheckProblemType","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4904625854686664683","label": "chkCheckResultDes","controlType": "checkbox","caption": "chkCheckResultDes" ,"DataBindingField" : "Result"},{"value": "","key": "5656869007242304861","label": "chkFileDeleteVal","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5263443334754630598","label": "chkFormAnswer","controlType": "checkbox","caption": "chkFormAnswer" ,"DataBindingField" : "Result1"},{"value": "","key": "5425298620874923793","label": "chkIfInCertainUniversities","controlType": "checkbox","caption": "IfInCertainUniversities" ,"DataBindingField" : "res"},{"value": "","key": "4839663788828962407","label": "chkIsAutomat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "4793634241596138168","label": "chkNationalCode","controlType": "checkbox","caption": "chkNationalCode" ,"DataBindingField" : "result"},{"value": "","key": "5389058767208499138","label": "chkPhone","controlType": "checkbox","caption": "chkPhone" ,"DataBindingField" : "Result"},{"value": "","key": "5203196081588324600","label": "chkReferValidate","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4615431540503671584","label": "chkResult","controlType": "checkbox","caption": "chkResult" ,"DataBindingField" : "Result"},{"value": "","key": "4731394453799451628","label": "chkSendToTazarv","controlType": "checkbox","caption": "ارسال به تذرو" ,"DataBindingField" : ""},{"value": "","key": "5718253916155017387","label": "chkSendToTazarvForSupport","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4769532511991724310","label": "chkSendToTazarvMandatory","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5118256872779995066","label": "chkValidateAttachment","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5757621999401718644","label": "chkValidateUpload","controlType": "checkbox","caption": "chkValidateUpload" ,"DataBindingField" : "Result"},{"value": "","key": "4937550961841903116","label": "chkValidateUploadInfo","controlType": "checkbox","caption": "chkValidateUpload" ,"DataBindingField" : "Result"},{"key": "5195609748428162630","label": "cmbDesiredUnitInfo","value": "", "controlType": "dropdown","options":""},{"key": "5649431032226153954","label": "cmbExperUserIDInfo","value": "", "controlType": "dropdown","options":""},{"key": "5208403737968325202","label": "cmbInstitude","value": "", "controlType": "dropdown","options":""},{"key": "5734364465859836924","label": "cmbMainSubject","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5274322539269778963","label": "cmbPriority","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4659311251708217602","label": "cmbProblemType","value": "", "controlType": "dropdown","options":""},{"key": "4945194059781672514","label": "cmbReadyAnswer","value": "", "controlType": "dropdown","options":""},{"key": "4728016897295625884","label": "cmbReadyAnswerInfo","value": "", "controlType": "dropdown","options":""},{"key": "5302700424741166293","label": "CmbResult","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4948200665753577473","label": "cmbResultInfo","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5610076180504582867","label": "cmbUniversity","value": "", "controlType": "dropdown","options":""},{"key":"4955571905321158146" , "dataSourceName":"DataSource123" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4645744200936818873" , "dataSourceName":"DataSource79" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5137999111554449378" , "dataSourceName":"dsAttaches" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_ReadAttachmentForfrm210141 {@txtguid} ,(@WorkflowInstanceID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5363169941782671292" , "dataSourceName":"dsCheckEmail" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateEmail" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5464672363029610075" , "dataSourceName":"dsCheckFinalResultDes" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateQuestionReferAnswer_SaoAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5307244416301889032" , "dataSourceName":"dsCheckFormAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateQuestionRefer_SaoAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4853680612637721892" , "dataSourceName":"dsCheckProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckProblemType_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5209253164384725769" , "dataSourceName":"dsCheckReferAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckReferAnswer_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4777808831952847071" , "dataSourceName":"dsCheckResult" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckResult_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5378293401337386285" , "dataSourceName":"dschkIfInCertainUniversities" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkIfInCertainUniversities_FRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5581871335013438964" , "dataSourceName":"dschkSendToTazarvForSupport" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_chkSendToTazarv_frm21041 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4621649417633749580" , "dataSourceName":"dschkSendToTazarvMandatory" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkSendToTazarvMandatoryFRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4632786207223072869" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Delete_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4763756049839051263" , "dataSourceName":"dsFileDeleteVal" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4707690958349479569" , "dataSourceName":"dsGetAttachment" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetAttachmentLink_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4613902331168262520" , "dataSourceName":"dsGetChartNode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetChartNodeIDForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4843639403845914334" , "dataSourceName":"dsGetCurrentGroupIDInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetCyrrentGroupID_frm31116" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5162293064969290818" , "dataSourceName":"dsGetExpertsInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpertID_frm3116" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5524048120021345473" , "dataSourceName":"dsGetFinalResult" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFinalResult_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5073551071295449599" , "dataSourceName":"dsGetFinalResultInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFinalResult_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5693625512062971190" , "dataSourceName":"dsGetgridUser" , "controlType": "datasource",  "selectQuery" :"select {@grvAttach.SelectedRowItem}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5032837820067484785" , "dataSourceName":"dsGetGroupIDInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetGroupID_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4944608555118802285" , "dataSourceName":"dsGetGrv" , "controlType": "datasource",  "selectQuery" :"select {@GridView72.SelectedRowItem} AS Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5143983118687920988" , "dataSourceName":"dsGetReferID" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5437145312846912627" , "dataSourceName":"dsGroupNameInfo" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetGroupName_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4644121629476164323" , "dataSourceName":"dsGrv" , "controlType": "datasource",  "selectQuery" :"select {@grvAttach}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5590257507101018373" , "dataSourceName":"dsGUID" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID {@txtguid}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4758810087077352413" , "dataSourceName":"dsInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Insert_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4642974385149322226" , "dataSourceName":"dsInstitude" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Institute_FRM31557" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm21041 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5111840221966599354" , "dataSourceName":"dsNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5456061131679790609" , "dataSourceName":"dsPhone" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_ValidMobileNumber" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5622603866125465760" , "dataSourceName":"dsPortalAttachments" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadPortalAttachmentForfrm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4951765384964759143" , "dataSourceName":"dsPriority" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetPriority_Frm20937" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415135109535469888" , "dataSourceName":"dsRefergrvValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5523819363780068150" , "dataSourceName":"dsReferIDInfo" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5360335574965201173" , "dataSourceName":"dsSearchAllWF" , "controlType": "datasource",  "selectQuery" :"SP_CU_SearchAllWF_ForSaoSupport" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5394642795927386120" , "dataSourceName":"dsSearchRefer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchRefer_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4915910715601269065" , "dataSourceName":"dsSelectAnswer" , "controlType": "datasource",  "selectQuery" :"SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4735288222925314838" , "dataSourceName":"dsSelectAnswerInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5538098029530721496" , "dataSourceName":"dsSelectOfficeExpertIDInfo" , "controlType": "datasource",  "selectQuery" :"SELECT TOP  1 a.OfficeExpertID from  [dbo].Tbl_Cu_Base_OrganizationalUnit a WHERE  GroupID={@txtGroupIDInfo}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5306534729843751800" , "dataSourceName":"dsSelectProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetProblemType_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4939650566442929498" , "dataSourceName":"dsSelectReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer {@cmbMainSubject},(@WorkflowInstanceID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5312298001233396630" , "dataSourceName":"dsSelectReadyAnswerInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5212332765325729286" , "dataSourceName":"dsSubsetInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetDesiredUnit_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5717205089627864650" , "dataSourceName":"dsUniversity" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_university_By_institudeID_FRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4745204396550712809" , "dataSourceName":"dsUpdate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5094590819579418620" , "dataSourceName":"dsValidateAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateAttachment_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4866688187989973053" , "dataSourceName":"dsValidateUpload" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFileUpload_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4811721574090498970" , "dataSourceName":"dsValidateUploadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFileUpload_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5753063740601993322" , "dataSourceName":"dtsFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_FullName_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5763559335780557314" , "dataSourceName":"dtsGetPortalName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetPortalName_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5287576350964428431","label": "TextBox120","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5414911147853621844","label": "TextBox143","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5397539152246789590","label": "TextBox169","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5525262411784463573","label": "TextBox171","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4812790960432435113","label": "txtAttachmentName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931141982883407186","label": "txtAttacmentFile","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5735039865522523619","label": "txtChartNodeID","controlType": "textbox", "type": "" , "DataBindingField" : "ChartNodeID"},{"value": "","key": "5215609702718612866","label": "txtCurrentGroupIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GroupID"},{"value": "","key": "5588901027094583235","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5409369756743812385","label": "txtDescInfo","controlType": "textbox", "type": "" , "DataBindingField" : "Response"},{"value": "","key": "5410123904378380874","label": "txtEmail","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5656188629762278570","label": "txtFinalDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Answer"},{"value": "","key": "5279528291598107148","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5214184851893828049","label": "txtGroupIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GROUPID"},{"value": "","key": "5321915798760308165","label": "txtGroupNameInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GroupName"},{"value": "","key": "5565421426804681014","label": "txtgrv","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5190992840719060449","label": "txtguid","controlType": "textbox", "type": "" , "DataBindingField" : "GUDID"},{"value": "","key": "4911623689532144782","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4876911667450903111","label": "txtOfficeExpertIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "OfficeExpertID"},{"value": "","key": "5684013610708670363","label": "txtPhone","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4809213762955760342","label": "txtPortalDes","controlType": "textbox", "type": "" , "DataBindingField" : "Descript"},{"value": "","key": "5624003739167460820","label": "txtPortalEntryID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4798298711155420350","label": "txtPortalLogID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4819760547104058387","label": "txtPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5307054846183699357","label": "txtPotalName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4819422034654599507","label": "txtReferCurrent","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4949257785239518214","label": "txtReferID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5491021531889411585","label": "txtReferIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5495204189799604917","label": "txtResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "4917072605639784939","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "5231956594990321764","label": "TxtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5453529218873335310","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218500402960342909","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4838605854342166465","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4757820249046486749","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4905698283024938119","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5269038917764596706","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5506106183357399091","data": [{"key": "5588901027094583235","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5269038917764596706","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5734364465859836924","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5159633470799826347","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218500402960342909","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": true },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4899345810615436228","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4758356032329010723","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5029762373589799426","data": [{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4948200665753577473","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5195609748428162630","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5649431032226153954","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5208403737968325202","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5610076180504582867","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5273781445844994672","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم فرآیند درخواست پشتیبانی سامانه سجاد',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1099" Height="1456.03333333" Background="White">
  <Canvas Width="1054" Height="1304">
    <ViewLayouts>
      <ViewLayoutItem Name="بررسی درون سازمان" ID="5453529218873335310" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218500402960342909" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه نهایی" ID="4838605854342166465" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4757820249046486749" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4905698283024938119" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5269038917764596706" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ثبت پرسش" ID="5506106183357399091" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5269038917764596706" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5734364465859836924" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="مشاهده نهایی اداره" ID="5159633470799826347" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218500402960342909" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="اتومات" ID="4899345810615436228" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259980320128269342" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4680259133990155419" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5656188629762278570" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4693086156765405401" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591128339706187262" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5596692579498650132" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بررسی کارشناس پشتیبان سامانه سجاد" ID="4758356032329010723" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4684984903127663695" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4676825254353781655" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4858775235086145070" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4783877636946764447" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5021001924506054425" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5588901027094583235" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5279528291598107148" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4733227099612085787" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5668558491494590571" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681715191942200396" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="بررسی کاربر مشاهده کننده" ID="5029762373589799426" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5609388235331444980" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4948200665753577473" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5195609748428162630" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5649431032226153954" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5208403737968325202" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5610076180504582867" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5307054846183699357" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5447864216398602997" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5392809815104644429" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5684013610708670363" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5410123904378380874" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4659311251708217602" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4911623689532144782" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4819760547104058387" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5274322539269778963" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5700912637587499592" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5273781445844994672" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>4635659206458993792</ID>
        <Name>تلفن تماس</Name>
        <Condition>({@chkPhone.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تلفن تماس وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5389058767208499138</ComponentID>
            <ComponentName>chkPhone</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5731953549719914661</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4632295450849452445</ID>
        <Name>ایمیل </Name>
        <Condition>({@chkCheckEmail.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>ایمیل وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5568440564971718604</ComponentID>
            <ComponentName>chkCheckEmail</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4777736926483232342</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5200747115578219122</ID>
        <Name>چک کردن کد ملی</Name>
        <Condition>({@chkNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده معتبر نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4793634241596138168</ComponentID>
            <ComponentName>chkNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5311943642425436040</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5415861941485941443</ID>
        <Name>پساخ کارشناس</Name>
        <Condition>({@chkCheckAnswer.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5382784310684242131</ComponentID>
            <ComponentName>chkCheckAnswer</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5283938535680513962</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5179173474267205878</ID>
        <Name>چک نتیجه به متقاضی</Name>
        <Condition>({@chkSendToTazarvMandatory.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد نتیجه بررسی را انتخاب نمایید و یا اگر پشتیبانی هستید، در صورت خالی بودن این فیلد، انتخاب گزینه ارسال به تذرو اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4769532511991724310</ComponentID>
            <ComponentName>chkSendToTazarvMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4696636621051111380</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1032" Height="1263" Background="#FF06427F" ControlID="4986405015211422657" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox32" Width="1006" Height="460.50318181999967" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4612881781226092198" Canvas.Left="7" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:TZTabControl Name="TabControl28" Width="983" Height="424.01984848666632" ControlID="5453843684688870228" Canvas.Left="3" Canvas.Top="8">
              <cm:TZTabItem HeaderText="مشخصات درخواست">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox3" Width="964" Height="387.34333333" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4905698283024938119" Canvas.Left="5" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzLabel Name="Lable6" Content=": ساعت ثبت" Width="120" Height="23" ControlID="5558400471724855202" Canvas.Left="432.59666667000067" Canvas.Top="6.0985910466667406" />
                      <cm:tzLabel Name="Lable13" Content=": تاريخ ثبت" Width="120" Height="23" ControlID="4917895951280043116" Canvas.Left="186" Canvas.Top="6.723333323333236" />
                      <cm:TzPersianTime Name="prtTime" Width="43" Height="20" ControlID="5447864216398602997" Canvas.Left="380.59666667000067" Canvas.Top="10.204694000416623" cm:DefaultValue="$CurrentTime" cm:Len="11" cm:TabIndex="2" />
                      <cm:PDatePicker Name="prcDate" Width="120" Height="20" ControlID="5392809815104644429" TabIndex="3" Canvas.Left="91.5" Canvas.Top="9.723333323333236" cm:DefaultValue="$CurrentDate" />
                      <cm:tzTextBox Name="txtPhone" Width="149.09466019" Height="21" ControlID="5684013610708670363" Canvas.Left="282.50200648000043" Canvas.Top="39.098591039999974" cm:DataType="NVarChar" cm:Event="dsPhone" cm:Len="11" cm:TabIndex="5" />
                      <cm:tzLabel Name="Lable35" Content=":شماره همراه" ControlID="5749413498697313151" Canvas.Left="432.05397407000009" Canvas.Top="35.050481336666678" />
                      <cm:tzLabel Name="Lable59" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="497.59666667000113" Canvas.Top="32.206666656666584" cm:ControlID="4725301455225641895" />
                      <cm:tzDataSource Name="dsPhone" Content="dsPhone" Width="77" Height="25" ControlID="5456061131679790609" Canvas.Left="321.59666667" Canvas.Top="33.40859105" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_ValidMobileNumber">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPhone}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNum" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzLabel Name="Lable5" Content=": نام کاربري" Width="67" Height="23" ControlID="5046534906102027490" Canvas.Left="861" Canvas.Top="6.7233333233332644" />
                      <cm:tzLabel Name="Lable14" Content=": موضوع اصلي" Width="82.5" Height="28" ControlID="5128267890403750918" Canvas.Left="861.5" Canvas.Top="33.615257710000037" />
                      <cm:tzTextBox Name="txtFullName" Width="216.99999999999977" Height="21" ControlID="5279528291598107148" Canvas.Left="643.00000000000023" Canvas.Top="8.7233333233332644" cm:DataBinding="dtsFullName" cm:DataBindingField="UserName" />
                      <cm:tzLabel Name="Lable32" Content=": شرح" Width="43" Height="26" ControlID="4754007848503515472" Canvas.Left="861.00000000000057" Canvas.Top="140.40859105000044" />
                      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="342" Height="22" ControlID="5734364465859836924" Canvas.Left="517.00000000000023" Canvas.Top="36.408591050000041" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataBindingField="WorkflowId" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsSelectReadyAnswerInfo" cm:SelectedDataBinding="dtsGetPortalName" cm:TabIndex="4" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                      <cm:tzLabel Name="Lable36" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="934.00000000000023" Canvas.Top="31.891924390000042" cm:ControlID="4825980631278188069" />
                      <cm:tzLabel Name="Lable3738" Content="*" Width="16" Height="18" Foreground="#FFFF0000" Canvas.Left="896.00000000000057" Canvas.Top="142.57325988666713" cm:ControlID="5176021053831209478" />
                      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="110.0000000033333" Height="25" ControlID="4791881557067791466" Canvas.Left="639.40666666666675" Canvas.Top="33.40859105" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm21041 (@UserID)">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalLogID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="txtDesc" Width="852" Height="216.28674010666666" ControlID="5588901027094583235" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="7" Canvas.Top="142.57325989" cm:IsMulitiLine="True" cm:Len="1000" />
                      <cm:tzLabel Name="Lable50" Content=": پست الکترونیک" Width="99.000000000000568" Height="24" Canvas.Left="185.99999999999986" Canvas.Top="34.61525770999998" cm:ControlID="5045947217997467757" />
                      <cm:tzTextBox Name="txtEmail" Width="177" Height="21" Canvas.Left="8.00000000000005" Canvas.Top="37.61525770999998" cm:ControlID="5410123904378380874" cm:DataType="NVarChar" cm:Event="dsCheckEmail" cm:Len="50" cm:TabIndex="6" />
                      <cm:tzTextBox Name="txtPotalName" Width="344.80999999999887" Height="21" ControlID="5307054846183699357" Canvas.Left="516.59666667000113" Canvas.Top="8.72307942" cm:DataBinding="dtsGetPortalName" cm:DataBindingField="FullName" cm:IsEnableItem="True" cm:TabIndex="1" />
                      <cm:tzLabel Name="Lable7374" Content=":نوع مشکل" ControlID="4876010017240978348" Canvas.Left="860.14000000000033" Canvas.Top="63.92525771666665" />
                      <cm:tzLookUpComboBox Name="cmbProblemType" Width="342.40333332999887" Height="22" ControlID="4659311251708217602" Canvas.Left="516.59666667000113" Canvas.Top="66.40859105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectProblemType" cm:DataType="Int" cm:Event="dschkWFFollowUpCode" cm:tzDisplayItem="Problem" cm:tzValueItem="ProblemTypeID" />
                      <cm:tzDataSource Name="dsSelectProblemType" Content="dsSelectProblemType" Width="110" Height="25" ControlID="5306534729843751800" Canvas.Left="639.40666666666675" Canvas.Top="63.408591050000041" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetProblemType_frm21041" />
                      <cm:tzLabel Name="Lable74" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="267.0000000000004" Canvas.Top="31.891924390000042" cm:ControlID="5080047452072082408" />
                      <cm:tzTextBox Name="txtPortalDes" Width="852" Height="216.28674010666666" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="7" Canvas.Top="142.57325989" cm:ControlID="4809213762955760342" cm:DataBinding="dtsGetPortalName" cm:DataBindingField="Descript" cm:IsMulitiLine="True" cm:Len="1000" />
                      <cm:tzDataSource Name="dsCheckProblemType" Content="dsCheckProblemType" Width="76.000000000000114" Height="25" Background="#FFDDDDDD" ControlID="4853680612637721892" Canvas.Left="457.1959799" Canvas.Top="227.57325989000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckProblemType_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrienProblem}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OrienProblem" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnQuestion}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnQuestion" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsCheckEmail" Content="dsCheckEmail" Width="110" Height="25" ControlID="5363169941782671292" Canvas.Left="48.183012189999886" Canvas.Top="33.408591050000041" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ValidateEmail">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtEmail}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Email" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:TZCheckBox Name="chkCheckEmail" Content="chkCheckEmail" Width="59.999999999999886" Height="20" ControlID="5568440564971718604" Canvas.Left="15.668903800000116" Canvas.Top="4.61525770999998" cm:DataBinding="dsCheckEmail" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtNationalCode" Width="149.09466019" Height="21" ControlID="4911623689532144782" Canvas.Left="282.50200648000043" Canvas.Top="68.891924380000034" cm:Event="dsNationalCode,test" cm:Len="100" />
                      <cm:tzLabel Name="Lable93" Content=":کد ملی" ControlID="5370197942083422256" Canvas.Left="432.59666667000067" Canvas.Top="65.408591049999984" />
                      <cm:tzLabel Name="Lable94" Content="*" Width="18" Height="19.999999999999986" Foreground="#FFFF0000" Canvas.Left="475.19333333666748" Canvas.Top="64.891924383333389" cm:ControlID="5484199428562419402" cm:ForeColor="#FFFF0000" />
                      <cm:TZCheckBox Name="chkNationalCode" Content="chkNationalCode" Width="58.403333329999839" Height="20" ControlID="4793634241596138168" FontFamily="Tahoma" Canvas.Left="271.50200647999992" Canvas.Top="4.61525770999998" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                      <cm:TZRadioButton Name="rbnOrienProblem" Content="مشکل در سامانه" ControlID="4676825254353781655" FontFamily="Tahoma" Canvas.Left="750.40666666666675" Canvas.Top="154.57325988666736" cm:DefaultValue="true" cm:Event="dsCheckProblemType" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:TZRadioButton Name="rbnQuestion" Content="سوال آیین نامه ای" FontFamily="Tahoma" Canvas.Left="617.48000000000025" Canvas.Top="154.57325988666753" cm:ControlID="4858775235086145070" cm:Event="dsCheckProblemType" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:tzTextBox Name="txtPortalUserID" Width="178" Height="21" HorizontalAlignment="Right" ControlID="4819760547104058387" Canvas.Left="7" Canvas.Top="67.40859105" cm:DataType="BigInt" cm:Event="dsSearchWfFromPortal" cm:IsVisibleItem="True" />
                      <cm:tzLabel Name="Lable127" Content=": شناسه کاربری" ControlID="4724166171553961079" Canvas.Left="186" Canvas.Top="65.408591049999984" />
                      <cm:tzLookUpComboBox Name="cmbPriority" Width="342" Height="22" ControlID="5274322539269778963" Canvas.Left="516.59666667000113" Canvas.Top="97.40859105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsPriority" cm:DataType="Int" cm:DefaultValue="$اولی" cm:tzDisplayItem="PriorityName" cm:tzValueItem="PriorityID" />
                      <cm:tzLabel Name="Lable115" Content=": اولویت" ControlID="5248050679982927604" Canvas.Left="857" Canvas.Top="96.408591050000041" />
                      <cm:tzDataSource Name="dsPriority" Content="dsPriority" Width="110" Height="25" ControlID="4951765384964759143" Canvas.Left="639.40666666666675" Canvas.Top="95.891924383333375" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetPriority_Frm20937" />
                      <cm:tzDataSource Name="dtsFullName" Content="dtsFullName" Width="110" Height="25" ControlID="5753063740601993322" Canvas.Left="7.0000000000001705" Canvas.Top="143.57325988666742" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_FullName_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@TxtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="txtPortalLogID" Width="81" Height="21" ControlID="4798298711155420350" Canvas.Left="130.50000000000006" Canvas.Top="198.94195979999995" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtPortalEntryID" Width="68" Height="21" ControlID="5624003739167460820" Canvas.Left="138.33919598000006" Canvas.Top="164.57325988666742" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                      <cm:tzDataSource Name="dsGetgridUser" Content="dsGetgridUser" Width="110" Height="25" ControlID="5693625512062971190" Canvas.Left="7.0000000000001137" Canvas.Top="227.57325988666719" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@grvAttach.SelectedRowItem}" />
                      <cm:tzDataSource Name="dsValidateAttachment" Content="dsValidateAttachment" Width="110" Height="25" ControlID="5094590819579418620" Canvas.Left="7.0000000000001084" Canvas.Top="261.57325988666707" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateAttachment_frm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="DataSource79" Content="dsFileDeleteVal" Width="110" Height="25" Canvas.Left="7.0000000000001137" Canvas.Top="295.57325988666707" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4645744200936818873" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtgrv}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GridID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsPortalAttachments" Content="dsPortalAttachments" Width="110" Height="25" ControlID="5622603866125465760" Canvas.Left="7.0000000000001137" Canvas.Top="329.57325988666696" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadPortalAttachmentForfrm21041">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsGrv" Content="dsGrv" Width="85.500000000000057" Height="25" ControlID="4644121629476164323" Canvas.Left="126" Canvas.Top="227.57325989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@grvAttach}" />
                      <cm:tzTextBox Name="txtgrv" Width="56" Height="21" ControlID="5565421426804681014" Canvas.Left="214.50200648000003" Canvas.Top="231.57325989000003" cm:DataBinding="dsGrv" cm:DataBindingField="Column1" cm:Event="dsFileDeleteVal" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtChartNodeID" Width="58" Height="21" ControlID="5735039865522523619" Canvas.Left="279.50200648000003" Canvas.Top="231.57325989000003" cm:DataBinding="dsGetChartNode" cm:DataBindingField="ChartNodeID" cm:IsVisibleItem="False" />
                      <cm:TZCheckBox Name="chkIsAutomat" Content="TZCheckBox" Width="60.000000000000114" Height="20" ControlID="4839663788828962407" Canvas.Left="729.24333333333379" Canvas.Top="227.57325989000003" cm:Event="dsValidateUpload,dsValidateUploadInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5279528291598107148#" cm:IsVisibleItem="False" cm:Persistable="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5307054846183699357#4809213762955760342#5259234939364520244#4942352716982036217#" />
                      <cm:tzDataSource Name="dsGUID" Content="dsGUID" Width="105" Height="25" ControlID="5590257507101018373" Canvas.Left="345.65919768" Canvas.Top="261.57325989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetNewGUID {@txtguid}" />
                      <cm:tzTextBox Name="txtguid" Width="38.999999999999886" Height="21" ControlID="5190992840719060449" Canvas.Left="459.65919768000009" Canvas.Top="261.57325989000003" cm:DataBinding="dsGUID" cm:DataBindingField="GUDID" cm:Event="dsGUID,dsSearchSaoResult" cm:IsVisibleItem="False" />
                      <cm:tzTextBox Name="txtUserID" Width="39" Height="21" ControlID="4917072605639784939" Canvas.Left="459.65919768" Canvas.Top="283.57325989" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                      <cm:TZCheckBox Name="CheckBox80" Content="TZCheckBox" Width="120" Height="20" Canvas.Left="507.65919768" Canvas.Top="262.57325989000003" cm:ControlID="5123824079997506024" cm:DataBinding="dsFileDeleteVal" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5745325606417398951#" />
                      <cm:tzDataSource Name="DataSource123" Width="105.00000000000011" Height="25" ControlID="4955571905321158146" Canvas.Left="345.65919768" Canvas.Top="312.70577889" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
                      <cm:tzDataSource Name="dsGetChartNode" Content="dsGetChartNode" Width="110" Height="25" ControlID="4613902331168262520" Canvas.Left="459.6591976800002" Canvas.Top="312.70577888999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetChartNodeIDForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsFileDeleteVal" Content="dsFileDeleteVal" Width="110" Height="25" ControlID="4763756049839051263" Canvas.Left="578.65919768000026" Canvas.Top="312.70577888999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm20300">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtgrv}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GridID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzTextBox Name="TextBox120" Width="27" Height="21" ControlID="5287576350964428431" Canvas.Left="689.65919768000026" Canvas.Top="316.70577888999992" cm:DataBinding="DataSource123" cm:DataBindingField="Column1" cm:Event="dsMainSubject" cm:IsVisibleItem="False" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzTextBox Name="TxtUserID" Width="120" Height="10" ControlID="5231956594990321764" Canvas.Left="256.5" Canvas.Top="-18.966666659999987" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:Event="dtsFullName" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="پیوست ها">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox216217" Width="961" Height="379.53651515333297" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5700912637587499592" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="grvAttach" Width="933" Height="343.05318181999962" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4846713678857291603" ItemsSource="{Binding ElementName=dsAttaches, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsAttaches" cm:Event="dsGrv,dsFileDeleteVal" cm:EventForAdd="dsAttaches" cm:EventForDelete="dsAttaches" cm:Form="20301" cm:FormName="افزودن پیوست" cm:KeyField="Id" cm:ParamValues="5190992840719060449¢guid" cm:UserCanDelete="True" cm:UserCanEdit="False" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Id" DecimalMark="False" HeaderText="Id" IsRowColorField="False" KeyField="True" SortMemberPath="Id">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Id}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="fullname" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="fullname">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding fullname}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="fileId" DataTextField="fileId" DecimalMark="False" HeaderText="فایل" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="fileId">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding fileId}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding fileId}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="File2" DataTextField="File2" DecimalMark="False" HeaderText="تصویر خطا" HyperLinkType="URL" IsRowColorField="False" KeyField="False" SortMemberPath="File2">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding File2}" Command="{Binding Source={StaticResource MainCommands}, Path=ShowExtenalLink}" CommandParameter="{Binding File2}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachTitle" DecimalMark="False" HeaderText="عنوان پیوست" IsRowColorField="False" KeyField="False" SortMemberPath="AttachTitle">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachTitle}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="AttachDate">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachDate}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsAttaches" Content="dsAttaches" Width="92" Height="25" ControlID="5137999111554449378" Canvas.Left="49.180012830000607" Canvas.Top="50.892617449999946" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_ReadAttachmentForfrm210141 {@txtguid} ,(@WorkflowInstanceID)">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzLabel Name="Lable118" Content="tzLabel" Width="64.7380675200003" Height="23" Background="#FFC5DEF7" ControlID="5745325606417398951" Foreground="#FFC5DEF7" Canvas.Left="810.92719869999974" Canvas.Top="9.9999999999999432" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:TZCheckBox Name="chkValidateAttachment" Content="TZCheckBox" Width="120" Height="20" ControlID="5118256872779995066" Canvas.Left="756.30082987000037" Canvas.Top="-21" cm:DataBinding="dsValidateAttachment" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="سوابق درخواست">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox89" Width="961" Height="379.53651515333297" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5273781445844994672" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvWfFromPortal" Width="933" Height="341.05318181999962" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5128432528941420333" ItemsSource="{Binding ElementName=dsSearchAllWF, Path=DataItems}" Canvas.Left="8" Canvas.Top="10" cm:BindingForm="dsSearchAllWF" cm:IsSearchable="True" cm:KeyField="WorkFlowInstanceID">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WorkFlowInstanceID" DataTextField="WorkFlowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowInstanceID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <HyperlinkButton Content="{Binding WorkFlowInstanceID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WorkFlowInstanceID}" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowName">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowName}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی/نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="InsertDateTime" DecimalMark="False" HeaderText="تاریخ شروع فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="InsertDateTime">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding InsertDateTime}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemType" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemType">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemType}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descrpit" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Descrpit">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descrpit}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="نتیجه نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="status">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding status}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:TZButton Name="Button113" Content="جستجو" Width="75" Height="23" ControlID="5206706301334893092" Canvas.Left="8" Canvas.Top="10" cm:Event="dsSearchAllWF" />
                      <cm:tzDataSource Name="dsSearchAllWF" Content="dsSearchAllWF" Width="110" Height="25" ControlID="5360335574965201173" Canvas.Left="308.28056275999995" Canvas.Top="287.22613636666676" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_SearchAllWF_ForSaoSupport">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @IsAutomat" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@gdvWfFromPortal}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPortalUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalUserID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
            </cm:TZTabControl>
            <cm:tzDataSource Name="dtsGetPortalName" Content="dtsGetPortalName" Width="104" Height="25" ControlID="5763559335780557314" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="365.27728813" Canvas.Top="284.01093611" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetPortalName_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFileDeleteVal" Content="TZCheckBox" Width="60.000000000000227" Height="20" ControlID="5656869007242304861" Canvas.Left="550.51005025" Canvas.Top="284.01093610666658" cm:DataBinding="dsFileDeleteVal" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5382151786499929743#" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox33" Width="1006" Height="546.29481496" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5269038917764596706" Canvas.Left="7" Canvas.Top="490.01430454" cm:Header="نتیجه بررسی">
          <Canvas>
            <cm:tzDataGrid Name="GridView72" Width="978" Height="201.44784526" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5280655504225515880" ItemsSource="{Binding ElementName=dsSearchRefer, Path=DataItems}" Canvas.Left="8" Canvas.Top="312.74764414000032" cm:AllowPaging="False" cm:BindingForm="dsSearchRefer" cm:Event="dsGetGrv" cm:EventForAdd="dsCheckReferAnswer" cm:EventForDelete="dsCheckReferAnswer" cm:EventForEdit="dsCheckReferAnswer" cm:KeyField="Id" cm:ParamValues="5734364465859836924¢MainSubject$4839663788828962407¢IsAutomat$5231956594990321764¢RegUserID$4819422034654599507¢id" cm:UserCanDelete="False" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="-1">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="40" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Id" DecimalMark="False" HeaderText="id" IsRowColorField="False" KeyField="True" SortMemberPath="Id">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Id}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Column1" DecimalMark="False" HeaderText="کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="Column1">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Column1}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Res" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Res">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Res}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Chart" DecimalMark="False" HeaderText="ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="Chart">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Chart}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Expert" DecimalMark="False" HeaderText="کاربر ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="Expert">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Expert}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="115" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="Attachment" DataTextField="Attachment" DecimalMark="False" HeaderText="پیوست صورت جلسه" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="Attachment">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Attachment}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding Attachment}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Des" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Des">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Des}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsRefergrvValidate" Content="dsRefergrvValidate" Width="93" Height="25" Canvas.Left="25.000000000000114" Canvas.Top="416.74095398000026" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5415135109535469888" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_AttachmentUserForfrm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @GridID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable277" Content="tzLabel" Width="96.73806752" Height="23" Background="#FFC5DEF7" Foreground="#FFC5DEF7" Canvas.Left="827.38056096" Canvas.Top="11" cm:ControlID="5527256412247801932" />
            <cm:TZCheckBox Name="chkReferValidate" Content="TZCheckBox" Width="120" Height="20" ControlID="5203196081588324600" Canvas.Left="256" Canvas.Top="353.74095398000026" cm:DataBinding="dsRefergrvValidate" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4681735953927289917#5527256412247801932#" />
            <cm:tzTextBox Name="txtReferCurrent" Width="120" Height="21" ControlID="4819422034654599507" Canvas.Left="127" Canvas.Top="352.74095398000003" cm:DataBinding="dsGetGrv" cm:DataBindingField="Res" cm:DataType="BigInt" cm:Event="dsRefergrvValidate" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsSearchRefer" Content="dsSearchRefer" Width="93" Height="25" ControlID="5394642795927386120" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="25.000000000000114" Canvas.Top="382.74095398000026" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchRefer_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetGrv" Content="dsGetGrv" Width="93" Height="25" ControlID="4944608555118802285" Canvas.Left="25.000000000000114" Canvas.Top="348.74095398000071" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView72.SelectedRowItem} AS Res" />
            <cm:TZRadioButton Name="rbnSendResultInfo" Content="اعلام نتیجه به متقاضی" Width="NaN" Height="NaN" ControlID="5581934880622446261" GroupName="1" Canvas.Left="772.07136341000046" Canvas.Top="17.332099980000635" cm:DataBindingField="Res" cm:DefaultValue="true" cm:Event="dschkSendToTazarvMandatory" cm:FCVCol="5195609748428162630#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5649431032226153954#5208403737968325202#5610076180504582867#" cm:TECol="4948200665753577473#" cm:TMCol="5409369756743812385#" cm:TVCol="" />
            <cm:TZRadioButton Name="rbnDesiredOfficeInfo" Content="ارجاع به ادارات سازمان امور دانشجویان " Width="NaN" Height="NaN" ControlID="5319920761961862933" GroupName="1" Canvas.Left="771.07666666666728" Canvas.Top="51.332099980000748" cm:DataBindingField="DesiredOffice" cm:Event="dsGetGroupIDInfo" cm:FCVCol="5195609748428162630#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5208403737968325202#5610076180504582867#4945194059781672514#" cm:TECol="5195609748428162630#5649431032226153954#" cm:TMCol="5195609748428162630#5409369756743812385#" cm:TVCol="" />
            <cm:TZRadioButton Name="rbnOtherOrgInfo" Content="ارجاع به دانشگاه ها" Width="NaN" Height="NaN" ControlID="5139528391810745165" GroupName="1" Canvas.Left="772.07136341000034" Canvas.Top="87.270718910000369" cm:Event="dsGetGroupIDInfo,dschkIfInCertainUniversities" cm:FCVCol="5195609748428162630#5525857097060403882#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="4945194059781672514#5649431032226153954#" cm:TECol="5525857097060403882#5208403737968325202#" cm:TMCol="5525857097060403882#5409369756743812385#5208403737968325202#" cm:TVCol="" />
            <cm:tzLabel Name="Lable3637Info" Content=":نتیجه بررسی" Width="NaN" Height="NaN" Canvas.Left="652.59916813333359" Canvas.Top="6.8487666466673023" cm:ControlID="5184350259769853418" />
            <cm:tzLookUpComboBox Name="cmbResultInfo" Width="190" Height="22" ControlID="4948200665753577473" Canvas.Left="446.88711749000015" Canvas.Top="9.3320999800008639" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetFinalResultInfo" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsValidateUploadInfo,dsGetGroupIDInfo,dschkSendToTazarvMandatory" cm:tzDisplayItem="FinalResult" cm:tzValueItem="FinalResultID" />
            <cm:tzLabel Name="Lable123Info" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="826.58005740999988" Canvas.Top="113.81543331666654" cm:ControlID="4795705159060889370" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbReadyAnswerInfo" Width="466.98604032" Height="22" Canvas.Left="350.59401709" Canvas.Top="115.75577125" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4728016897295625884" cm:DataBinding="dsSelectReadyAnswerInfo" cm:Event="dsSelectReadyAnswerInfo,dsSelectAnswerInfo" cm:tzDisplayItem="RequestType" cm:tzValueItem="PremadeResponses_ID" />
            <cm:tzLabel Name="Lable36Info" Content=":واحد مورد نظر" ControlID="4778676928864036774" Canvas.Left="651.54583480000019" Canvas.Top="40.848766646667521" />
            <cm:tzLookUpComboBox Name="cmbDesiredUnitInfo" Width="190" Height="22" ControlID="5195609748428162630" Canvas.Left="446.88711749000026" Canvas.Top="43.332099980000862" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubsetInfo" cm:DataType="Int" cm:Event="dsGetGroupIDInfo,dsGetExpertsInfo" cm:tzDisplayItem="OrganizationalUnit" cm:tzValueItem="OrganizationalUnitID" />
            <cm:tzLabel Name="Lable41Info" Content=":کارشناس" Width="NaN" Height="NaN" Canvas.Left="350.59401709000014" Canvas.Top="40.848766646667535" cm:ControlID="5070206581941278149" />
            <cm:tzLookUpComboBox Name="cmbExperUserIDInfo" Width="190" Height="22" ControlID="5649431032226153954" Canvas.Left="149.67328362000069" Canvas.Top="43.332099980000862" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetExpertsInfo" cm:DataType="Int" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable125Info" Content="*" Foreground="#FFFF0000" Canvas.Left="958.75856777333377" Canvas.Top="139.8154333133341" cm:ControlID="5274936147257852698" />
            <cm:tzLabel Name="Lable8Info" Content=": توضیحات" ControlID="4993196279543935988" Canvas.Left="913.92523444000028" Canvas.Top="146.27243791666811" />
            <cm:tzTextBox Name="txtDescInfo" Width="904.92523444" Height="114.19462178999983" ControlID="5409369756743812385" HorizontalScrollBarVisibility="Auto" Text="با سلام و احترام" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="147.29876665000018" cm:DataBinding="dsSelectAnswerInfo" cm:DataBindingField="Response" cm:Event="dsSelectReadyAnswerInfo" cm:IsMulitiLine="True" cm:Len="1000" />
            <cm:tzLabel Name="Lable27Info" Content=":بارگذاری صورتجلسه" ControlID="5717071478789357227" Canvas.Left="799.55190110666683" Canvas.Top="271.26431081000015" />
            <cm:TZFileUpload Name="fupProceedingsInfo" Width="234" Height="31" ControlID="4761793774768584392" Canvas.Left="564.55190110666706" Canvas.Top="272.7476441433343" />
            <cm:TZButton Name="Button132" Content="افزودن" Width="131.79942829000044" Height="23" ControlID="5606062516470892704" Canvas.Left="9.6634279800000513" Canvas.Top="275.53027982" cm:Event="dsInsert" />
            <cm:TZButton Name="Button167" Content="ویرایش" Width="131.79942829000044" Height="23" Canvas.Left="150.46285627000077" Canvas.Top="275.53027982" cm:ControlID="4627339655172121596" cm:Event="dsUpdate" />
            <cm:TZButton Name="Button168" Content="حذف" Width="131.79942829000044" Height="23" Canvas.Left="291.26228456000126" Canvas.Top="275.53027982" cm:ControlID="4891056825465543985" cm:Event="dsDelete" cm:IsEnableItem="True" />
            <cm:tzDataSource Name="dsGetFinalResultInfo" Content="dsGetFinalResultInfo" Width="53.999999999999474" Height="25" ControlID="5073551071295449599" Canvas.Left="471.59401709000088" Canvas.Top="6.3320999800008622" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFinalResult_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSubsetInfo" Content="dsSubsetInfo" Width="54.000000000000114" Height="25" ControlID="5212332765325729286" Canvas.Left="471.59401709000008" Canvas.Top="40.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetDesiredUnit_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue />
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetCurrentGroupIDInfo" Content="dsGetCurrentGroupIDInfo" Width="110" Height="25" ControlID="4843639403845914334" Canvas.Left="615.8558348" Canvas.Top="167.7557712500022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetCyrrentGroupID_frm31116">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGroupNameInfo" Content="dsGroupNameInfo" Width="108.33657201999995" Height="25" ControlID="5437145312846912627" Canvas.Left="9.6634279800003924" Canvas.Top="173.75577125000083" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetGroupName_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @GroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetExpertsInfo" Content="dsGetExpertsInfo" Width="110" Height="25" ControlID="5162293064969290818" Canvas.Left="94.134849760000179" Canvas.Top="40.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetExpertID_frm3116">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtOfficeExpertIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @GroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectReadyAnswerInfo" Content="dsSelectReadyAnswerInfo" Width="110" Height="25" Canvas.Left="283.26228456000109" Canvas.Top="110.29876664666757" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5312298001233396630" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtGroupNameInfo" Width="87.90309906" Height="21" ControlID="5321915798760308165" Canvas.Left="127.00000000000057" Canvas.Top="177.75577125000174" cm:DataBinding="dsGroupNameInfo" cm:DataBindingField="GroupName" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsReferIDInfo" Content="dsReferIDInfo" Width="110.00000000000034" Height="25" ControlID="5523819363780068150" Canvas.Left="8" Canvas.Top="139.29876664666719" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
            <cm:tzTextBox Name="txtReferIDInfo" Width="84.774530970000171" Height="21" ControlID="5491021531889411585" Canvas.Left="130.12856809000027" Canvas.Top="143.29876664666776" cm:DataBinding="dsReferIDInfo" cm:DataBindingField="Column1" cm:DataType="Int" cm:DecimalMark="False" cm:DefaultValue="" cm:Event="dsGetUserName" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsSelectOfficeExpertIDInfo" Content="dsSelectOfficeExpertIDInfo" Width="37" Height="25" ControlID="5538098029530721496" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="439.41335278000059" Canvas.Top="167.75577125000143" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP  1 a.OfficeExpertID from  [dbo].Tbl_Cu_Base_OrganizationalUnit a WHERE  GroupID={@txtGroupIDInfo}" />
            <cm:tzTextBox Name="txtOfficeExpertIDInfo" Width="46.081936150000871" Height="21" ControlID="4876911667450903111" Canvas.Left="485.41335278000042" Canvas.Top="174.75577125000129" cm:DataBinding="dsSelectOfficeExpertIDInfo" cm:DataBindingField="OfficeExpertID" cm:Event="dsGetExpertsInfo" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsValidateUploadInfo" Content="dsValidateUploadInfo" Width="107.46285627000043" Height="25" Canvas.Left="266" Canvas.Top="139.29876665000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4811721574090498970" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFileUpload_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName="    @Result" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName="    @ChkAutomat" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidateUploadInfo" Content="chkValidateUpload" Width="46" Height="20" Canvas.Left="385.00000000000023" Canvas.Top="144.29876664666753" cm:ControlID="4937550961841903116" cm:DataBinding="dsValidateUploadInfo" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4761793774768584392#5717071478789357227#" />
            <cm:tzDataSource Name="dsInsert" Content="dsInsert" Width="110" Height="25" ControlID="4758810087077352413" Canvas.Left="8.0000000000003411" Canvas.Top="207.75577125000106" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Insert_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @SendResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @DesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredUnit" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExperUserIDInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbExperUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbInstitude" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUniversity" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Des" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@fupProceedingsInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Attachment" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ReferId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetGroupIDInfo" Content="dsGetGroupIDInfo" Width="108.50949946000043" Height="25" ControlID="5032837820067484785" Canvas.Left="264.95335681000017" Canvas.Top="173.75577125000015" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetGroupID_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnDesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OrganUnitID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @cmbUniversity" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbMainSubject" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectAnswerInfo" Content="dsSelectAnswerInfo" Width="64.360545870000124" Height="25" Canvas.Left="540.4952889299999" Canvas.Top="167.7557712500022" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4735288222925314838" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbReadyAnswerInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbReadyAnswer" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="txtCurrentGroupIDInfo" Width="36.21552861" Height="21" ControlID="5215609702718612866" Canvas.Left="734.85583480000025" Canvas.Top="171.75577125000129" cm:DataBinding="dsGetCurrentGroupIDInfo" cm:DataBindingField="GroupID" cm:DataType="BigInt" cm:Event="dsOtherOrgInfo" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="TextBox143" Width="87.90309906000067" Height="21" ControlID="5414911147853621844" Canvas.Left="127" Canvas.Top="211.75577125000015" cm:DataBinding="dsInsert" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsUpdate" Content="dsUpdate" Width="110.00000000000057" Height="25" Canvas.Left="263.46285627000009" Canvas.Top="207.75577125000038" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4745204396550712809" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Update_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @SendResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDesiredOfficeInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @DesiredOffice" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @OtherOrg" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbDesiredUnitInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbDesiredUnit" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExperUserIDInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbExperUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Des" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@fupProceedingsInfo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Attachment" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGroupIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @GroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferIDInfo}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ReferId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtguid}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @Id" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUniversity}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UniversityID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @InstitudeID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox169" Width="120" Height="21" ControlID="5397539152246789590" Canvas.Left="382.46285627000054" Canvas.Top="211.75577125000083" cm:DataBinding="dsUpdate" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="64.360545869998361" Height="25" Canvas.Left="540.49528893000149" Canvas.Top="207.75577125000038" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="4632786207223072869" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Delete_tbl_cu_QuestionRefer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtReferCurrent}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @Id" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox171" Width="120" Height="21" Canvas.Left="613.8558348" Canvas.Top="211.75577125000083" cm:ControlID="5525262411784463573" cm:DataBinding="dsDelete" cm:DataBindingField="Res" cm:Event="dsSearchRefer,dsCheckReferAnswer" cm:IsVisibleItem="False" />
            <cm:tzLabel Name="Lable166" Content=":نوع دانشگاه" ControlID="4906186255953856790" FontFamily="Tahoma" Canvas.Left="659.72250146666681" Canvas.Top="76.787385576666807" />
            <cm:tzLabel Name="Lable170" Content=":نام دانشگاه" ControlID="4845958621931404428" Canvas.Left="340.35735042333334" Canvas.Top="79.815433316666613" />
            <cm:tzLookUpComboBox Name="cmbInstitude" Width="190" Height="22" ControlID="5208403737968325202" Canvas.Left="446.88711749000026" Canvas.Top="79.270718910000255" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsInstitude" cm:DataType="Int" cm:Event="dschkIfInCertainUniversities,dsUniversity" cm:tzDisplayItem="InstituteName" cm:tzValueItem="InstituteID" />
            <cm:tzLookUpComboBox Name="cmbUniversity" Width="190" Height="22" ControlID="5610076180504582867" Canvas.Left="149.35735042333337" Canvas.Top="82.298766649999948" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUniversity" cm:DataType="Int" cm:Event="dsGetGroupIDInfo" cm:tzDisplayItem="UniversityName" cm:tzValueItem="UniversityID" />
            <cm:tzDataSource Name="dsInstitude" Content="dsInstitude" Width="110" Height="25" ControlID="4642974385149322226" Canvas.Left="415.59401709000014" Canvas.Top="76.270718910000141" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Institute_FRM31557" />
            <cm:tzDataSource Name="dsUniversity" Content="dsUniversity" Width="93.039443000000176" Height="25" ControlID="5717205089627864650" Canvas.Left="94.1348497599999" Canvas.Top="76.270718910000141" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_university_By_institudeID_FRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @wfid" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @institudeID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dschkIfInCertainUniversities" Content="dschkIfInCertainUniversities" Width="68.318181780000373" Height="25" ControlID="5378293401337386285" Canvas.Left="16.816667979999352" Canvas.Top="61.270718910000376" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkIfInCertainUniversities_FRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbInstitude}" IsOutputParameter="False" ParameterType="int" SpParamName=" @InstitudeID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherOrgInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @UniReferral" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkIfInCertainUniversities" Content="IfInCertainUniversities" Width="92.608171440001669" Height="20" ControlID="5425298620874923793" Canvas.Left="0.52667831999805514" Canvas.Top="84.298766650000061" cm:DataBinding="dschkIfInCertainUniversities" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5610076180504582867#" cm:TMCol="5610076180504582867#" cm:TVCol="" />
            <cm:TZCheckBox Name="chkSendToTazarv" Content="ارسال به تذرو" Width="87.28498035" Height="15.09834003" ControlID="4731394453799451628" FontFamily="Tahoma" Canvas.Left="317.31884894333308" Canvas.Top="16.233759950000973" cm:Event="dschkSendToTazarvMandatory" />
            <cm:TZCheckBox Name="chkSendToTazarvForSupport" Content="TZCheckBox" Width="51" Height="20" ControlID="5718253916155017387" Canvas.Left="228.91252484999956" Canvas.Top="4.3320999800007485" cm:DataBinding="dschkSendToTazarvForSupport" cm:DataBindingField="res" cm:Event="dschkSendToTazarvMandatory" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4731394453799451628#" />
            <cm:tzDataSource Name="dschkSendToTazarvForSupport" Content="dschkSendToTazarvForSupport" Width="48.431109319999564" Height="25" ControlID="5581871335013438964" Canvas.Left="239.48141552999985" Canvas.Top="17.332099980000862" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_chkSendToTazarv_frm21041 (@UserID)" />
            <cm:TZCheckBox Name="chkSendToTazarvMandatory" Content="TZCheckBox" Width="40" Height="20" ControlID="4769532511991724310" Canvas.Left="160.49130599999984" Canvas.Top="4.3320999800007485" cm:DataBinding="dschkSendToTazarvMandatory" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4731394453799451628#" cm:TVCol="" />
            <cm:tzDataSource Name="dschkSendToTazarvMandatory" Content="dschkSendToTazarvMandatory" Width="45.508693999999878" Height="25" ControlID="4621649417633749580" Canvas.Left="174.40383084999985" Canvas.Top="14.332099980000866" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkSendToTazarvMandatoryFRM21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbResultInfo}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResultInfo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSendResultInfo}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnSendResultInfo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @userid" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkSendToTazarv}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkSendToTazarv" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzDataSource Name="dsNationalCode" Content="dsNationalCode" Width="106" Height="25" ControlID="5111840221966599354" Canvas.Left="40.59057818" Canvas.Top="274.23547547" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkCheckProblemType" Content="TZCheckBox" Width="60.000000000000114" Height="20" ControlID="5352530938879572280" Canvas.Left="628.23206200000016" Canvas.Top="306.82476742666722" cm:DataBinding="dsCheckProblemType" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chkPhone" Content="chkPhone" Width="60.616370839999888" Height="20" ControlID="5389058767208499138" Canvas.Left="697.23206200000016" Canvas.Top="306.82476742666722" cm:DataBinding="dsPhone" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
        <cm:tzTextBox Name="txtGroupIDInfo" Width="97.158018519999459" Height="21" ControlID="5214184851893828049" Canvas.Left="267.25772807000061" Canvas.Top="671.22185171" cm:DataBinding="dsGetGroupIDInfo" cm:DataBindingField="GROUPID" cm:DataType="BigInt" cm:Event="dsSelectOfficeExpertIDInfo,dsGetExpertsInfo,dsGroupNameInfo" cm:IsVisibleItem="False" />
        <cm:TzGroupBox Name="GroupBox45" Width="1006" Height="185.08230625" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5609388235331444980" Canvas.Left="6.9999999999999964" Canvas.Top="1048.4343604166666" cm:Header="نتيجه نهايي">
          <Canvas>
            <cm:TZRadioButton Name="rdbOk" Content="توضيحات کافي و مورد قبول مي باشد" Width="210" Height="20" ControlID="5668558491494590571" GroupName="B" Canvas.Left="664.23863636000067" Canvas.Top="138.13743478999913" cm:DefaultValue="true" cm:IsEnableItem="False" />
            <cm:TZRadioButton Name="rdbNotOk" Content="توضيحات کافي نمي باشد" Width="154" Height="20" ControlID="4681715191942200396" GroupName="B" Canvas.Left="449.31293547666638" Canvas.Top="138.13743478999913" cm:DataBindingField="Result" cm:IsEnableItem="False" />
            <cm:tzLabel Name="Lable37" Content=":نتيجه نهايي" Width="73.5" Height="23" ControlID="4716404251340696191" Canvas.Left="875.23863636000067" Canvas.Top="75.894101449999425" />
            <cm:tzTextBox Name="txtFinalDesc" Width="859.00000000000091" Height="53.24333334" ControlID="5656188629762278570" TextWrapping="Wrap" Canvas.Left="15.238636359999603" Canvas.Top="75.894101449999425" cm:DataBinding="dsSelectAnswer" cm:DataBindingField="Answer" cm:IsMulitiLine="True" cm:Len="1000" />
            <cm:tzLabel Name="Lable157" Content=":پیوست صورت جلسه" Canvas.Left="141.38358198000071" Canvas.Top="7.1547075166669165" cm:ControlID="5331113800448581510" />
            <cm:TzHyperlink Name="HypFile" ControlID="5078728859619786614" Canvas.Left="79.8499999966674" Canvas.Top="13.886169710000626" cm:DataBinding="dsGetAttachment" cm:tzDisplayItem="Title" cm:tzValueItem="LoggingSystemLink" />
            <cm:tzTextBox Name="txtAttachmentName" Width="58" Height="21" Canvas.Left="496.46221834000062" Canvas.Top="85.1830461699991" cm:ControlID="4812790960432435113" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetAttachment" Content="dsGetAttachment" Width="59.241576879999265" Height="25" ControlID="4707690958349479569" Canvas.Left="167.22358198000075" Canvas.Top="104.13743479" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetAttachmentLink_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtAttacmentFile}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FileID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable101" Content=":نتيجه بررسی" Canvas.Left="874.00000000000091" Canvas.Top="7.1547075166669307" cm:ControlID="5041938745585771483" cm:IsVisibleItem="True" />
            <cm:tzTextBox Name="txtResult" Width="49" Height="21" ControlID="5495204189799604917" Canvas.Left="438.4622183400005" Canvas.Top="85.1830461699991" cm:DataBindingField="Result" cm:DataType="Int" cm:Event="dsCheckResult,dsGetAttachment" cm:IsVisibleItem="False" />
            <cm:tzTextBox Name="txtAttacmentFile" Width="58" Height="21" ControlID="4931141982883407186" Canvas.Left="563.46221834000073" Canvas.Top="85.1830461699991" cm:Event="dsGetAttachment" cm:IsVisibleItem="False" />
            <cm:TZFileUpload Name="fupProceedings" Width="236.7996713600009" Height="31" ControlID="5591128339706187262" Canvas.Left="276.02732394666691" Canvas.Top="11.121374179999748" />
            <cm:tzTextBox Name="txtReferID" Width="28.196258030000763" Height="21" ControlID="4949257785239518214" Canvas.Left="231.0273239500001" Canvas.Top="85.1830461699991" cm:DataBinding="dsGetReferID" cm:DataBindingField="Column1" cm:DataType="BigInt" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsGetReferID" Content="dsGetReferID" Width="59.241576880000054" Height="25" ControlID="5143983118687920988" Canvas.Left="167.22358198000069" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID)" />
            <cm:tzDataSource Name="dsValidateUpload" Content="dsValidateUpload" Width="34.680949539999972" Height="25" ControlID="4866688187989973053" Canvas.Left="74.5426324400006" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckFileUpload_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @Result" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsAutomat}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @ChkAutomat" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLookUpComboBox Name="CmbResult" Width="236.79967136000022" Height="22" ControlID="5302700424741166293" Canvas.Left="636.20032864000075" Canvas.Top="11.121374179999863" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetFinalResult" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsCheckReferAnswer,dsValidateUpload,dsCheckFinalResultDes,dsManResult" cm:IsVisibleItem="True" cm:tzDisplayItem="FinalResult" cm:tzValueItem="FinalResultID" />
            <cm:tzDataSource Name="dsGetFinalResult" Content="dsGetFinalResult" Width="110" Height="25" ControlID="5524048120021345473" Canvas.Left="674.8547008500002" Canvas.Top="8.12137417999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetFinalResult_frm20295">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkFormAnswer" Content="chkFormAnswer" Width="42.151035009999973" Height="20" ControlID="5263443334754630598" FontFamily="Tahoma" Canvas.Left="75.072546970000715" Canvas.Top="104.13743478999912" cm:DataBinding="dsCheckFormAnswer" cm:DataBindingField="Result1" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5289141937530042459#4945194059781672514#" />
            <cm:tzDataSource Name="dsCheckFormAnswer" Content="dsCheckFormAnswer" Width="26.607388110000215" Height="25" ControlID="5307244416301889032" Canvas.Left="26.333333330000016" Canvas.Top="81.1830461699992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateQuestionRefer_SaoAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkValidateUpload" Content="chkValidateUpload" Width="40" Height="20" ControlID="5757621999401718644" Canvas.Left="118.22358198000063" Canvas.Top="80.1213741799994" cm:DataBinding="dsValidateUpload" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4693086156765405401#" />
            <cm:tzLabel Name="Lable102" Content=":بارگذاری صورتجلسه" Width="113.37333333333334" Height="24.483333333333334" Canvas.Left="513.82699530666764" Canvas.Top="8.6380408466665273" cm:ControlID="4693086156765405401" cm:IsVisibleItem="True" />
            <cm:TZCheckBox Name="chkCheckAnswer" Content="chkCheckAnswer" Width="50" Height="20" ControlID="5382784310684242131" FontFamily="Tahoma" Canvas.Left="303.46221833999994" Canvas.Top="80.1213741799994" cm:DataBinding="dsCheckReferAnswer" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsCheckReferAnswer" Content="dsCheckReferAnswer" Width="33" Height="25" ControlID="5209253164384725769" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="268.223581980001" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckReferAnswer_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Result" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkResult" Content="chkResult" Width="42" Height="20" ControlID="4615431540503671584" FontFamily="Tahoma" Canvas.Left="387.46221834000039" Canvas.Top="86.1830461699991" cm:DataBinding="dsCheckResult" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5331113800448581510#5078728859619786614#" />
            <cm:tzDataSource Name="dsCheckResult" Content="dsCheckResult" Width="32" Height="25" ControlID="4777808831952847071" Canvas.Left="354.46221834000028" Canvas.Top="81.1830461699991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckResult_frm21041">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Result" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsCheckFinalResultDes" Content="dsCheckFinalResultDes" Width="33.00000000000108" Height="25" ControlID="5464672363029610075" Canvas.Left="268.2235819799991" Canvas.Top="104.13743479000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ValidateQuestionReferAnswer_SaoAnswer">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbResult" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZCheckBox Name="chkCheckResultDes" Content="chkCheckResultDes" Width="51.23863636000037" Height="20" ControlID="4904625854686664683" FontFamily="Tahoma" Canvas.Left="302.22358198" Canvas.Top="109.13743479" cm:DataBinding="dsCheckFinalResultDes" cm:DataBindingField="Result" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
            <cm:tzLabel Name="Lable117" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="874.00000000000091" Canvas.Top="42.410768116666034" cm:ControlID="5289141937530042459" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbReadyAnswer" Width="236.23148953999942" Height="22" ControlID="4945194059781672514" Canvas.Left="636.20032864000063" Canvas.Top="44.89410145" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectReadyAnswer" cm:Event="dsSelectAnswer" cm:tzDisplayItem="Title" cm:tzValueItem="ReadSaoAnswerID" />
            <cm:tzDataSource Name="dsSelectReadyAnswer" Content="dsSelectReadyAnswer" Width="110" Height="25" ControlID="4939650566442929498" Canvas.Left="674.85470085" Canvas.Top="41.894101449999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer {@cmbMainSubject},(@WorkflowInstanceID)">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsSelectAnswer" Content="dsSelectAnswer" Width="110" Height="25" ControlID="4915910715601269065" Canvas.Left="674.85470085" Canvas.Top="75.1213741799994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " />
            <cm:TZCheckBox Name="CheckBox120" Content="TZCheckBox" Width="32" Height="20" ControlID="4839697049987806189" Canvas.Left="430.4622183400005" Canvas.Top="109.13743479000006" cm:DataBinding="dsCheckFormAnswer" cm:DataBindingField="Result2" cm:DefaultValue="" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5041938745585771483#5302700424741166293#" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/11/17 17:14:23', GUID = 'ae28bcc8-fe7c-4f93-8c50-972a3363bc97', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "21041" ,"components": [{"value": "","key": "4839697049987806189","label": "CheckBox120","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result2"},{"value": "","key": "5123824079997506024","label": "CheckBox80","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5382784310684242131","label": "chkCheckAnswer","controlType": "checkbox","caption": "chkCheckAnswer" ,"DataBindingField" : "Result"},{"value": "","key": "5568440564971718604","label": "chkCheckEmail","controlType": "checkbox","caption": "chkCheckEmail" ,"DataBindingField" : "res"},{"value": "","key": "5352530938879572280","label": "chkCheckProblemType","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4904625854686664683","label": "chkCheckResultDes","controlType": "checkbox","caption": "chkCheckResultDes" ,"DataBindingField" : "Result"},{"value": "","key": "5656869007242304861","label": "chkFileDeleteVal","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5263443334754630598","label": "chkFormAnswer","controlType": "checkbox","caption": "chkFormAnswer" ,"DataBindingField" : "Result1"},{"value": "","key": "5425298620874923793","label": "chkIfInCertainUniversities","controlType": "checkbox","caption": "IfInCertainUniversities" ,"DataBindingField" : "res"},{"value": "","key": "4839663788828962407","label": "chkIsAutomat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "4793634241596138168","label": "chkNationalCode","controlType": "checkbox","caption": "chkNationalCode" ,"DataBindingField" : "result"},{"value": "","key": "5389058767208499138","label": "chkPhone","controlType": "checkbox","caption": "chkPhone" ,"DataBindingField" : "Result"},{"value": "","key": "5203196081588324600","label": "chkReferValidate","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4615431540503671584","label": "chkResult","controlType": "checkbox","caption": "chkResult" ,"DataBindingField" : "Result"},{"value": "","key": "4731394453799451628","label": "chkSendToTazarv","controlType": "checkbox","caption": "ارسال به تذرو" ,"DataBindingField" : ""},{"value": "","key": "5718253916155017387","label": "chkSendToTazarvForSupport","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4769532511991724310","label": "chkSendToTazarvMandatory","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5118256872779995066","label": "chkValidateAttachment","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "5757621999401718644","label": "chkValidateUpload","controlType": "checkbox","caption": "chkValidateUpload" ,"DataBindingField" : "Result"},{"value": "","key": "4937550961841903116","label": "chkValidateUploadInfo","controlType": "checkbox","caption": "chkValidateUpload" ,"DataBindingField" : "Result"},{"key": "5195609748428162630","label": "cmbDesiredUnitInfo","value": "", "controlType": "dropdown","options":""},{"key": "5649431032226153954","label": "cmbExperUserIDInfo","value": "", "controlType": "dropdown","options":""},{"key": "5208403737968325202","label": "cmbInstitude","value": "", "controlType": "dropdown","options":""},{"key": "5734364465859836924","label": "cmbMainSubject","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5274322539269778963","label": "cmbPriority","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4659311251708217602","label": "cmbProblemType","value": "", "controlType": "dropdown","options":""},{"key": "4945194059781672514","label": "cmbReadyAnswer","value": "", "controlType": "dropdown","options":""},{"key": "4728016897295625884","label": "cmbReadyAnswerInfo","value": "", "controlType": "dropdown","options":""},{"key": "5302700424741166293","label": "CmbResult","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4948200665753577473","label": "cmbResultInfo","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5610076180504582867","label": "cmbUniversity","value": "", "controlType": "dropdown","options":""},{"key":"4955571905321158146" , "dataSourceName":"DataSource123" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4645744200936818873" , "dataSourceName":"DataSource79" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5137999111554449378" , "dataSourceName":"dsAttaches" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_ReadAttachmentForfrm210141 {@txtguid} ,(@WorkflowInstanceID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5363169941782671292" , "dataSourceName":"dsCheckEmail" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateEmail" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5464672363029610075" , "dataSourceName":"dsCheckFinalResultDes" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateQuestionReferAnswer_SaoAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5307244416301889032" , "dataSourceName":"dsCheckFormAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateQuestionRefer_SaoAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4853680612637721892" , "dataSourceName":"dsCheckProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckProblemType_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5209253164384725769" , "dataSourceName":"dsCheckReferAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckReferAnswer_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4777808831952847071" , "dataSourceName":"dsCheckResult" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckResult_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5378293401337386285" , "dataSourceName":"dschkIfInCertainUniversities" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkIfInCertainUniversities_FRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5581871335013438964" , "dataSourceName":"dschkSendToTazarvForSupport" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_chkSendToTazarv_frm21041 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4621649417633749580" , "dataSourceName":"dschkSendToTazarvMandatory" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkSendToTazarvMandatoryFRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4632786207223072869" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Delete_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4763756049839051263" , "dataSourceName":"dsFileDeleteVal" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4707690958349479569" , "dataSourceName":"dsGetAttachment" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetAttachmentLink_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4613902331168262520" , "dataSourceName":"dsGetChartNode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetChartNodeIDForfrm20300" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4843639403845914334" , "dataSourceName":"dsGetCurrentGroupIDInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetCyrrentGroupID_frm31116" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5162293064969290818" , "dataSourceName":"dsGetExpertsInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpertID_frm3116" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5524048120021345473" , "dataSourceName":"dsGetFinalResult" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFinalResult_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5073551071295449599" , "dataSourceName":"dsGetFinalResultInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetFinalResult_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5693625512062971190" , "dataSourceName":"dsGetgridUser" , "controlType": "datasource",  "selectQuery" :"select {@grvAttach.SelectedRowItem}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5032837820067484785" , "dataSourceName":"dsGetGroupIDInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetGroupID_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4944608555118802285" , "dataSourceName":"dsGetGrv" , "controlType": "datasource",  "selectQuery" :"select {@GridView72.SelectedRowItem} AS Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5143983118687920988" , "dataSourceName":"dsGetReferID" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5437145312846912627" , "dataSourceName":"dsGroupNameInfo" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetGroupName_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4644121629476164323" , "dataSourceName":"dsGrv" , "controlType": "datasource",  "selectQuery" :"select {@grvAttach}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5590257507101018373" , "dataSourceName":"dsGUID" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID {@txtguid}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4758810087077352413" , "dataSourceName":"dsInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Insert_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4642974385149322226" , "dataSourceName":"dsInstitude" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Institute_FRM31557" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm21041 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5111840221966599354" , "dataSourceName":"dsNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5456061131679790609" , "dataSourceName":"dsPhone" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_ValidMobileNumber" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5622603866125465760" , "dataSourceName":"dsPortalAttachments" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadPortalAttachmentForfrm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4951765384964759143" , "dataSourceName":"dsPriority" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetPriority_Frm20937" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415135109535469888" , "dataSourceName":"dsRefergrvValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_AttachmentUserForfrm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5523819363780068150" , "dataSourceName":"dsReferIDInfo" , "controlType": "datasource",  "selectQuery" :"select (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5360335574965201173" , "dataSourceName":"dsSearchAllWF" , "controlType": "datasource",  "selectQuery" :"SP_CU_SearchAllWF_ForSaoSupport" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5394642795927386120" , "dataSourceName":"dsSearchRefer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchRefer_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4915910715601269065" , "dataSourceName":"dsSelectAnswer" , "controlType": "datasource",  "selectQuery" :"SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4735288222925314838" , "dataSourceName":"dsSelectAnswerInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5538098029530721496" , "dataSourceName":"dsSelectOfficeExpertIDInfo" , "controlType": "datasource",  "selectQuery" :"SELECT TOP  1 a.OfficeExpertID from  [dbo].Tbl_Cu_Base_OrganizationalUnit a WHERE  GroupID={@txtGroupIDInfo}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5306534729843751800" , "dataSourceName":"dsSelectProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetProblemType_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4939650566442929498" , "dataSourceName":"dsSelectReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer {@cmbMainSubject},(@WorkflowInstanceID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5312298001233396630" , "dataSourceName":"dsSelectReadyAnswerInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5212332765325729286" , "dataSourceName":"dsSubsetInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetDesiredUnit_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5717205089627864650" , "dataSourceName":"dsUniversity" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_university_By_institudeID_FRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4745204396550712809" , "dataSourceName":"dsUpdate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_tbl_cu_QuestionRefer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5094590819579418620" , "dataSourceName":"dsValidateAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ValidateAttachment_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4866688187989973053" , "dataSourceName":"dsValidateUpload" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFileUpload_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4811721574090498970" , "dataSourceName":"dsValidateUploadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckFileUpload_frm20295" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5753063740601993322" , "dataSourceName":"dtsFullName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_FullName_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5763559335780557314" , "dataSourceName":"dtsGetPortalName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetPortalName_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5287576350964428431","label": "TextBox120","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5414911147853621844","label": "TextBox143","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5397539152246789590","label": "TextBox169","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5525262411784463573","label": "TextBox171","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4812790960432435113","label": "txtAttachmentName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931141982883407186","label": "txtAttacmentFile","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5735039865522523619","label": "txtChartNodeID","controlType": "textbox", "type": "" , "DataBindingField" : "ChartNodeID"},{"value": "","key": "5215609702718612866","label": "txtCurrentGroupIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GroupID"},{"value": "","key": "5588901027094583235","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5409369756743812385","label": "txtDescInfo","controlType": "textbox", "type": "" , "DataBindingField" : "Response"},{"value": "","key": "5410123904378380874","label": "txtEmail","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5656188629762278570","label": "txtFinalDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Answer"},{"value": "","key": "5279528291598107148","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5214184851893828049","label": "txtGroupIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GROUPID"},{"value": "","key": "5321915798760308165","label": "txtGroupNameInfo","controlType": "textbox", "type": "" , "DataBindingField" : "GroupName"},{"value": "","key": "5565421426804681014","label": "txtgrv","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5190992840719060449","label": "txtguid","controlType": "textbox", "type": "" , "DataBindingField" : "GUDID"},{"value": "","key": "4911623689532144782","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4876911667450903111","label": "txtOfficeExpertIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "OfficeExpertID"},{"value": "","key": "5684013610708670363","label": "txtPhone","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4809213762955760342","label": "txtPortalDes","controlType": "textbox", "type": "" , "DataBindingField" : "Descript"},{"value": "","key": "5624003739167460820","label": "txtPortalEntryID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4798298711155420350","label": "txtPortalLogID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4819760547104058387","label": "txtPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5307054846183699357","label": "txtPotalName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4819422034654599507","label": "txtReferCurrent","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4949257785239518214","label": "txtReferID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5491021531889411585","label": "txtReferIDInfo","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5495204189799604917","label": "txtResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "4917072605639784939","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "5231956594990321764","label": "TxtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5453529218873335310","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218500402960342909","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4838605854342166465","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4757820249046486749","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4905698283024938119","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5269038917764596706","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5506106183357399091","data": [{"key": "5588901027094583235","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5269038917764596706","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5734364465859836924","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5159633470799826347","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218500402960342909","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": true },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4899345810615436228","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5259980320128269342","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4680259133990155419","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5656188629762278570","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4693086156765405401","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5591128339706187262","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5596692579498650132","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "4758356032329010723","data": [{"key": "4684984903127663695","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4676825254353781655","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4858775235086145070","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4783877636946764447","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5021001924506054425","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5588901027094583235","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5279528291598107148","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4733227099612085787","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5668558491494590571","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681715191942200396","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]},{"layoutID": "5029762373589799426","data": [{"key": "5609388235331444980","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4948200665753577473","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5195609748428162630","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5649431032226153954","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5208403737968325202","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5610076180504582867","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5307054846183699357","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5447864216398602997","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5392809815104644429","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5684013610708670363","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5410123904378380874","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4659311251708217602","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4911623689532144782","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4819760547104058387","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5274322539269778963","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5700912637587499592","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5273781445844994672","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4809213762955760342","color": "","invisible": false,"mandatory": false,"disable": false }]}]}',DefaultCulture = NULL  WHERE FormId = 21041
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm21041') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm21041] ( [frm21041Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5494402685715244365]  [nvarchar] ( 50) NULL , [Col_5665959631221271450]  [nvarchar] ( 50) NULL , [Col_5656188629762278570]  [nvarchar] ( 1000) NULL , [Col_5684013610708670363]  [nvarchar] ( 11) NULL , [Col_5279528291598107148]  [nvarchar] ( 50) NULL , [Col_5588901027094583235]  [nvarchar] ( 1000) NULL , [Col_5410123904378380874]  [nvarchar] ( 50) NULL , [Col_5307054846183699357]  [nvarchar] ( 50) NULL , [Col_5231956594990321764]  [bigint] NULL , [Col_4819760547104058387]  [bigint] NULL , [Col_5735039865522523619]  [nvarchar] ( 50) NULL , [Col_5190992840719060449]  [nvarchar] ( 50) NULL , [Col_4798298711155420350]  [bigint] NULL , [Col_5734364465859836924]  [int] NULL , [Col_5668558491494590571]  [bit] NULL , [Col_4681715191942200396]  [bit] NULL , [Col_5389058767208499138]  [bit] NULL , [Col_5656869007242304861]  [bit] NULL , [Col_4839663788828962407]  [bit] NULL , [Col_5392809815104644429]  [nvarchar] ( 10) NULL , [Col_5447864216398602997]  [nvarchar] ( 11) NULL , [Col_4676825254353781655]  [bit] NULL , [Col_4858775235086145070]  [bit] NULL , [Col_4659311251708217602]  [int] NULL , [Col_5624003739167460820]  [bigint] NULL , [Col_4917072605639784939]  [bigint] NULL , [Col_4809213762955760342]  [nvarchar] ( 1000) NULL , [Col_5352530938879572280]  [bit] NULL , [Col_5118256872779995066]  [bit] NULL , [Col_5568440564971718604]  [bit] NULL , [Col_5495204189799604917]  [int] NULL , [Col_4615431540503671584]  [bit] NULL , [Col_4931141982883407186]  [nvarchar] ( 50) NULL , [Col_4812790960432435113]  [nvarchar] ( 50) NULL , [Col_5565421426804681014]  [nvarchar] ( 50) NULL , [Col_5123824079997506024]  [bit] NULL , [Col_4819422034654599507]  [bigint] NULL , [Col_5203196081588324600]  [bit] NULL , [Col_4911623689532144782]  [nvarchar] ( 100) NULL , [Col_4793634241596138168]  [bit] NULL , [Col_5382784310684242131]  [bit] NULL , [Col_5302700424741166293]  [int] NULL , [Col_5591128339706187262]  [nvarchar] ( 150) NULL , [Col_4949257785239518214]  [bigint] NULL , [Col_5757621999401718644]  [bit] NULL , [Col_5263443334754630598]  [bit] NULL , [Col_4904625854686664683]  [bit] NULL , [Col_5274322539269778963]  [int] NULL , [Col_4945194059781672514]  [nvarchar] ( 50) NULL , [Col_4839697049987806189]  [bit] NULL , [Col_5287576350964428431]  [nvarchar] ( 50) NULL , [Col_4876911667450903111]  [nvarchar] ( 50) NULL , [Col_5409369756743812385]  [nvarchar] ( 1000) NULL , [Col_5215609702718612866]  [bigint] NULL , [Col_5214184851893828049]  [bigint] NULL , [Col_5321915798760308165]  [nvarchar] ( 50) NULL , [Col_5491021531889411585]  [int] NULL , [Col_4948200665753577473]  [int] NULL , [Col_4728016897295625884]  [nvarchar] ( 50) NULL , [Col_5195609748428162630]  [int] NULL , [Col_5649431032226153954]  [int] NULL , [Col_5581934880622446261]  [bit] NULL , [Col_5319920761961862933]  [bit] NULL , [Col_5139528391810745165]  [bit] NULL , [Col_4937550961841903116]  [bit] NULL , [Col_4761793774768584392]  [nvarchar] ( 150) NULL , [Col_5414911147853621844]  [nvarchar] ( 50) NULL , [Col_5397539152246789590]  [nvarchar] ( 50) NULL , [Col_5525262411784463573]  [nvarchar] ( 50) NULL , [Col_5510381208079247150]  [bit] NULL , [Col_5208403737968325202]  [int] NULL , [Col_5610076180504582867]  [int] NULL , [Col_5425298620874923793]  [bit] NULL , [Col_4731394453799451628]  [bit] NULL , [Col_5718253916155017387]  [bit] NULL , [Col_4769532511991724310]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm21041Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'frm21041Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD frm21041Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5494402685715244365' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5494402685715244365 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5665959631221271450' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5665959631221271450 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5656188629762278570' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5656188629762278570 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5684013610708670363' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5684013610708670363 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5279528291598107148' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5279528291598107148 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5588901027094583235' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5588901027094583235 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5410123904378380874' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5410123904378380874 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5307054846183699357' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5307054846183699357 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5231956594990321764' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5231956594990321764 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4819760547104058387' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4819760547104058387 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5735039865522523619' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5735039865522523619 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5190992840719060449' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5190992840719060449 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4798298711155420350' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4798298711155420350 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5734364465859836924' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5734364465859836924 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5668558491494590571' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5668558491494590571 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4681715191942200396' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4681715191942200396 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5389058767208499138' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5389058767208499138 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5656869007242304861' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5656869007242304861 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4839663788828962407' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4839663788828962407 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5392809815104644429' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5392809815104644429 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5447864216398602997' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5447864216398602997 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4676825254353781655' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4676825254353781655 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4858775235086145070' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4858775235086145070 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4659311251708217602' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4659311251708217602 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5624003739167460820' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5624003739167460820 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4917072605639784939' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4917072605639784939 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4809213762955760342' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4809213762955760342 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5352530938879572280' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5352530938879572280 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5118256872779995066' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5118256872779995066 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5568440564971718604' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5568440564971718604 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5495204189799604917' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5495204189799604917 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4615431540503671584' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4615431540503671584 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4931141982883407186' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4931141982883407186 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4812790960432435113' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4812790960432435113 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5565421426804681014' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5565421426804681014 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5123824079997506024' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5123824079997506024 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4819422034654599507' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4819422034654599507 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5203196081588324600' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5203196081588324600 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4911623689532144782' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4911623689532144782 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4793634241596138168' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4793634241596138168 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5382784310684242131' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5382784310684242131 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5302700424741166293' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5302700424741166293 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5591128339706187262' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5591128339706187262 nvarchar (150) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4949257785239518214' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4949257785239518214 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5757621999401718644' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5757621999401718644 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5263443334754630598' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5263443334754630598 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4904625854686664683' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4904625854686664683 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5274322539269778963' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5274322539269778963 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4945194059781672514' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4945194059781672514 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4839697049987806189' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4839697049987806189 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5287576350964428431' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5287576350964428431 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4876911667450903111' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4876911667450903111 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5409369756743812385' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5409369756743812385 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5215609702718612866' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5215609702718612866 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5214184851893828049' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5214184851893828049 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5321915798760308165' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5321915798760308165 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5491021531889411585' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5491021531889411585 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4948200665753577473' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4948200665753577473 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4728016897295625884' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4728016897295625884 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5195609748428162630' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5195609748428162630 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5649431032226153954' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5649431032226153954 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5581934880622446261' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5581934880622446261 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5319920761961862933' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5319920761961862933 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5139528391810745165' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5139528391810745165 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4937550961841903116' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4937550961841903116 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4761793774768584392' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4761793774768584392 nvarchar (150) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5414911147853621844' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5414911147853621844 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5397539152246789590' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5397539152246789590 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5525262411784463573' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5525262411784463573 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5510381208079247150' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5510381208079247150 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5208403737968325202' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5208403737968325202 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5610076180504582867' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5610076180504582867 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5425298620874923793' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5425298620874923793 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4731394453799451628' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4731394453799451628 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_5718253916155017387' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_5718253916155017387 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm21041' AND COLUMN_NAME = 'Col_4769532511991724310' )  BEGIN ALTER TABLE [dbo].[Tbl_frm21041] ADD Col_4769532511991724310 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm21041]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm21041
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm21041] ( @PKFormId as bigint OUTPUT ,  @Col_5494402685715244365 AS nvarchar(50),  @Col_5665959631221271450 AS nvarchar(50),  @Col_5656188629762278570 AS nvarchar(1000),  @Col_5684013610708670363 AS nvarchar(11),  @Col_5279528291598107148 AS nvarchar(50),  @Col_5588901027094583235 AS nvarchar(1000),  @Col_5410123904378380874 AS nvarchar(50),  @Col_5307054846183699357 AS nvarchar(50),  @Col_5231956594990321764 AS bigint,  @Col_4819760547104058387 AS bigint,  @Col_5735039865522523619 AS nvarchar(50),  @Col_5190992840719060449 AS nvarchar(50),  @Col_4798298711155420350 AS bigint,  @Col_5734364465859836924 AS int,  @Col_5668558491494590571 AS bit,  @Col_4681715191942200396 AS bit,  @Col_5389058767208499138 AS bit,  @Col_5656869007242304861 AS bit,  @Col_4839663788828962407 AS bit,  @Col_5392809815104644429 AS nvarchar(10),  @Col_5447864216398602997 AS nvarchar(11),  @Col_4676825254353781655 AS bit,  @Col_4858775235086145070 AS bit,  @Col_4659311251708217602 AS int,  @Col_5624003739167460820 AS bigint,  @Col_4917072605639784939 AS bigint,  @Col_4809213762955760342 AS nvarchar(1000),  @Col_5352530938879572280 AS bit,  @Col_5118256872779995066 AS bit,  @Col_5568440564971718604 AS bit,  @Col_5495204189799604917 AS int,  @Col_4615431540503671584 AS bit,  @Col_4931141982883407186 AS nvarchar(50),  @Col_4812790960432435113 AS nvarchar(50),  @Col_5565421426804681014 AS nvarchar(50),  @Col_5123824079997506024 AS bit,  @Col_4819422034654599507 AS bigint,  @Col_5203196081588324600 AS bit,  @Col_4911623689532144782 AS nvarchar(100),  @Col_4793634241596138168 AS bit,  @Col_5382784310684242131 AS bit,  @Col_5302700424741166293 AS int,  @Col_5591128339706187262 AS nvarchar(150),  @Col_4949257785239518214 AS bigint,  @Col_5757621999401718644 AS bit,  @Col_5263443334754630598 AS bit,  @Col_4904625854686664683 AS bit,  @Col_5274322539269778963 AS int,  @Col_4945194059781672514 AS nvarchar(50),  @Col_4839697049987806189 AS bit,  @Col_5287576350964428431 AS nvarchar(50),  @Col_4876911667450903111 AS nvarchar(50),  @Col_5409369756743812385 AS nvarchar(1000),  @Col_5215609702718612866 AS bigint,  @Col_5214184851893828049 AS bigint,  @Col_5321915798760308165 AS nvarchar(50),  @Col_5491021531889411585 AS int,  @Col_4948200665753577473 AS int,  @Col_4728016897295625884 AS nvarchar(50),  @Col_5195609748428162630 AS int,  @Col_5649431032226153954 AS int,  @Col_5581934880622446261 AS bit,  @Col_5319920761961862933 AS bit,  @Col_5139528391810745165 AS bit,  @Col_4937550961841903116 AS bit,  @Col_4761793774768584392 AS nvarchar(150),  @Col_5414911147853621844 AS nvarchar(50),  @Col_5397539152246789590 AS nvarchar(50),  @Col_5525262411784463573 AS nvarchar(50),  @Col_5510381208079247150 AS bit,  @Col_5208403737968325202 AS int,  @Col_5610076180504582867 AS int,  @Col_5425298620874923793 AS bit,  @Col_4731394453799451628 AS bit,  @Col_5718253916155017387 AS bit,  @Col_4769532511991724310 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm21041](Col_5494402685715244365,Col_5665959631221271450,Col_5656188629762278570,Col_5684013610708670363,Col_5279528291598107148,Col_5588901027094583235,Col_5410123904378380874,Col_5307054846183699357,Col_5231956594990321764,Col_4819760547104058387,Col_5735039865522523619,Col_5190992840719060449,Col_4798298711155420350,Col_5734364465859836924,Col_5668558491494590571,Col_4681715191942200396,Col_5389058767208499138,Col_5656869007242304861,Col_4839663788828962407,Col_5392809815104644429,Col_5447864216398602997,Col_4676825254353781655,Col_4858775235086145070,Col_4659311251708217602,Col_5624003739167460820,Col_4917072605639784939,Col_4809213762955760342,Col_5352530938879572280,Col_5118256872779995066,Col_5568440564971718604,Col_5495204189799604917,Col_4615431540503671584,Col_4931141982883407186,Col_4812790960432435113,Col_5565421426804681014,Col_5123824079997506024,Col_4819422034654599507,Col_5203196081588324600,Col_4911623689532144782,Col_4793634241596138168,Col_5382784310684242131,Col_5302700424741166293,Col_5591128339706187262,Col_4949257785239518214,Col_5757621999401718644,Col_5263443334754630598,Col_4904625854686664683,Col_5274322539269778963,Col_4945194059781672514,Col_4839697049987806189,Col_5287576350964428431,Col_4876911667450903111,Col_5409369756743812385,Col_5215609702718612866,Col_5214184851893828049,Col_5321915798760308165,Col_5491021531889411585,Col_4948200665753577473,Col_4728016897295625884,Col_5195609748428162630,Col_5649431032226153954,Col_5581934880622446261,Col_5319920761961862933,Col_5139528391810745165,Col_4937550961841903116,Col_4761793774768584392,Col_5414911147853621844,Col_5397539152246789590,Col_5525262411784463573,Col_5510381208079247150,Col_5208403737968325202,Col_5610076180504582867,Col_5425298620874923793,Col_4731394453799451628,Col_5718253916155017387,Col_4769532511991724310) VALUES ( @Col_5494402685715244365,@Col_5665959631221271450,@Col_5656188629762278570,@Col_5684013610708670363,@Col_5279528291598107148,@Col_5588901027094583235,@Col_5410123904378380874,@Col_5307054846183699357,@Col_5231956594990321764,@Col_4819760547104058387,@Col_5735039865522523619,@Col_5190992840719060449,@Col_4798298711155420350,@Col_5734364465859836924,@Col_5668558491494590571,@Col_4681715191942200396,@Col_5389058767208499138,@Col_5656869007242304861,@Col_4839663788828962407,@Col_5392809815104644429,@Col_5447864216398602997,@Col_4676825254353781655,@Col_4858775235086145070,@Col_4659311251708217602,@Col_5624003739167460820,@Col_4917072605639784939,@Col_4809213762955760342,@Col_5352530938879572280,@Col_5118256872779995066,@Col_5568440564971718604,@Col_5495204189799604917,@Col_4615431540503671584,@Col_4931141982883407186,@Col_4812790960432435113,@Col_5565421426804681014,@Col_5123824079997506024,@Col_4819422034654599507,@Col_5203196081588324600,@Col_4911623689532144782,@Col_4793634241596138168,@Col_5382784310684242131,@Col_5302700424741166293,@Col_5591128339706187262,@Col_4949257785239518214,@Col_5757621999401718644,@Col_5263443334754630598,@Col_4904625854686664683,@Col_5274322539269778963,@Col_4945194059781672514,@Col_4839697049987806189,@Col_5287576350964428431,@Col_4876911667450903111,@Col_5409369756743812385,@Col_5215609702718612866,@Col_5214184851893828049,@Col_5321915798760308165,@Col_5491021531889411585,@Col_4948200665753577473,@Col_4728016897295625884,@Col_5195609748428162630,@Col_5649431032226153954,@Col_5581934880622446261,@Col_5319920761961862933,@Col_5139528391810745165,@Col_4937550961841903116,@Col_4761793774768584392,@Col_5414911147853621844,@Col_5397539152246789590,@Col_5525262411784463573,@Col_5510381208079247150,@Col_5208403737968325202,@Col_5610076180504582867,@Col_5425298620874923793,@Col_4731394453799451628,@Col_5718253916155017387,@Col_4769532511991724310 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm21041]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm21041
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm21041] ( @PKFormId as bigint OUTPUT ,  @Col_5494402685715244365 AS nvarchar(50),  @Col_5665959631221271450 AS nvarchar(50),  @Col_5656188629762278570 AS nvarchar(1000),  @Col_5684013610708670363 AS nvarchar(11),  @Col_5279528291598107148 AS nvarchar(50),  @Col_5588901027094583235 AS nvarchar(1000),  @Col_5410123904378380874 AS nvarchar(50),  @Col_5307054846183699357 AS nvarchar(50),  @Col_5231956594990321764 AS bigint,  @Col_4819760547104058387 AS bigint,  @Col_5735039865522523619 AS nvarchar(50),  @Col_5190992840719060449 AS nvarchar(50),  @Col_4798298711155420350 AS bigint,  @Col_5734364465859836924 AS int,  @Col_5668558491494590571 AS bit,  @Col_4681715191942200396 AS bit,  @Col_5389058767208499138 AS bit,  @Col_5656869007242304861 AS bit,  @Col_4839663788828962407 AS bit,  @Col_5392809815104644429 AS nvarchar(10),  @Col_5447864216398602997 AS nvarchar(11),  @Col_4676825254353781655 AS bit,  @Col_4858775235086145070 AS bit,  @Col_4659311251708217602 AS int,  @Col_5624003739167460820 AS bigint,  @Col_4917072605639784939 AS bigint,  @Col_4809213762955760342 AS nvarchar(1000),  @Col_5352530938879572280 AS bit,  @Col_5118256872779995066 AS bit,  @Col_5568440564971718604 AS bit,  @Col_5495204189799604917 AS int,  @Col_4615431540503671584 AS bit,  @Col_4931141982883407186 AS nvarchar(50),  @Col_4812790960432435113 AS nvarchar(50),  @Col_5565421426804681014 AS nvarchar(50),  @Col_5123824079997506024 AS bit,  @Col_4819422034654599507 AS bigint,  @Col_5203196081588324600 AS bit,  @Col_4911623689532144782 AS nvarchar(100),  @Col_4793634241596138168 AS bit,  @Col_5382784310684242131 AS bit,  @Col_5302700424741166293 AS int,  @Col_5591128339706187262 AS nvarchar(150),  @Col_4949257785239518214 AS bigint,  @Col_5757621999401718644 AS bit,  @Col_5263443334754630598 AS bit,  @Col_4904625854686664683 AS bit,  @Col_5274322539269778963 AS int,  @Col_4945194059781672514 AS nvarchar(50),  @Col_4839697049987806189 AS bit,  @Col_5287576350964428431 AS nvarchar(50),  @Col_4876911667450903111 AS nvarchar(50),  @Col_5409369756743812385 AS nvarchar(1000),  @Col_5215609702718612866 AS bigint,  @Col_5214184851893828049 AS bigint,  @Col_5321915798760308165 AS nvarchar(50),  @Col_5491021531889411585 AS int,  @Col_4948200665753577473 AS int,  @Col_4728016897295625884 AS nvarchar(50),  @Col_5195609748428162630 AS int,  @Col_5649431032226153954 AS int,  @Col_5581934880622446261 AS bit,  @Col_5319920761961862933 AS bit,  @Col_5139528391810745165 AS bit,  @Col_4937550961841903116 AS bit,  @Col_4761793774768584392 AS nvarchar(150),  @Col_5414911147853621844 AS nvarchar(50),  @Col_5397539152246789590 AS nvarchar(50),  @Col_5525262411784463573 AS nvarchar(50),  @Col_5510381208079247150 AS bit,  @Col_5208403737968325202 AS int,  @Col_5610076180504582867 AS int,  @Col_5425298620874923793 AS bit,  @Col_4731394453799451628 AS bit,  @Col_5718253916155017387 AS bit,  @Col_4769532511991724310 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm21041] SET Col_5494402685715244365 =  @Col_5494402685715244365, Col_5665959631221271450 =  @Col_5665959631221271450, Col_5656188629762278570 =  @Col_5656188629762278570, Col_5684013610708670363 =  @Col_5684013610708670363, Col_5279528291598107148 =  @Col_5279528291598107148, Col_5588901027094583235 =  @Col_5588901027094583235, Col_5410123904378380874 =  @Col_5410123904378380874, Col_5307054846183699357 =  @Col_5307054846183699357, Col_5231956594990321764 =  @Col_5231956594990321764, Col_4819760547104058387 =  @Col_4819760547104058387, Col_5735039865522523619 =  @Col_5735039865522523619, Col_5190992840719060449 =  @Col_5190992840719060449, Col_4798298711155420350 =  @Col_4798298711155420350, Col_5734364465859836924 =  @Col_5734364465859836924, Col_5668558491494590571 =  @Col_5668558491494590571, Col_4681715191942200396 =  @Col_4681715191942200396, Col_5389058767208499138 =  @Col_5389058767208499138, Col_5656869007242304861 =  @Col_5656869007242304861, Col_4839663788828962407 =  @Col_4839663788828962407, Col_5392809815104644429 =  @Col_5392809815104644429, Col_5447864216398602997 =  @Col_5447864216398602997, Col_4676825254353781655 =  @Col_4676825254353781655, Col_4858775235086145070 =  @Col_4858775235086145070, Col_4659311251708217602 =  @Col_4659311251708217602, Col_5624003739167460820 =  @Col_5624003739167460820, Col_4917072605639784939 =  @Col_4917072605639784939, Col_4809213762955760342 =  @Col_4809213762955760342, Col_5352530938879572280 =  @Col_5352530938879572280, Col_5118256872779995066 =  @Col_5118256872779995066, Col_5568440564971718604 =  @Col_5568440564971718604, Col_5495204189799604917 =  @Col_5495204189799604917, Col_4615431540503671584 =  @Col_4615431540503671584, Col_4931141982883407186 =  @Col_4931141982883407186, Col_4812790960432435113 =  @Col_4812790960432435113, Col_5565421426804681014 =  @Col_5565421426804681014, Col_5123824079997506024 =  @Col_5123824079997506024, Col_4819422034654599507 =  @Col_4819422034654599507, Col_5203196081588324600 =  @Col_5203196081588324600, Col_4911623689532144782 =  @Col_4911623689532144782, Col_4793634241596138168 =  @Col_4793634241596138168, Col_5382784310684242131 =  @Col_5382784310684242131, Col_5302700424741166293 =  @Col_5302700424741166293, Col_5591128339706187262 =  @Col_5591128339706187262, Col_4949257785239518214 =  @Col_4949257785239518214, Col_5757621999401718644 =  @Col_5757621999401718644, Col_5263443334754630598 =  @Col_5263443334754630598, Col_4904625854686664683 =  @Col_4904625854686664683, Col_5274322539269778963 =  @Col_5274322539269778963, Col_4945194059781672514 =  @Col_4945194059781672514, Col_4839697049987806189 =  @Col_4839697049987806189, Col_5287576350964428431 =  @Col_5287576350964428431, Col_4876911667450903111 =  @Col_4876911667450903111, Col_5409369756743812385 =  @Col_5409369756743812385, Col_5215609702718612866 =  @Col_5215609702718612866, Col_5214184851893828049 =  @Col_5214184851893828049, Col_5321915798760308165 =  @Col_5321915798760308165, Col_5491021531889411585 =  @Col_5491021531889411585, Col_4948200665753577473 =  @Col_4948200665753577473, Col_4728016897295625884 =  @Col_4728016897295625884, Col_5195609748428162630 =  @Col_5195609748428162630, Col_5649431032226153954 =  @Col_5649431032226153954, Col_5581934880622446261 =  @Col_5581934880622446261, Col_5319920761961862933 =  @Col_5319920761961862933, Col_5139528391810745165 =  @Col_5139528391810745165, Col_4937550961841903116 =  @Col_4937550961841903116, Col_4761793774768584392 =  @Col_4761793774768584392, Col_5414911147853621844 =  @Col_5414911147853621844, Col_5397539152246789590 =  @Col_5397539152246789590, Col_5525262411784463573 =  @Col_5525262411784463573, Col_5510381208079247150 =  @Col_5510381208079247150, Col_5208403737968325202 =  @Col_5208403737968325202, Col_5610076180504582867 =  @Col_5610076180504582867, Col_5425298620874923793 =  @Col_5425298620874923793, Col_4731394453799451628 =  @Col_4731394453799451628, Col_5718253916155017387 =  @Col_5718253916155017387, Col_4769532511991724310 =  @Col_4769532511991724310 WHERE [frm21041Id] = @PKFormId 
 END 
GO
GO----------
 IF(SELECT COUNT(*) FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm21041' OR NAME = 'Tbl_frm20295' ) = 2 
 BEGIN 
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_Rfrm20295frm21041') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON   CREATE TABLE [dbo].[Tbl_Rfrm20295frm21041] ( [Rfrm20295frm21041Id]  [bigint] IDENTITY(1,1) NOT NULL , [frm21041Id]  [bigint] NULL , [frm20295Id]  [bigint] NULL ,  PRIMARY KEY CLUSTERED ( [Rfrm20295frm21041Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]   ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] WITH NOCHECK ADD  CONSTRAINT [FK_frm20295frm210411] 
 FOREIGN KEY ([frm21041Id]) REFERENCES [dbo].[Tbl_frm21041] ([frm21041Id]) 
 ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] CHECK CONSTRAINT [FK_frm20295frm210411] 
 ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] WITH NOCHECK ADD  CONSTRAINT [FK_frm20295frm210412] 
 FOREIGN KEY ([frm20295Id]) REFERENCES [dbo].[Tbl_frm20295] ([frm20295Id]) 
 ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] CHECK CONSTRAINT [FK_frm20295frm210412 ] END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20295frm21041' AND COLUMN_NAME = 'Rfrm20295frm21041Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] ADD Rfrm20295frm21041Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20295frm21041' AND COLUMN_NAME = 'frm21041Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] ADD frm21041Id bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20295frm21041' AND COLUMN_NAME = 'frm20295Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20295frm21041] ADD frm20295Id bigint NULL END  
 END 
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm20295frm21041]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm20295frm21041
 EXEC('CREATE PROCEDURE [dbo].[SP_Insert_frm20295frm21041] ( @PKFormId as bigint OUTPUT ,  @frm21041Id AS bigint,  @frm20295Id AS bigint ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_Rfrm20295frm21041](frm21041Id,frm20295Id) VALUES ( @frm21041Id,@frm20295Id )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END') 
 END 
GO
----------
----------
GO----------
 IF(SELECT COUNT(*) FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm21041' OR NAME = 'Tbl_frm20300' ) = 2 
 BEGIN 
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_Rfrm20300frm21041') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON   CREATE TABLE [dbo].[Tbl_Rfrm20300frm21041] ( [Rfrm20300frm21041Id]  [bigint] IDENTITY(1,1) NOT NULL , [frm21041Id]  [bigint] NULL , [frm20300Id]  [bigint] NULL ,  PRIMARY KEY CLUSTERED ( [Rfrm20300frm21041Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]   ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] WITH NOCHECK ADD  CONSTRAINT [FK_frm20300frm210411] 
 FOREIGN KEY ([frm21041Id]) REFERENCES [dbo].[Tbl_frm21041] ([frm21041Id]) 
 ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] CHECK CONSTRAINT [FK_frm20300frm210411] 
 ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] WITH NOCHECK ADD  CONSTRAINT [FK_frm20300frm210412] 
 FOREIGN KEY ([frm20300Id]) REFERENCES [dbo].[Tbl_frm20300] ([frm20300Id]) 
 ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] CHECK CONSTRAINT [FK_frm20300frm210412 ] END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20300frm21041' AND COLUMN_NAME = 'Rfrm20300frm21041Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] ADD Rfrm20300frm21041Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20300frm21041' AND COLUMN_NAME = 'frm21041Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] ADD frm21041Id bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Rfrm20300frm21041' AND COLUMN_NAME = 'frm20300Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Rfrm20300frm21041] ADD frm20300Id bigint NULL END  
 END 
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm20300frm21041]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm20300frm21041
 EXEC('CREATE PROCEDURE [dbo].[SP_Insert_frm20300frm21041] ( @PKFormId as bigint OUTPUT ,  @frm21041Id AS bigint,  @frm20300Id AS bigint ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_Rfrm20300frm21041](frm21041Id,frm20300Id) VALUES ( @frm21041Id,@frm20300Id )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END') 
 END 
GO
----------
----------
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31548) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31548, N'فرم ارتباط با پشتیبانی سامانه سجاد پورتال',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1106" Height="1026" Background="White">
  <Canvas Width="1006" Height="852">
    <ViewLayouts>
      <ViewLayoutItem Name="ثبت کننده" ID="5591385503275760470" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4685558585417077630" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5231733800714381061" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591268675506701146" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5195032388036176829" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5072203725658548127" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5338322824532072097" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5020277503308169260" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5646887670739877569</ID>
        <Name>کد ملی</Name>
        <Condition>({@ChckNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی معتبر نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5643583642994670259</ComponentID>
            <ComponentName>ChckNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5231595385198277993</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4730218701630974631</ID>
        <Name>عدم امکان ثبت درخواست تکراری برای یک موضوع اصلی در جریان</Name>
        <Condition>({@chkNoRepeatedReqestPerUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شما در حال حاظر یک درخواست در جریان برای این موضوع اصلی دارید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5294931454992277379</ComponentID>
            <ComponentName>chkNoRepeatedReqestPerUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5478935476815218500</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5664613290973684370</ID>
        <Name>نامرتبط بودن شماره پیگیری فرآیند</Name>
        <Condition>({@chkIsRelatedFollowupCode.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره پیگیری وارد شده مربوط به فرایند مورد نظر نمیباشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5480933692399698125</ComponentID>
            <ComponentName>chkIsRelatedFollowupCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4860915658801827609</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5399638861972903409</ID>
        <Name>درخواست تکراری</Name>
        <Condition>({@chkIsInOwnCartable.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>متقاضی گرامی ؛ درخواست پیگیری شده در کارتابل شما قرار دارد. امکان پیگیری این درخواست وجود نخواهد داشت. </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5397043020044863036</ComponentID>
            <ComponentName>chkIsInOwnCartable</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4783826170816242872</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5523724959094556207</ID>
        <Name>عددی نبودن کد رهگیری</Name>
        <Condition>({@chkIfFollowUpCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد رهگیری باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5553122207017016538</ComponentID>
            <ComponentName>chkIfFollowUpCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5448269569300800745</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox19" Width="990" Height="837" Background="#FFC5DEF7" ControlID="5762450696264491489" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:Grid Width="962" Height="799.51666666666665" ControlID="4932028539918414142" Canvas.Left="8" Canvas.Top="8">
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199362938553119*" />
            <RowDefinition Height="0.24636524873807*" />
            <RowDefinition Height="0.55427181270881*" />
          </Grid.RowDefinitions>
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.50060157279695*" />
            <ColumnDefinition Width="0.499398427203051*" />
          </Grid.ColumnDefinitions>
          <cm:TzGroupBox Name="GroupBox21" Width="946" Height="179" Margin="8,10.331502416066,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5675806363633942607" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:Header="">
            <Canvas>
              <cm:Grid Width="918" Height="141.51666666666665" ControlID="5145645792244108439" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.48082350016815*" />
                  <ColumnDefinition Width="0.51917649983185*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.599347469569689*" />
                  <RowDefinition Height="0.400652530430311*" />
                </Grid.RowDefinitions>
                <cm:TZCheckBox Name="CheckRead" Content="متن بالا مطالعه شد و مشکل رفع نشد" Width="232.00000000000003" Height="20" Margin="115.914349795638,14.9476394329146,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5231733800714381061" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" cm:Event="DSCheckLogin" cm:FCVCol="5338322824532072097#5591268675506701146#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4805321281397322991#" />
                <cm:tzLabel Name="Lable2526" Content="tzLabel" Width="545" Height="23" Margin="210.76959524,45.77738516,162.23040476,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4663126706344957965" FlowDirection="RightToLeft" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="DSReadLable" cm:DataBindingField="lable" />
                <cm:TZCheckBox Name="chkIsInOwnCartable" Content="InOwnCartable" Width="120" Height="20" Margin="19.9929577399996,14.0144115917394,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397043020044863036" Grid.Column="0" Grid.Row="0" cm:DataBinding="dsCartableStatus" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox2122" Width="946" Height="425.14959725666665" Margin="0,9.99995486757257,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4805321281397322991" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="2" cm:Header="">
            <Canvas>
              <cm:Grid Width="918" Height="387.6662639233333" ControlID="5059482406126187454" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.333399131464666*" />
                  <ColumnDefinition Width="0.330708718983492*" />
                  <ColumnDefinition Width="0.335892149551842*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.249902697974759*" />
                  <RowDefinition Height="0.251727263603837*" />
                  <RowDefinition Height="0.14696566264545*" />
                  <RowDefinition Height="0.351404375775955*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable3738" Content="موضوع اصلی" Width="273" Height="23" Margin="0,21.00433839,182.18145162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5196525606412397050" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" />
                <cm:tzLookUpComboBox Name="cmbMainSubject" Width="427.03828458999993" Height="22.000000000000004" Margin="0,0,78.1431670300001,29.8745068782357" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5591268675506701146" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSMainSubject" cm:DataType="NVarChar" cm:Event="dschkIsRelatedFollowupCode,dschkNoRepeatedReqestPerUser" cm:tzDisplayItem="WorkflowName" cm:tzValueItem="WorkFlowID" />
                <cm:tzDataSource Name="DSMainSubject" Content="DSMainSubject" Width="53.877237849999972" Height="25" Margin="0,31,197.832458331409,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5569788149976466536" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_GetworkflowList_SajadSupport" />
                <cm:tzLabel Name="Lable31" Content="کد ملی" Width="120" Height="23.000000000000004" Margin="0,10.8326235063473,38.2722652345636,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5046507531470247286" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
                <cm:tzTextBox Name="txtNationalCode" Width="120" Height="21.000000000000007" Margin="0,0,58.7367491200001,25.753544302596" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5143704890239982122" MaxLength="10" Grid.Column="0" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="NationalCode" cm:Event="DSChckNationalCode" cm:Len="10" />
                <cm:tzTextBox Name="txtRegDate" Width="120" Height="21" Margin="8,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5659690905747023735" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
                <cm:tzTextBox Name="txtRegTime" Width="120.00000000000001" Height="21" Margin="8,30,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4622391479516633008" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentTime" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="DSChckNationalCode" Content="DSChckNationalCode" Width="120" Height="25" Margin="8,0,0,19.8788452682359" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4784940971977146100" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_CheckNationalCode {@txtNationalCode}" />
                <cm:TZCheckBox Name="ChckNationalCode" Content="ChckNationalCode" Width="119.99999999999999" Height="20" Margin="0,0,58.7367491200002,19.878845268236" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5643583642994670259" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSChckNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsRelatedFollowupCode" Content="dschkIsRelatedFollowupCode" Width="119.38618928" Height="25" Margin="74.6661288285909,5,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4618752594052731019" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubject" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FollowUpCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProblemType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProblemType" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsRelatedFollowupCode" Content="RelatedFollowupCode" Width="77" Height="20" Margin="300.256732855436,16.0043383900003,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5480933692399698125" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dschkIsRelatedFollowupCode" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzLabel Name="Lable27" Content="موبایل" Width="120" Height="23" Margin="0,10.8326235063473,52.2966751800002,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5546869736012657834" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
                <cm:tzTextBox Name="txtMobile" Width="119.99999999999997" Height="21.000000000000007" Margin="0,0,68.3861337899999,11.4980007722521" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5195032388036176829" MaxLength="11" Grid.Column="2" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="Mobile" cm:DataType="BigInt" cm:Event="DSMandMobile" cm:Len="11" />
                <cm:tzLabel Name="Lable29" Content="ایمیل" Width="120.00000000000004" Height="23.000000000000007" Margin="0,10.8326235063473,32.8659594614095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5717270502398003465" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
                <cm:tzTextBox Name="txtEmail" Width="120" Height="21.000000000000014" Margin="0,28.8326235063475,59.3493354214096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5072203725658548127" Grid.Column="1" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="email" cm:Event="DSMandEmail" />
                <cm:tzLabel Name="Lable59" Content="خواهشمند است از صحت آدرس ایمیل خود اطمینان حاصل فرمایید. پاسخ درخواست، از طریق ایمیل به شما اطلاع رسانی می شود" Width="252" Height="23" Margin="27.3598213854364,0,24.2307826414093,15.753544302596" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5353963176773428128" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
                <cm:tzLabel Name="Lable33" Content="شرح" Width="358.69832871000028" Height="23.000000000000007" Margin="0,18.5029028549695,15.8414322199997,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5491752338529963268" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" />
                <cm:tzTextBox Name="txtDescript" Width="403.99999999999994" Height="90.000000000000028" Margin="0,42.5029028549695,57.2149527500005,3.72471862840598" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="5338322824532072097" MaxLength="1000" TextWrapping="Wrap" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" cm:DecimalMark="False" cm:Event="DSMandDesc" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLabel Name="Lable3536" Content="بارگذاری تصویر خطا " Width="119.99999999999999" Height="23.000000000000014" Margin="0,18.5029028549696,38.2722652345637,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5235105726302570044" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" />
                <cm:TZFileUpload Name="FileUpload34" Width="233.99999999999994" Height="30.999999999999975" Margin="33.7881374499997,59.0635947831122,38.2722652345638,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5020277503308169260" Grid.Column="0" Grid.Row="3" cm:Event="DSMandFileUpload" />
                <cm:TZCheckBox Name="chkNoRepeatedReqestPerUser" Content="RepeatedReqestPerUser" Width="91.055745309999878" Height="20" Margin="0,73.00433839,159.37003928,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5294931454992277379" Grid.Column="2" Grid.Row="0" cm:DataBinding="dschkNoRepeatedReqestPerUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkNoRepeatedReqestPerUser" Content="dschkNoRepeatedReqestPerUser" Width="134.52860706000027" Height="25" Margin="0,68.00433839,15.8414322199998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5631073714566369002" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chk_NoRepeatedReqestPerUser_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @mainSubject" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:tzLabel Name="Lable23" Content="نوع مشکل" Width="139" Height="37" Margin="0,36.01666667,28.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5715763135710709954" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbProblemType" Width="186.99999999999997" Height="22" Margin="0,113.22364425,108.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4685558585417077630" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSProblemType" cm:DataType="Int" cm:Event="DSChckProblemType,DSProblemType5,DSReadLable,dschkIsRelatedFollowupCode,dschkIsResponseFollowUp" cm:tzDisplayItem="Problem" cm:tzValueItem="ProblemTypeID" />
          <cm:tzDataSource Name="DSProblemType" Content="DSProblemType" Width="26" Height="25" Margin="0,110.22364425,296.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5654124775771199532" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Read_Tbl_Cu_Base_ProblemTypeForAskQuestion " />
          <cm:tzDataSource Name="DSChckProblemType" Content="DSChckProblemType" Width="110" Height="25" Margin="13.4837310200001,10.0166666699999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5561866746021767150" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Check_ProblemTypeForAskQuestion {@cmbProblemType}" />
          <cm:TZCheckBox Name="ChckProblemType" Content="ChckProblemType" Width="95.686153740000037" Height="20" Margin="0,15.01666667,253.408828270665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4640890940619526848" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSChckProblemType" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5675806363633942607#" />
          <cm:tzDataSource Name="DSProblemType5" Content="DSProblemType5" Width="110" Height="25" Margin="13.4837310200005,0,0,98.3773254188613" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5500336126843527523" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Check_ProblemTypeFRM31548 {@cmbProblemType}" />
          <cm:TZCheckBox Name="ChckProblemType5" Content="ChckProblemType5" Width="119.99999999999999" Height="20.000000000000007" Margin="0,37.22364425,229.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4923636549887198074" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSProblemType5" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5196525606412397050#5591268675506701146#" cm:IsVisibleItem="False" cm:TCVCol="5591268675506701146#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzDataSource Name="DSReadLable" Content="DSReadLable" Width="110" Height="25" Margin="13.4837310200005,58.22364425,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5417737368104357454" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Read_ProblemDescFRM31548 {@cmbProblemType}" />
          <cm:tzTextBox Name="txtUserID" Width="109.99999999999952" Height="21.000000000000004" Margin="13.483731020001,0,0,24.1703478388613" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5580294098464216683" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:Event="dsCartableStatus,dschkNoRepeatedReqestPerUser" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="DSCheckLogin" Content="DSCheckLogin" Width="110" Height="25" Margin="0,84.22364425,358.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4691946605682744509" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_CheckLogin_FRM31548 {@txtUserID}" />
          <cm:TZCheckBox Name="CheckLogin" Content="CheckLogin" Width="120" Height="20.000000000000004" Margin="0,89.22364425,229.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5141215259005442008" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSCheckLogin" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5143704890239982122#" cm:TVCol="5046507531470247286#5143704890239982122#" />
          <cm:TZCheckBox Name="chkIsResponseFollowUp" Content="TZCheckBox" Width="45" Height="20" Margin="0,0,277.048660969999,62.6536811721947" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4954248388369840800" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkIsResponseFollowUp" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="5744797132753413952#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5364759671838169882#5744797132753413952#" cm:TVCol="5364759671838169882#5744797132753413952#" />
          <cm:tzDataSource Name="dschkIsResponseFollowUp" Content="dschkIsResponseFollowUp" Width="154" Height="25" Margin="212.372625999335,76.22364425,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5756715536386791889" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkProblemTypeID_frm21041">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProblemType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProblemType" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="Lable37" Content="* شماره پیگیری فرایند" Width="114.90999999999997" Height="24.483333333333334" Margin="0,11.7403109166666,18.8367880206644,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5364759671838169882" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFFollowUpCode" Width="150" Height="21" Margin="0,40.01666667,18.8367880206644,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5744797132753413952" Grid.Column="0" Grid.Row="0" cm:DataType="NVarChar" cm:Event="dschkIsRelatedFollowupCode,dsCartableStatus,dschkIfNotInOwnCartableAndIfRelated,dschkIfFollowUpCodeNumeric" cm:Len="10" />
          <cm:tzLabel Name="lblCartableStatus" Content="tzLabel" Width="120" Height="23" Margin="0,86.22364425,24.0396519806646,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5491117661883752788" FlowDirection="RightToLeft" Grid.Column="0" Grid.Row="0" cm:DataBinding="dsCartableStatus" cm:DataBindingField="Desciption" />
          <cm:tzDataSource Name="dsCartableStatus" Content="dsCartableStatus" Width="110" Height="25.000000000000004" Margin="0,0,183.384995330665,71.1703478388613" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4675934099378975406" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getStatusFromDashboard_frm31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPortalID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalUserID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FollowUpCode" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzTextBox Name="txtPortalUserID" Width="120" Height="21" Margin="27.3655697893345,15.2236442499999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5356646009321483397" Grid.Column="1" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chkCartableStatus" Content="با توجه به وضعیت مشاهده شده ، درخواست ثبت پیگیری درخواست را دارم ." Width="119.99999999999999" Height="20" Margin="0,0,24.0396519806646,15.0653359088612" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4617756592094904596" Grid.Column="0" Grid.Row="0" cm:IsVisibleItem="True" />
          <cm:tzDataSource Name="dschkIfNotInOwnCartableAndIfRelated" Content="dschkIfNotInOwnCartableAndIfRelated" Width="109.99999999999999" Height="25" Margin="188.1937177,135.725494504927,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5316477968266922472" Grid.Column="0" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_IfNotInOwnCartableAndIfRelated_frm31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsInOwnCartable}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkIsInOwnCartable" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsRelatedFollowupCode}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkFollowUpCodeIfInRelatedWFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsResponseFollowUp}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkIsResponseFollowUp" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkIfNotInOwnCartableAndIfRelated" Content="chkIfNotInOwnCartableAndIfRelated" Width="120.00000000000003" Height="20" Margin="191.741925010001,2.33150241606569,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4876565524279906544" Grid.Column="0" Grid.Row="1" cm:DataBinding="dschkIfNotInOwnCartableAndIfRelated" cm:DataBindingField="TrueEnableCheckbox" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4617756592094904596#" cm:TVCol="5491117661883752788#4617756592094904596#" />
          <cm:tzDataSource Name="dschkIfFollowUpCodeNumeric" Content="dschkIfFollowUpCodeNumeric" Width="110" Height="25.000000000000007" Margin="0,63.2236442500001,454.05571718,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4804145710005920773" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkSendToTazarvMandatoryforITExpertFRM21041">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtWFFollowUpCode" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkIfFollowUpCodeNumeric" Content="TZCheckBox" Width="120" Height="20" Margin="403.2963955,89.2236442500001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5553122207017016538" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dschkIfFollowUpCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtPortalID" Width="73" Height="21" Margin="192.567920389335,15.2236442499998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5359290890336740476" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsPortalUserID" cm:DataBindingField="ExternalUserId" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsPortalUserID" Content="dsPortalUserID" Width="66" Height="25" Margin="0,11.2236442499998,130.78401535,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4703248829728492349" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_portal_userID_FRM31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/11/14 11:52:10', '9cc14b50-b84d-43b3-83e3-daa24950f263', 0, N'', N'{"formID": "31548" ,"components": [{"value": "","key": "5643583642994670259","label": "ChckNationalCode","controlType": "checkbox","caption": "ChckNationalCode" ,"DataBindingField" : "result"},{"value": "","key": "4640890940619526848","label": "ChckProblemType","controlType": "checkbox","caption": "ChckProblemType" ,"DataBindingField" : "res"},{"value": "","key": "4923636549887198074","label": "ChckProblemType5","controlType": "checkbox","caption": "ChckProblemType5" ,"DataBindingField" : "res"},{"value": "","key": "5141215259005442008","label": "CheckLogin","controlType": "checkbox","caption": "CheckLogin" ,"DataBindingField" : "res"},{"value": "","key": "5231733800714381061","label": "CheckRead","controlType": "checkbox","caption": "متن بالا مطالعه شد و مشکل رفع نشد" ,"DataBindingField" : ""},{"value": "","key": "4617756592094904596","label": "chkCartableStatus","controlType": "checkbox","caption": "با توجه به وضعیت مشاهده شده ، درخواست ثبت پیگیری درخواست را دارم ." ,"DataBindingField" : ""},{"value": "","key": "5553122207017016538","label": "chkIfFollowUpCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4876565524279906544","label": "chkIfNotInOwnCartableAndIfRelated","controlType": "checkbox","caption": "chkIfNotInOwnCartableAndIfRelated" ,"DataBindingField" : "TrueEnableCheckbox"},{"value": "","key": "5397043020044863036","label": "chkIsInOwnCartable","controlType": "checkbox","caption": "InOwnCartable" ,"DataBindingField" : "res"},{"value": "","key": "5480933692399698125","label": "chkIsRelatedFollowupCode","controlType": "checkbox","caption": "RelatedFollowupCode" ,"DataBindingField" : "res"},{"value": "","key": "4954248388369840800","label": "chkIsResponseFollowUp","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5294931454992277379","label": "chkNoRepeatedReqestPerUser","controlType": "checkbox","caption": "RepeatedReqestPerUser" ,"DataBindingField" : "res"},{"key": "5591268675506701146","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key": "4685558585417077630","label": "cmbProblemType","value": "", "controlType": "dropdown","options":""},{"key":"4675934099378975406" , "dataSourceName":"dsCartableStatus" , "controlType": "datasource",  "selectQuery" :"sp_cu_getStatusFromDashboard_frm31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4784940971977146100" , "dataSourceName":"DSChckNationalCode" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_CheckNationalCode {@txtNationalCode}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5561866746021767150" , "dataSourceName":"DSChckProblemType" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Check_ProblemTypeForAskQuestion {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4691946605682744509" , "dataSourceName":"DSCheckLogin" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_CheckLogin_FRM31548 {@txtUserID}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4804145710005920773" , "dataSourceName":"dschkIfFollowUpCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkSendToTazarvMandatoryforITExpertFRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5316477968266922472" , "dataSourceName":"dschkIfNotInOwnCartableAndIfRelated" , "controlType": "datasource",  "selectQuery" :"sp_cu_IfNotInOwnCartableAndIfRelated_frm31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4618752594052731019" , "dataSourceName":"dschkIsRelatedFollowupCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5756715536386791889" , "dataSourceName":"dschkIsResponseFollowUp" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkProblemTypeID_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5631073714566369002" , "dataSourceName":"dschkNoRepeatedReqestPerUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chk_NoRepeatedReqestPerUser_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5569788149976466536" , "dataSourceName":"DSMainSubject" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_GetworkflowList_SajadSupport" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4703248829728492349" , "dataSourceName":"dsPortalUserID" , "controlType": "datasource",  "selectQuery" :"sp_cu_portal_userID_FRM31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5654124775771199532" , "dataSourceName":"DSProblemType" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Read_Tbl_Cu_Base_ProblemTypeForAskQuestion " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5500336126843527523" , "dataSourceName":"DSProblemType5" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Check_ProblemTypeFRM31548 {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5417737368104357454" , "dataSourceName":"DSReadLable" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Read_ProblemDescFRM31548 {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5338322824532072097","label": "txtDescript","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5072203725658548127","label": "txtEmail","controlType": "textbox", "type": "" , "DataBindingField" : "email"},{"value": "","key": "5195032388036176829","label": "txtMobile","controlType": "textbox", "type": "" , "DataBindingField" : "Mobile"},{"value": "","key": "5143704890239982122","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "","key": "5359290890336740476","label": "txtPortalID","controlType": "textbox", "type": "" , "DataBindingField" : "ExternalUserId"},{"value": "","key": "5356646009321483397","label": "txtPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentDate","key": "5659690905747023735","label": "txtRegDate","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentTime","key": "4622391479516633008","label": "txtRegTime","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "5580294098464216683","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5744797132753413952","label": "txtWFFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5591385503275760470","data": [{"key": "4685558585417077630","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5231733800714381061","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5591268675506701146","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5195032388036176829","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5072203725658548127","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5338322824532072097","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5020277503308169260","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم ارتباط با پشتیبانی سامانه سجاد پورتال',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1106" Height="1026" Background="White">
  <Canvas Width="1006" Height="852">
    <ViewLayouts>
      <ViewLayoutItem Name="ثبت کننده" ID="5591385503275760470" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4685558585417077630" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5231733800714381061" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5591268675506701146" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5195032388036176829" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5072203725658548127" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5338322824532072097" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5020277503308169260" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5646887670739877569</ID>
        <Name>کد ملی</Name>
        <Condition>({@ChckNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی معتبر نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5643583642994670259</ComponentID>
            <ComponentName>ChckNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5231595385198277993</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4730218701630974631</ID>
        <Name>عدم امکان ثبت درخواست تکراری برای یک موضوع اصلی در جریان</Name>
        <Condition>({@chkNoRepeatedReqestPerUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شما در حال حاظر یک درخواست در جریان برای این موضوع اصلی دارید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5294931454992277379</ComponentID>
            <ComponentName>chkNoRepeatedReqestPerUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5478935476815218500</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5664613290973684370</ID>
        <Name>نامرتبط بودن شماره پیگیری فرآیند</Name>
        <Condition>({@chkIsRelatedFollowupCode.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره پیگیری وارد شده مربوط به فرایند مورد نظر نمیباشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5480933692399698125</ComponentID>
            <ComponentName>chkIsRelatedFollowupCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4860915658801827609</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5399638861972903409</ID>
        <Name>درخواست تکراری</Name>
        <Condition>({@chkIsInOwnCartable.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>متقاضی گرامی ؛ درخواست پیگیری شده در کارتابل شما قرار دارد. امکان پیگیری این درخواست وجود نخواهد داشت. </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5397043020044863036</ComponentID>
            <ComponentName>chkIsInOwnCartable</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4783826170816242872</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5523724959094556207</ID>
        <Name>عددی نبودن کد رهگیری</Name>
        <Condition>({@chkIfFollowUpCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد رهگیری باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5553122207017016538</ComponentID>
            <ComponentName>chkIfFollowUpCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5448269569300800745</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox19" Width="990" Height="837" Background="#FFC5DEF7" ControlID="5762450696264491489" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:Grid Width="962" Height="799.51666666666665" ControlID="4932028539918414142" Canvas.Left="8" Canvas.Top="8">
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199362938553119*" />
            <RowDefinition Height="0.24636524873807*" />
            <RowDefinition Height="0.55427181270881*" />
          </Grid.RowDefinitions>
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.50060157279695*" />
            <ColumnDefinition Width="0.499398427203051*" />
          </Grid.ColumnDefinitions>
          <cm:TzGroupBox Name="GroupBox21" Width="946" Height="179" Margin="8,10.331502416066,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5675806363633942607" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:Header="">
            <Canvas>
              <cm:Grid Width="918" Height="141.51666666666665" ControlID="5145645792244108439" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.48082350016815*" />
                  <ColumnDefinition Width="0.51917649983185*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.599347469569689*" />
                  <RowDefinition Height="0.400652530430311*" />
                </Grid.RowDefinitions>
                <cm:TZCheckBox Name="CheckRead" Content="متن بالا مطالعه شد و مشکل رفع نشد" Width="232.00000000000003" Height="20" Margin="115.914349795638,14.9476394329146,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5231733800714381061" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" cm:Event="DSCheckLogin" cm:FCVCol="5338322824532072097#5591268675506701146#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4805321281397322991#" />
                <cm:tzLabel Name="Lable2526" Content="tzLabel" Width="545" Height="23" Margin="210.76959524,45.77738516,162.23040476,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4663126706344957965" FlowDirection="RightToLeft" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="DSReadLable" cm:DataBindingField="lable" />
                <cm:TZCheckBox Name="chkIsInOwnCartable" Content="InOwnCartable" Width="120" Height="20" Margin="19.9929577399996,14.0144115917394,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397043020044863036" Grid.Column="0" Grid.Row="0" cm:DataBinding="dsCartableStatus" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox2122" Width="946" Height="425.14959725666665" Margin="0,9.99995486757257,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4805321281397322991" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="2" cm:Header="">
            <Canvas>
              <cm:Grid Width="918" Height="387.6662639233333" ControlID="5059482406126187454" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.333399131464666*" />
                  <ColumnDefinition Width="0.330708718983492*" />
                  <ColumnDefinition Width="0.335892149551842*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.249902697974759*" />
                  <RowDefinition Height="0.251727263603837*" />
                  <RowDefinition Height="0.14696566264545*" />
                  <RowDefinition Height="0.351404375775955*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable3738" Content="موضوع اصلی" Width="273" Height="23" Margin="0,21.00433839,182.18145162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5196525606412397050" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" />
                <cm:tzLookUpComboBox Name="cmbMainSubject" Width="427.03828458999993" Height="22.000000000000004" Margin="0,0,78.1431670300001,29.8745068782357" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5591268675506701146" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSMainSubject" cm:DataType="NVarChar" cm:Event="dschkIsRelatedFollowupCode,dschkNoRepeatedReqestPerUser" cm:tzDisplayItem="WorkflowName" cm:tzValueItem="WorkFlowID" />
                <cm:tzDataSource Name="DSMainSubject" Content="DSMainSubject" Width="53.877237849999972" Height="25" Margin="0,31,197.832458331409,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5569788149976466536" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_GetworkflowList_SajadSupport" />
                <cm:tzLabel Name="Lable31" Content="کد ملی" Width="120" Height="23.000000000000004" Margin="0,10.8326235063473,38.2722652345636,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5046507531470247286" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
                <cm:tzTextBox Name="txtNationalCode" Width="120" Height="21.000000000000007" Margin="0,0,58.7367491200001,25.753544302596" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5143704890239982122" MaxLength="10" Grid.Column="0" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="NationalCode" cm:Event="DSChckNationalCode" cm:Len="10" />
                <cm:tzTextBox Name="txtRegDate" Width="120" Height="21" Margin="8,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5659690905747023735" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
                <cm:tzTextBox Name="txtRegTime" Width="120.00000000000001" Height="21" Margin="8,30,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4622391479516633008" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentTime" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="DSChckNationalCode" Content="DSChckNationalCode" Width="120" Height="25" Margin="8,0,0,19.8788452682359" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4784940971977146100" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_CheckNationalCode {@txtNationalCode}" />
                <cm:TZCheckBox Name="ChckNationalCode" Content="ChckNationalCode" Width="119.99999999999999" Height="20" Margin="0,0,58.7367491200002,19.878845268236" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5643583642994670259" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSChckNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsRelatedFollowupCode" Content="dschkIsRelatedFollowupCode" Width="119.38618928" Height="25" Margin="74.6661288285909,5,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4618752594052731019" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubject" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FollowUpCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProblemType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProblemType" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsRelatedFollowupCode" Content="RelatedFollowupCode" Width="77" Height="20" Margin="300.256732855436,16.0043383900003,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5480933692399698125" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dschkIsRelatedFollowupCode" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzLabel Name="Lable27" Content="موبایل" Width="120" Height="23" Margin="0,10.8326235063473,52.2966751800002,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5546869736012657834" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
                <cm:tzTextBox Name="txtMobile" Width="119.99999999999997" Height="21.000000000000007" Margin="0,0,68.3861337899999,11.4980007722521" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5195032388036176829" MaxLength="11" Grid.Column="2" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="Mobile" cm:DataType="BigInt" cm:Event="DSMandMobile" cm:Len="11" />
                <cm:tzLabel Name="Lable29" Content="ایمیل" Width="120.00000000000004" Height="23.000000000000007" Margin="0,10.8326235063473,32.8659594614095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5717270502398003465" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
                <cm:tzTextBox Name="txtEmail" Width="120" Height="21.000000000000014" Margin="0,28.8326235063475,59.3493354214096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5072203725658548127" Grid.Column="1" Grid.Row="1" cm:DataBinding="DSCheckLogin" cm:DataBindingField="email" cm:Event="DSMandEmail" />
                <cm:tzLabel Name="Lable59" Content="خواهشمند است از صحت آدرس ایمیل خود اطمینان حاصل فرمایید. پاسخ درخواست، از طریق ایمیل به شما اطلاع رسانی می شود" Width="252" Height="23" Margin="27.3598213854364,0,24.2307826414093,15.753544302596" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5353963176773428128" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
                <cm:tzLabel Name="Lable33" Content="شرح" Width="358.69832871000028" Height="23.000000000000007" Margin="0,18.5029028549695,15.8414322199997,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5491752338529963268" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" />
                <cm:tzTextBox Name="txtDescript" Width="403.99999999999994" Height="90.000000000000028" Margin="0,42.5029028549695,57.2149527500005,3.72471862840598" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="5338322824532072097" MaxLength="1000" TextWrapping="Wrap" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" cm:DecimalMark="False" cm:Event="DSMandDesc" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLabel Name="Lable3536" Content="بارگذاری تصویر خطا " Width="119.99999999999999" Height="23.000000000000014" Margin="0,18.5029028549696,38.2722652345637,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5235105726302570044" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" />
                <cm:TZFileUpload Name="FileUpload34" Width="233.99999999999994" Height="30.999999999999975" Margin="33.7881374499997,59.0635947831122,38.2722652345638,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5020277503308169260" Grid.Column="0" Grid.Row="3" cm:Event="DSMandFileUpload" />
                <cm:TZCheckBox Name="chkNoRepeatedReqestPerUser" Content="RepeatedReqestPerUser" Width="91.055745309999878" Height="20" Margin="0,73.00433839,159.37003928,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5294931454992277379" Grid.Column="2" Grid.Row="0" cm:DataBinding="dschkNoRepeatedReqestPerUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkNoRepeatedReqestPerUser" Content="dschkNoRepeatedReqestPerUser" Width="134.52860706000027" Height="25" Margin="0,68.00433839,15.8414322199998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5631073714566369002" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chk_NoRepeatedReqestPerUser_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @mainSubject" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:tzLabel Name="Lable23" Content="نوع مشکل" Width="139" Height="37" Margin="0,36.01666667,28.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5715763135710709954" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbProblemType" Width="186.99999999999997" Height="22" Margin="0,113.22364425,108.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4685558585417077630" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSProblemType" cm:DataType="Int" cm:Event="DSChckProblemType,DSProblemType5,DSReadLable,dschkIsRelatedFollowupCode,dschkIsResponseFollowUp" cm:tzDisplayItem="Problem" cm:tzValueItem="ProblemTypeID" />
          <cm:tzDataSource Name="DSProblemType" Content="DSProblemType" Width="26" Height="25" Margin="0,110.22364425,296.3880422,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5654124775771199532" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Read_Tbl_Cu_Base_ProblemTypeForAskQuestion " />
          <cm:tzDataSource Name="DSChckProblemType" Content="DSChckProblemType" Width="110" Height="25" Margin="13.4837310200001,10.0166666699999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5561866746021767150" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Check_ProblemTypeForAskQuestion {@cmbProblemType}" />
          <cm:TZCheckBox Name="ChckProblemType" Content="ChckProblemType" Width="95.686153740000037" Height="20" Margin="0,15.01666667,253.408828270665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4640890940619526848" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSChckProblemType" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5675806363633942607#" />
          <cm:tzDataSource Name="DSProblemType5" Content="DSProblemType5" Width="110" Height="25" Margin="13.4837310200005,0,0,98.3773254188613" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5500336126843527523" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Check_ProblemTypeFRM31548 {@cmbProblemType}" />
          <cm:TZCheckBox Name="ChckProblemType5" Content="ChckProblemType5" Width="119.99999999999999" Height="20.000000000000007" Margin="0,37.22364425,229.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4923636549887198074" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSProblemType5" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5196525606412397050#5591268675506701146#" cm:IsVisibleItem="False" cm:TCVCol="5591268675506701146#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzDataSource Name="DSReadLable" Content="DSReadLable" Width="110" Height="25" Margin="13.4837310200005,58.22364425,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5417737368104357454" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_Read_ProblemDescFRM31548 {@cmbProblemType}" />
          <cm:tzTextBox Name="txtUserID" Width="109.99999999999952" Height="21.000000000000004" Margin="13.483731020001,0,0,24.1703478388613" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5580294098464216683" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:Event="dsCartableStatus,dschkNoRepeatedReqestPerUser" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="DSCheckLogin" Content="DSCheckLogin" Width="110" Height="25" Margin="0,84.22364425,358.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4691946605682744509" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec SP_CU_CheckLogin_FRM31548 {@txtUserID}" />
          <cm:TZCheckBox Name="CheckLogin" Content="CheckLogin" Width="120" Height="20.000000000000004" Margin="0,89.22364425,229.094982010665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5141215259005442008" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:DataBinding="DSCheckLogin" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5143704890239982122#" cm:TVCol="5046507531470247286#5143704890239982122#" />
          <cm:TZCheckBox Name="chkIsResponseFollowUp" Content="TZCheckBox" Width="45" Height="20" Margin="0,0,277.048660969999,62.6536811721947" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4954248388369840800" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkIsResponseFollowUp" cm:DataBindingField="res" cm:Event="dschkIfNotInOwnCartableAndIfRelated" cm:FCVCol="5744797132753413952#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5364759671838169882#5744797132753413952#" cm:TVCol="5364759671838169882#5744797132753413952#" />
          <cm:tzDataSource Name="dschkIsResponseFollowUp" Content="dschkIsResponseFollowUp" Width="154" Height="25" Margin="212.372625999335,76.22364425,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5756715536386791889" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_chkProblemTypeID_frm21041">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbProblemType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ProblemType" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="Lable37" Content="* شماره پیگیری فرایند" Width="114.90999999999997" Height="24.483333333333334" Margin="0,11.7403109166666,18.8367880206644,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5364759671838169882" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFFollowUpCode" Width="150" Height="21" Margin="0,40.01666667,18.8367880206644,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5744797132753413952" Grid.Column="0" Grid.Row="0" cm:DataType="NVarChar" cm:Event="dschkIsRelatedFollowupCode,dsCartableStatus,dschkIfNotInOwnCartableAndIfRelated,dschkIfFollowUpCodeNumeric" cm:Len="10" />
          <cm:tzLabel Name="lblCartableStatus" Content="tzLabel" Width="120" Height="23" Margin="0,86.22364425,24.0396519806646,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5491117661883752788" FlowDirection="RightToLeft" Grid.Column="0" Grid.Row="0" cm:DataBinding="dsCartableStatus" cm:DataBindingField="Desciption" />
          <cm:tzDataSource Name="dsCartableStatus" Content="dsCartableStatus" Width="110" Height="25.000000000000004" Margin="0,0,183.384995330665,71.1703478388613" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4675934099378975406" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getStatusFromDashboard_frm31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPortalID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @PortalUserID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FollowUpCode" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzTextBox Name="txtPortalUserID" Width="120" Height="21" Margin="27.3655697893345,15.2236442499999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5356646009321483397" Grid.Column="1" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chkCartableStatus" Content="با توجه به وضعیت مشاهده شده ، درخواست ثبت پیگیری درخواست را دارم ." Width="119.99999999999999" Height="20" Margin="0,0,24.0396519806646,15.0653359088612" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4617756592094904596" Grid.Column="0" Grid.Row="0" cm:IsVisibleItem="True" />
          <cm:tzDataSource Name="dschkIfNotInOwnCartableAndIfRelated" Content="dschkIfNotInOwnCartableAndIfRelated" Width="109.99999999999999" Height="25" Margin="188.1937177,135.725494504927,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5316477968266922472" Grid.Column="0" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_IfNotInOwnCartableAndIfRelated_frm31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsInOwnCartable}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkIsInOwnCartable" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsRelatedFollowupCode}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkFollowUpCodeIfInRelatedWFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsResponseFollowUp}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkIsResponseFollowUp" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkIfNotInOwnCartableAndIfRelated" Content="chkIfNotInOwnCartableAndIfRelated" Width="120.00000000000003" Height="20" Margin="191.741925010001,2.33150241606569,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4876565524279906544" Grid.Column="0" Grid.Row="1" cm:DataBinding="dschkIfNotInOwnCartableAndIfRelated" cm:DataBindingField="TrueEnableCheckbox" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4617756592094904596#" cm:TVCol="5491117661883752788#4617756592094904596#" />
          <cm:tzDataSource Name="dschkIfFollowUpCodeNumeric" Content="dschkIfFollowUpCodeNumeric" Width="110" Height="25.000000000000007" Margin="0,63.2236442500001,454.05571718,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4804145710005920773" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkSendToTazarvMandatoryforITExpertFRM21041">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtWFFollowUpCode" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkIfFollowUpCodeNumeric" Content="TZCheckBox" Width="120" Height="20" Margin="403.2963955,89.2236442500001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5553122207017016538" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dschkIfFollowUpCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtPortalID" Width="73" Height="21" Margin="192.567920389335,15.2236442499998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5359290890336740476" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsPortalUserID" cm:DataBindingField="ExternalUserId" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsPortalUserID" Content="dsPortalUserID" Width="66" Height="25" Margin="0,11.2236442499998,130.78401535,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4703248829728492349" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_portal_userID_FRM31548">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/11/14 11:52:10', GUID = '9cc14b50-b84d-43b3-83e3-daa24950f263', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "31548" ,"components": [{"value": "","key": "5643583642994670259","label": "ChckNationalCode","controlType": "checkbox","caption": "ChckNationalCode" ,"DataBindingField" : "result"},{"value": "","key": "4640890940619526848","label": "ChckProblemType","controlType": "checkbox","caption": "ChckProblemType" ,"DataBindingField" : "res"},{"value": "","key": "4923636549887198074","label": "ChckProblemType5","controlType": "checkbox","caption": "ChckProblemType5" ,"DataBindingField" : "res"},{"value": "","key": "5141215259005442008","label": "CheckLogin","controlType": "checkbox","caption": "CheckLogin" ,"DataBindingField" : "res"},{"value": "","key": "5231733800714381061","label": "CheckRead","controlType": "checkbox","caption": "متن بالا مطالعه شد و مشکل رفع نشد" ,"DataBindingField" : ""},{"value": "","key": "4617756592094904596","label": "chkCartableStatus","controlType": "checkbox","caption": "با توجه به وضعیت مشاهده شده ، درخواست ثبت پیگیری درخواست را دارم ." ,"DataBindingField" : ""},{"value": "","key": "5553122207017016538","label": "chkIfFollowUpCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4876565524279906544","label": "chkIfNotInOwnCartableAndIfRelated","controlType": "checkbox","caption": "chkIfNotInOwnCartableAndIfRelated" ,"DataBindingField" : "TrueEnableCheckbox"},{"value": "","key": "5397043020044863036","label": "chkIsInOwnCartable","controlType": "checkbox","caption": "InOwnCartable" ,"DataBindingField" : "res"},{"value": "","key": "5480933692399698125","label": "chkIsRelatedFollowupCode","controlType": "checkbox","caption": "RelatedFollowupCode" ,"DataBindingField" : "res"},{"value": "","key": "4954248388369840800","label": "chkIsResponseFollowUp","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5294931454992277379","label": "chkNoRepeatedReqestPerUser","controlType": "checkbox","caption": "RepeatedReqestPerUser" ,"DataBindingField" : "res"},{"key": "5591268675506701146","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key": "4685558585417077630","label": "cmbProblemType","value": "", "controlType": "dropdown","options":""},{"key":"4675934099378975406" , "dataSourceName":"dsCartableStatus" , "controlType": "datasource",  "selectQuery" :"sp_cu_getStatusFromDashboard_frm31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4784940971977146100" , "dataSourceName":"DSChckNationalCode" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_CheckNationalCode {@txtNationalCode}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5561866746021767150" , "dataSourceName":"DSChckProblemType" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Check_ProblemTypeForAskQuestion {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4691946605682744509" , "dataSourceName":"DSCheckLogin" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_CheckLogin_FRM31548 {@txtUserID}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4804145710005920773" , "dataSourceName":"dschkIfFollowUpCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkSendToTazarvMandatoryforITExpertFRM21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5316477968266922472" , "dataSourceName":"dschkIfNotInOwnCartableAndIfRelated" , "controlType": "datasource",  "selectQuery" :"sp_cu_IfNotInOwnCartableAndIfRelated_frm31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4618752594052731019" , "dataSourceName":"dschkIsRelatedFollowupCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5756715536386791889" , "dataSourceName":"dschkIsResponseFollowUp" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_chkProblemTypeID_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5631073714566369002" , "dataSourceName":"dschkNoRepeatedReqestPerUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chk_NoRepeatedReqestPerUser_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5569788149976466536" , "dataSourceName":"DSMainSubject" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_GetworkflowList_SajadSupport" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4703248829728492349" , "dataSourceName":"dsPortalUserID" , "controlType": "datasource",  "selectQuery" :"sp_cu_portal_userID_FRM31548" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5654124775771199532" , "dataSourceName":"DSProblemType" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Read_Tbl_Cu_Base_ProblemTypeForAskQuestion " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5500336126843527523" , "dataSourceName":"DSProblemType5" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Check_ProblemTypeFRM31548 {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5417737368104357454" , "dataSourceName":"DSReadLable" , "controlType": "datasource",  "selectQuery" :"exec SP_CU_Read_ProblemDescFRM31548 {@cmbProblemType}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5338322824532072097","label": "txtDescript","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5072203725658548127","label": "txtEmail","controlType": "textbox", "type": "" , "DataBindingField" : "email"},{"value": "","key": "5195032388036176829","label": "txtMobile","controlType": "textbox", "type": "" , "DataBindingField" : "Mobile"},{"value": "","key": "5143704890239982122","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "","key": "5359290890336740476","label": "txtPortalID","controlType": "textbox", "type": "" , "DataBindingField" : "ExternalUserId"},{"value": "","key": "5356646009321483397","label": "txtPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentDate","key": "5659690905747023735","label": "txtRegDate","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentTime","key": "4622391479516633008","label": "txtRegTime","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "5580294098464216683","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5744797132753413952","label": "txtWFFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5591385503275760470","data": [{"key": "4685558585417077630","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5231733800714381061","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5591268675506701146","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5195032388036176829","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5072203725658548127","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5338322824532072097","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5020277503308169260","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',DefaultCulture = NULL  WHERE FormId = 31548
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31548') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31548] ( [frm31548Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5195032388036176829]  [bigint] NULL , [Col_5072203725658548127]  [nvarchar] ( 50) NULL , [Col_5338322824532072097]  [nvarchar] ( 1000) NULL , [Col_5143704890239982122]  [nvarchar] ( 10) NULL , [Col_5591268675506701146]  [nvarchar] ( 50) NULL , [Col_4685558585417077630]  [int] NULL , [Col_5231733800714381061]  [bit] NULL , [Col_4640890940619526848]  [bit] NULL , [Col_4923636549887198074]  [bit] NULL , [Col_5020277503308169260]  [nvarchar] ( 150) NULL , [Col_5580294098464216683]  [nvarchar] ( 50) NULL , [Col_5141215259005442008]  [bit] NULL , [Col_5659690905747023735]  [nvarchar] ( 50) NULL , [Col_4622391479516633008]  [nvarchar] ( 50) NULL , [Col_5643583642994670259]  [bit] NULL , [Col_5744797132753413952]  [nvarchar] ( 10) NULL , [Col_5480933692399698125]  [bit] NULL , [Col_4954248388369840800]  [bit] NULL , [Col_5294931454992277379]  [bit] NULL , [Col_5356646009321483397]  [nvarchar] ( 50) NULL , [Col_4617756592094904596]  [bit] NULL , [Col_5397043020044863036]  [bit] NULL , [Col_4876565524279906544]  [bit] NULL , [Col_5553122207017016538]  [bit] NULL , [Col_5359290890336740476]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm31548Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'frm31548Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD frm31548Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5195032388036176829' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5195032388036176829 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5072203725658548127' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5072203725658548127 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5338322824532072097' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5338322824532072097 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5143704890239982122' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5143704890239982122 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5591268675506701146' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5591268675506701146 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4685558585417077630' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4685558585417077630 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5231733800714381061' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5231733800714381061 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4640890940619526848' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4640890940619526848 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4923636549887198074' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4923636549887198074 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5020277503308169260' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5020277503308169260 nvarchar (150) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5580294098464216683' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5580294098464216683 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5141215259005442008' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5141215259005442008 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5659690905747023735' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5659690905747023735 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4622391479516633008' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4622391479516633008 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5643583642994670259' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5643583642994670259 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5744797132753413952' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5744797132753413952 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5480933692399698125' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5480933692399698125 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4954248388369840800' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4954248388369840800 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5294931454992277379' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5294931454992277379 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5356646009321483397' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5356646009321483397 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4617756592094904596' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4617756592094904596 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5397043020044863036' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5397043020044863036 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_4876565524279906544' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_4876565524279906544 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5553122207017016538' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5553122207017016538 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31548' AND COLUMN_NAME = 'Col_5359290890336740476' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31548] ADD Col_5359290890336740476 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31548]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31548
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31548] ( @PKFormId as bigint OUTPUT ,  @Col_5195032388036176829 AS bigint,  @Col_5072203725658548127 AS nvarchar(50),  @Col_5338322824532072097 AS nvarchar(1000),  @Col_5143704890239982122 AS nvarchar(10),  @Col_5591268675506701146 AS nvarchar(50),  @Col_4685558585417077630 AS int,  @Col_5231733800714381061 AS bit,  @Col_4640890940619526848 AS bit,  @Col_4923636549887198074 AS bit,  @Col_5020277503308169260 AS nvarchar(150),  @Col_5580294098464216683 AS nvarchar(50),  @Col_5141215259005442008 AS bit,  @Col_5659690905747023735 AS nvarchar(50),  @Col_4622391479516633008 AS nvarchar(50),  @Col_5643583642994670259 AS bit,  @Col_5744797132753413952 AS nvarchar(10),  @Col_5480933692399698125 AS bit,  @Col_4954248388369840800 AS bit,  @Col_5294931454992277379 AS bit,  @Col_5356646009321483397 AS nvarchar(50),  @Col_4617756592094904596 AS bit,  @Col_5397043020044863036 AS bit,  @Col_4876565524279906544 AS bit,  @Col_5553122207017016538 AS bit,  @Col_5359290890336740476 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31548](Col_5195032388036176829,Col_5072203725658548127,Col_5338322824532072097,Col_5143704890239982122,Col_5591268675506701146,Col_4685558585417077630,Col_5231733800714381061,Col_4640890940619526848,Col_4923636549887198074,Col_5020277503308169260,Col_5580294098464216683,Col_5141215259005442008,Col_5659690905747023735,Col_4622391479516633008,Col_5643583642994670259,Col_5744797132753413952,Col_5480933692399698125,Col_4954248388369840800,Col_5294931454992277379,Col_5356646009321483397,Col_4617756592094904596,Col_5397043020044863036,Col_4876565524279906544,Col_5553122207017016538,Col_5359290890336740476) VALUES ( @Col_5195032388036176829,@Col_5072203725658548127,@Col_5338322824532072097,@Col_5143704890239982122,@Col_5591268675506701146,@Col_4685558585417077630,@Col_5231733800714381061,@Col_4640890940619526848,@Col_4923636549887198074,@Col_5020277503308169260,@Col_5580294098464216683,@Col_5141215259005442008,@Col_5659690905747023735,@Col_4622391479516633008,@Col_5643583642994670259,@Col_5744797132753413952,@Col_5480933692399698125,@Col_4954248388369840800,@Col_5294931454992277379,@Col_5356646009321483397,@Col_4617756592094904596,@Col_5397043020044863036,@Col_4876565524279906544,@Col_5553122207017016538,@Col_5359290890336740476 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31548]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31548
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31548] ( @PKFormId as bigint OUTPUT ,  @Col_5195032388036176829 AS bigint,  @Col_5072203725658548127 AS nvarchar(50),  @Col_5338322824532072097 AS nvarchar(1000),  @Col_5143704890239982122 AS nvarchar(10),  @Col_5591268675506701146 AS nvarchar(50),  @Col_4685558585417077630 AS int,  @Col_5231733800714381061 AS bit,  @Col_4640890940619526848 AS bit,  @Col_4923636549887198074 AS bit,  @Col_5020277503308169260 AS nvarchar(150),  @Col_5580294098464216683 AS nvarchar(50),  @Col_5141215259005442008 AS bit,  @Col_5659690905747023735 AS nvarchar(50),  @Col_4622391479516633008 AS nvarchar(50),  @Col_5643583642994670259 AS bit,  @Col_5744797132753413952 AS nvarchar(10),  @Col_5480933692399698125 AS bit,  @Col_4954248388369840800 AS bit,  @Col_5294931454992277379 AS bit,  @Col_5356646009321483397 AS nvarchar(50),  @Col_4617756592094904596 AS bit,  @Col_5397043020044863036 AS bit,  @Col_4876565524279906544 AS bit,  @Col_5553122207017016538 AS bit,  @Col_5359290890336740476 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31548] SET Col_5195032388036176829 =  @Col_5195032388036176829, Col_5072203725658548127 =  @Col_5072203725658548127, Col_5338322824532072097 =  @Col_5338322824532072097, Col_5143704890239982122 =  @Col_5143704890239982122, Col_5591268675506701146 =  @Col_5591268675506701146, Col_4685558585417077630 =  @Col_4685558585417077630, Col_5231733800714381061 =  @Col_5231733800714381061, Col_4640890940619526848 =  @Col_4640890940619526848, Col_4923636549887198074 =  @Col_4923636549887198074, Col_5020277503308169260 =  @Col_5020277503308169260, Col_5580294098464216683 =  @Col_5580294098464216683, Col_5141215259005442008 =  @Col_5141215259005442008, Col_5659690905747023735 =  @Col_5659690905747023735, Col_4622391479516633008 =  @Col_4622391479516633008, Col_5643583642994670259 =  @Col_5643583642994670259, Col_5744797132753413952 =  @Col_5744797132753413952, Col_5480933692399698125 =  @Col_5480933692399698125, Col_4954248388369840800 =  @Col_4954248388369840800, Col_5294931454992277379 =  @Col_5294931454992277379, Col_5356646009321483397 =  @Col_5356646009321483397, Col_4617756592094904596 =  @Col_4617756592094904596, Col_5397043020044863036 =  @Col_5397043020044863036, Col_4876565524279906544 =  @Col_4876565524279906544, Col_5553122207017016538 =  @Col_5553122207017016538, Col_5359290890336740476 =  @Col_5359290890336740476 WHERE [frm31548Id] = @PKFormId 
 END 
GO
