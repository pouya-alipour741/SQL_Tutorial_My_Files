GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 243) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (243, N'فرم فرآیند فاز دوم میز خدمت',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="1555" Height="1087">
    <ViewLayouts>
      <ViewLayoutItem Name="کاربر ثبت کننده" ID="4883524612292746126" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5209939103483890987" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5329520347459779938" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5035903570341991895" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4838564445226209905" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4647773901884335145" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5266482798981468614" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="تایید کننده" ID="5247524876530023130" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ارجاع گیرنده" ID="5626692213297706894" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="اقدام کننده" ID="5315581096260719821" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه اقدامات" ID="5057671704762368988" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4636532424394902227" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5035904599795377816" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ارجاع گیرنده-توضیحات" ID="5580275910207162559" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218958864821998426" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5093058697085053446" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5704711095539514666" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5449393554084875660" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه اقدامات-توضیحات" ID="5238898146110492403" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681241468063451828" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5738523675897553270" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5724648397005188929" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4964487483417406645" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259992753776356314" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4999118027321972736" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5664127672082991889</ID>
        <Name>بارگذاری فایل</Name>
        <Condition>({@chkNeedCertificate.Value} ==True) &amp;&amp; ("{@FileUpload28.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>بارگذاری فایل اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5443758597500893918</ComponentID>
            <ComponentName>chkNeedCertificate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5318841287166758505</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5538532305009285066</ComponentID>
            <ComponentName>FileUpload28</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4949302914793759509</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4627802545459455776</ID>
        <Name>فرمت اطلاعات</Name>
        <Condition>({@chkValidate.Value} ==False) &amp;&amp; ({@CheckBox37.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فرمت اطلاعات وارد شده صحیح نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4697873506575570740</ComponentID>
            <ComponentName>chkValidate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4831672282573033539</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5343950136022904724</ComponentID>
            <ComponentName>CheckBox37</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4721370834776458916</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5402681211692642020</ID>
        <Name>مقایسه وارد کردن کمبو فیلد گرید </Name>
        <Condition>({@chkCompare.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>بازیابی اطلاعات انجام نشده و یا مقادیر اجباری در جدول مقدار دهی نشده اند</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4688451764383907719</ComponentID>
            <ComponentName>chkCompare</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4686129164262309263</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4835365107176920692</ID>
        <Name>مجاز </Name>
        <Condition>({@chkUserCanInsert.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر گرامی شما مجاز به ثبت درخواست برای این عنوان درخواست نمی باشید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5516976854451683700</ComponentID>
            <ComponentName>chkUserCanInsert</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5269645911585093772</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5174606341414606131</ID>
        <Name>پاسخ-تایید کننده</Name>
        <Condition>({@rbnAccSeconder.Value} ==False) &amp;&amp; ({@rbnNotAccSeconder.Value} ==False) &amp;&amp; ({@rbnReferencerbnAccSeconder.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5433095950633073955</ComponentID>
            <ComponentName>rbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5573437438430075627</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5558469775321616550</ComponentID>
            <ComponentName>rbnNotAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5449934113124656819</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5733257746624329625</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5266146089457154940</ID>
        <Name>پاسخ- اقدام کننده</Name>
        <Condition>({@chkAnswerActing.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4655348426068110759</ComponentID>
            <ComponentName>chkAnswerActing</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5388722183198473807</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4736779566622842066</ID>
        <Name>پاسخ-ارجاع گیرنده</Name>
        <Condition>({@rbnAccReference.Value} ==False) &amp;&amp; ({@rbnNotAccReference.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5218958864821998426</ComponentID>
            <ComponentName>rbnAccReference</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5368190437274647971</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5093058697085053446</ComponentID>
            <ComponentName>rbnNotAccReference</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5131500554782751940</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4628885506234383630</ID>
        <Name>پاسخ-اقدامات</Name>
        <Condition>({@rbnAccActions.Value} ==False) &amp;&amp; ({@rbnNotAccActions.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5738523675897553270</ComponentID>
            <ComponentName>rbnAccActions</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5354468947902492325</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5724648397005188929</ComponentID>
            <ComponentName>rbnNotAccActions</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5450362158120781362</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4614314661607481214</ID>
        <Name>کاربر ارجاع گیرنده-2</Name>
        <Condition>({@chkCheckRefrenceUserSec.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر ارجاع گیرنده با کاربر فعلی نمی تواند یکی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4795065758229322170</ComponentID>
            <ComponentName>chkCheckRefrenceUserSec</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5114068655337628566</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5159487477694048575</ID>
        <Name>تاریخ و ساعت</Name>
        <Condition>({@chkValidatePeymankarDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تاریخ و ساعت وارد شده معتبر نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5094607077792705164</ComponentID>
            <ComponentName>chkValidatePeymankarDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5104978855349504996</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5696470399696347795</ID>
        <Name>عنوان درخواست</Name>
        <Condition>({@chkRequestSubject.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>عنوان درخواست انتخابی مطابقت ندارد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4844487118598404545</ComponentID>
            <ComponentName>chkRequestSubject</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4725444943891210512</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5279669103305025125</ID>
        <Name>کاربر ارجاع گیرنده-1</Name>
        <Condition>({@chkCheckRefrenceUser.Value} ==True) &amp;&amp; ({@rbnReferencerbnAccSeconder.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر ارجاع گیرنده با کاربر فعلی نمی تواند یکی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4875558306346267617</ComponentID>
            <ComponentName>chkCheckRefrenceUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4829288975332454148</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5755057833228877577</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4787787231297231280</ID>
        <Name>کمبو اجباری</Name>
        <Condition>({@chkMandatorySelectInfo.Value} ==True) &amp;&amp; ({@cmbFieldValueID.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5666353536888725103</ComponentID>
            <ComponentName>chkMandatorySelectInfo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4617581697415939130</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5554970866147992698</ComponentID>
            <ComponentName>cmbFieldValueID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4979725152185711805</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4869114721595587559</ID>
        <Name>تکست اجباری</Name>
        <Condition>({@chkMandatoryNotSelectInfo.Value} ==True) &amp;&amp; ("{@txtValue.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5220620902125066610</ComponentID>
            <ComponentName>chkMandatoryNotSelectInfo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5357195177413322123</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5662217081009761575</ComponentID>
            <ComponentName>txtValue</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4969075496133317392</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5374810010129897506</ID>
        <Name>تاریخ</Name>
        <Condition>({@chkMandatoryNotSelectInfoDate.Value} ==True) &amp;&amp; ("{@pdDate.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تاریخ را انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5115924373474858497</ComponentID>
            <ComponentName>chkMandatoryNotSelectInfoDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5521811429741286563</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5371746024198239615</ComponentID>
            <ComponentName>pdDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5290505399489843387</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4797432062973963544</ID>
        <Name>اجباری-چک لیست</Name>
        <Condition>({@chkMultipleValuesMandatory.Value} ==True) &amp;&amp; ("{@txtMultipleValues.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5168659056268343420</ComponentID>
            <ComponentName>chkMultipleValuesMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4898021459079443895</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5760154045432193711</ComponentID>
            <ComponentName>txtMultipleValues</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5261589270041232129</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5617663843076015243</ID>
        <Name>کاربر ارجاع گیرنده اقدام کننده</Name>
        <Condition>({@chkCheckExistsRefrence.Value} ==True) &amp;&amp; ({@cmbReferenceActing.Value} ==1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا حداقل یک کاربر برای ارجاع انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5322494452124026796</ComponentID>
            <ComponentName>chkCheckExistsRefrence</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4918411253940591152</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4936620095668202831</ComponentID>
            <ComponentName>cmbReferenceActing</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4624308569282193492</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5205319302369453573</ID>
        <Name>کاربر ارجاع گیرنده - خالی</Name>
        <Condition>({@rbnReferencerbnAccSeconder.Value} ==True) &amp;&amp; ({@txtReferenceUserSeconder.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا کاربر ارجاع گیرنده مورد نظر را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5180216907795963006</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5265233019818142125</ComponentID>
            <ComponentName>txtReferenceUserSeconder</ComponentName>
            <ComponentDataType>BigInt</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5081105183082124004</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5230398995716057362</ID>
        <Name>تعریف نشدن مدیر رشته</Name>
        <Condition>({@chkIsManagerAvailable.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>به دلیل عدم تعریف مدیر رشته، امکان ثبت فرآیند وجود ندارد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5314528432430841199</ComponentID>
            <ComponentName>chkIsManagerAvailable</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4803703807101971225</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1502" Height="1060" Background="#FF6A3DDB" BorderBrush="#FFD5DFE5" ControlID="4933763375039949449" FontFamily="Tahoma" Canvas.Left="26" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TZTabControl Name="TabControl8" Width="1474" Height="1022.5166666666667" Background="#FFFFFFFF" ControlID="5732604917581371215" Canvas.Left="8" Canvas.Top="8">
          <cm:TZTabItem cm:HeaderText="مشخصات درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox41" Width="1452" Height="100.48750877000026" Background="#FFB1A0D3" ControlID="4966675744931087483" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="-3" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable43" Content=":نام و نام خانوادگی" ControlID="5733634605876206147" FontFamily="Tahoma" Canvas.Left="1337.1366666666665" Canvas.Top="5.0666666666665634" />
                  <cm:tzLabel Name="Lable44" Content=":محل خدمت" ControlID="4686214630536177633" FontFamily="Tahoma" Canvas.Left="989.22999999999888" Canvas.Top="5.0666666666666211" />
                  <cm:tzLabel Name="Lable45" Content=":واحد سازمانی" ControlID="5375270509618889506" FontFamily="Tahoma" Canvas.Left="711.66155131" Canvas.Top="4.06481770833331" />
                  <cm:tzLabel Name="Lable46" Content=":پست سازمانی" ControlID="5222376638017743464" FontFamily="Tahoma" Canvas.Left="1337.1366666699996" Canvas.Top="42.550000006666679" />
                  <cm:tzLabel Name="Lable48" Content=":تلفن" ControlID="5387460877374822072" FontFamily="Tahoma" Canvas.Left="989.65155130999972" Canvas.Top="38.549999996666713" />
                  <cm:tzLabel Name="Lable49" Content=":آدرس" ControlID="4875678637686562706" FontFamily="Tahoma" Canvas.Left="343.66155131000005" Canvas.Top="38.549999996666713" />
                  <cm:tzLabel Name="Lable50" Content=":تاریخ و ساعت ثبت" ControlID="5337486683385218239" FontFamily="Tahoma" Canvas.Left="343.66155131000005" Canvas.Top="5.0666666666667908" />
                  <cm:tzLabel Name="Lable51" Content=":شماره پیگیری" ControlID="5446486502087834869" FontFamily="Tahoma" Canvas.Left="712.43155131" Canvas.Top="42.550000006666806" />
                  <cm:tzTextBox Name="txtOrganizationPost" Width="255.13666667000143" Height="21" ControlID="4850327712077035454" Canvas.Left="1072.9999999999986" Canvas.Top="46.03333334" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Organizationpost" cm:IsEnableItem="False" cm:TabIndex="6" />
                  <cm:tzTextBox Name="txtFollowUpCode" Width="252.01333333333349" Height="21" ControlID="5263373270007817469" Canvas.Left="450.64821797666656" Canvas.Top="43.033333340000013" cm:DataBinding="dsSelectWFID" cm:DataBindingField="WFID" cm:IsEnableItem="False" cm:TabIndex="8" />
                  <cm:tzTextBox Name="txtOrganizationUnit" Width="252.01333333333338" Height="21" ControlID="4797625139975453820" Canvas.Left="450.64821797666661" Canvas.Top="8.5500000000001251" cm:DataBinding="dsLoadInfo" cm:DataBindingField="OrganizationUnit" cm:IsEnableItem="False" cm:TabIndex="3" />
                  <cm:PDatePicker Name="prdRegDate" Width="142" Height="20" ControlID="5150238976164030821" TabIndex="4" Canvas.Left="222.77372315000017" Canvas.Top="9.5500000000001251" cm:DefaultValue="$CurrentDate" cm:IsEnableItem="False" />
                  <cm:TzPersianTime Name="prdRegTime" Width="58" Height="20" ControlID="5209939103483890987" Canvas.Left="163.77372315000048" Canvas.Top="8.5481510416668129" cm:DefaultValue="$CurrentTime" cm:TabIndex="5" />
                  <cm:tzTextBox Name="txtFullName" Width="255.13666667000143" Height="21" ControlID="5329520347459779938" Canvas.Left="1072.9999999999986" Canvas.Top="8.55" cm:DataBinding="dsFollowCode" cm:DataBindingField="FullName" cm:TabIndex="1" />
                  <cm:tzTextBox Name="txtPhoneNumber" Width="174.99999999999989" Height="21" ControlID="5281861071186097962" Canvas.Left="805.65155131" Canvas.Top="46.03333334000007" cm:DataBinding="dsLoadInfo" cm:DataBindingField="telephonenumber" cm:Len="50" cm:TabIndex="7" />
                  <cm:tzTextBox Name="txtServiceLocation" Width="175" Height="21" ControlID="5035903570341991895" Canvas.Left="805.65155131" Canvas.Top="8.5500000000000682" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Servicelocation" cm:IsEnableItem="False" cm:TabIndex="2" />
                  <cm:tzTextBox Name="txtAddress" Width="326.66155130999994" Height="21" ControlID="5761211021147188750" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="46.03333334" cm:IsMulitiLine="True" cm:Len="1000" cm:TabIndex="9" />
                  <cm:tzLabel Name="Lable123" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1039.1479713599988" Canvas.Top="38.549999996666671" cm:ControlID="4960159078730659898" cm:ForeColor="#FFFF0000" />
                  <cm:tzTextBox Name="txtUserName" Width="112" Height="21" ControlID="5183947771732858935" Canvas.Left="13.097852029999899" Canvas.Top="8.5500000000000114" cm:DataBinding="dsFollowCode" cm:DataBindingField="UserName" cm:Event="dsLoadService,dsLoadInfo" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkCompare" Content="chkCompare" Width="51.000000000000227" Height="20" ControlID="4688451764383907719" FontFamily="Tahoma" Canvas.Left="134.09785203" Canvas.Top="9.5500000000000114" cm:DataBinding="dsCompare" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3738" Width="1452" Height="493.44903044333489" Background="#FFF0F0F0" ControlID="4756965879036652248" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="106.48750877" cm:Header="جزپیات درخواست ">
                <Canvas>
                  <cm:tzLabel Name="Lable63" Content=":زیر گروه" ControlID="5409084325907146721" FontFamily="Tahoma" Canvas.Left="1329.3035905699994" Canvas.Top="20.966666666666711" />
                  <cm:tzLabel Name="Lable66" Content=":نوع درخواست" ControlID="4892056181775139283" FontFamily="Tahoma" Canvas.Left="1329.3035905699999" Canvas.Top="109.6211846766667" />
                  <cm:tzLabel Name="Lable81" Content=":عنوان درخواست" ControlID="5112982330083563082" FontFamily="Tahoma" Canvas.Left="1325.0761972933333" Canvas.Top="207.11587111666682" />
                  <cm:tzLabel Name="Lable95" Content=":توضیحات" ControlID="5543135639953743431" FontFamily="Tahoma" Canvas.Left="1329.3035905699999" Canvas.Top="287.00493238000013" />
                  <cm:tzLabel Name="Lable108" Content="" ControlID="5073821595528042038" FontFamily="Tahoma" Canvas.Left="358.99999999999977" Canvas.Top="22.741910966666698" cm:DataBinding="dsReadData" cm:DataBindingField="FieldTitle" />
                  <cm:tzLabel Name="Lable139" Content=":بارگذاری فایل" ControlID="5159019044311639933" FontFamily="Tahoma" Canvas.Left="359.0000000000004" Canvas.Top="194.92297296666683" />
                  <cm:TZFileUpload Name="FileUpload28" Width="234" Height="31" ControlID="5538532305009285066" TabIndex="14" Canvas.Left="116.0000000000004" Canvas.Top="188.4063063000003" />
                  <cm:TZButton Name="Button150" Content="درج مقدار " Width="99" Height="23" Background="#FFB3C8E5" ControlID="5103100971998658403" FontFamily="Tahoma" TabIndex="16" Canvas.Left="7.9999999999997229" Canvas.Top="22.450000000000045" cm:Event="dsUpdateData,dschkIsManagerAvailable" cm:Validations="5664127672082991889,4627802545459455776,4787787231297231280,4869114721595587559,4797432062973963544" />
                  <cm:TZButton Name="Button153" Content="حذف اطلاعات" Width="99" Height="23" Background="#FFB3C8E5" ControlID="4617449582792457511" FontFamily="Tahoma" TabIndex="17" Canvas.Left="8.00000000000017" Canvas.Top="196.40630630000018" cm:Event="dsDelete" />
                  <cm:tzDataGrid Name="gdvItems" Width="600" Height="247.48333333" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5149912097223312151" ItemsSource="{Binding ElementName=dsLoad, Path=DataItems}" Canvas.Left="454.93082333" Canvas.Top="32.52159905" cm:BindingForm="dsLoad" cm:Event="dsSelectItems,dsCompare" cm:EventForAdd="dsCompare" cm:EventForDelete="dsCompare" cm:EventForEdit="dsCompare" cm:KeyField="ServingTableFieldID" cm:RowColorField="AnsweredColor">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableFieldID" DecimalMark="False" HeaderText="ServingTableFieldID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableFieldID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableFieldID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueTitle" DecimalMark="False" HeaderText="مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="FileUploadCertificate" DataTextField="FileUploadCertificate" DecimalMark="False" HeaderText="مدرک" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="FileUploadCertificate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding FileUploadCertificate}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding FileUploadCertificate}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AnsweredColor" DecimalMark="False" IsRowColorField="True" KeyField="False" SortMemberPath="AnsweredColor">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AnsweredColor}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzLookUpComboBox Name="cmbFieldValueID" Width="221" Height="22" ControlID="5554970866147992698" Canvas.Left="117.09785203000006" Canvas.Top="23.449999999999989" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetValue" cm:TabIndex="13" cm:tzDisplayItem="FieldValueTitle" cm:tzValueItem="FieldValueID" />
                  <cm:tzLookUpComboBox Name="cmbSubGroup" Width="249.08333333" Height="22" ControlID="4838564445226209905" Canvas.Left="1071.22025724" Canvas.Top="23.45" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:TabIndex="10" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbRequestKind" Width="249.08333333" Height="22" ControlID="4647773901884335145" Canvas.Left="1071.22025724" Canvas.Top="112.10451800999999" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dschkIsManagerAvailable" cm:TabIndex="11" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="1071.22025724" Canvas.Top="110.93333333000004" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="249.08333333" Height="22" ControlID="5266482798981468614" Canvas.Left="1071.22025724" Canvas.Top="209.59920445" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsEnableBtn,dsUserCanInsert,dsCheckRequestSubject,dschkIsManagerAvailable" cm:TabIndex="12" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="1071.22025724" Canvas.Top="206.59920445000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1071.22025724" Canvas.Top="20.449999999999989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM138" />
                  <cm:TZButton Name="Button102" Content="نمایش فیلد" Width="99" Height="23" Background="#FFB3C8E5" FontFamily="Tahoma" TabIndex="16" Canvas.Left="1071.2202572400001" Canvas.Top="247.93333332999993" cm:ControlID="5616877507763691571" cm:Event="dsInsertData" />
                  <cm:tzTextBox Name="txtValue" Width="220.99999999999989" Height="27" ControlID="5662217081009761575" Canvas.Left="117.09785203000034" Canvas.Top="21.933333333333504" cm:Event="dsCheckValidate" cm:Len="1000" />
                  <cm:tzDataSource Name="dsMandatoryData" Content="dsMandatoryData" Width="100.28943391000053" Height="25" ControlID="5540375087530757889" Canvas.Left="470.93082333" Canvas.Top="101.93333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkMandatoryNotSelectInfo" Content="chkMandatoryNotSelectInfo" Width="120" Height="20" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="135.93333333000032" cm:ControlID="5220620902125066610" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryNotSelectInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsEnableItem="False" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5662217081009761575#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkMandatorySelectInfo" Content="chkMandatorySelectInfo" Width="120" Height="20" ControlID="5666353536888725103" FontFamily="Tahoma" Canvas.Left="577.30667699000014" Canvas.Top="106.93333333000004" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatorySelectInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsEnableItem="False" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5554970866147992698#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkNeedCertificate" Content="chkNeedCertificate" Width="120" Height="20" ControlID="5443758597500893918" FontFamily="Tahoma" Canvas.Left="714.69625542999961" Canvas.Top="106.93333333000004" cm:DataBinding="dsMandatoryData" cm:DataBindingField="IsNeedCertificate" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5538532305009285066#" cm:TMCol="5538532305009285066#" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGetValue" Content="dsGetValue" Width="110" Height="25" ControlID="5369238171599239062" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="851.33333333" Canvas.Top="135.93333333000027" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckValidate" Content="dsCheckValidate" Width="99.000000000000114" Height="25" ControlID="4772282357938744593" Canvas.Left="472.22025724000042" Canvas.Top="59.93333333000016" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbFieldValueID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtValue" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PdDate" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="CheckBox37" Content="TZCheckBox" Width="120" Height="20" ControlID="5343950136022904724" Canvas.Left="714.69625542999961" Canvas.Top="135.93333333000032" cm:DataBinding="dsMandatoryData" cm:DataBindingField="SelectInfo" cm:FCVCol="5554970866147992698#" cm:FECol="" cm:FMCol="" cm:FVCol="5662217081009761575#" cm:IsVisibleItem="False" cm:TCVCol="5662217081009761575#" cm:TECol="" cm:TMCol="" cm:TVCol="5554970866147992698#" />
                  <cm:tzTextBox Name="txtDataRes" Width="93.058631919999868" Height="21" ControlID="5626556152912671128" Canvas.Left="604.2480450700001" Canvas.Top="241.93333333000021" cm:DataBinding="dsUpdateData" cm:DataBindingField="Res" cm:Event="dsLoad,dsCompare,dsMakeEmptry" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtDeleteRes" Width="110" Height="21" ControlID="4669232414997773258" Canvas.Left="1210.3035905699999" Canvas.Top="318.48826571000018" cm:DataBinding="dsDelete" cm:DataBindingField="Res" cm:Event="dsLoad" cm:IsVisibleItem="False" />
                  <cm:tzLabel Name="Lable125" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1382.4202572366655" Canvas.Top="16.449999996666648" cm:ControlID="5445026493927620187" cm:ForeColor="#FFFF0000" />
                  <cm:tzLabel Name="Lable1225" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1407.3302572366667" Canvas.Top="93.373627676666786" cm:ControlID="4620758417852751912" cm:ForeColor="#FFFF0000" />
                  <cm:tzLabel Name="Lable126" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1415.45" Canvas.Top="207.11587111666671" cm:ControlID="5475883871613132721" cm:ForeColor="#FFFF0000" />
                  <cm:tzDataSource Name="dsCheckRequestSubject" Content="dsCheckRequestSubject" Width="100.2894339099999" Height="25" ControlID="4686304685539765447" Canvas.Left="476.01724308000018" Canvas.Top="169.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckValidate_RequestSubject_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @GUID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKind}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @cmbRequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkRequestSubject" Content="chkRequestSubject" Width="120" Height="20" ControlID="4844487118598404545" FontFamily="Tahoma" Canvas.Left="859.61330613999939" Canvas.Top="106.93333333000004" cm:DataBinding="dsCheckRequestSubject" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsMakeEmptry" Content="dsMakeEmptry" Width="110" Height="25" ControlID="4881392250038900796" Canvas.Left="851.33333333" Canvas.Top="237.93333333000015" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:tzDataSource Name="dsLoadService" Content="dsLoadService" Width="103.37585366000012" Height="25" ControlID="4974277814964022057" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="472.93082332999995" Canvas.Top="237.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="" cm:RunQueryMode="Text" cm:tzSelectQuery="">
                    <cm:tzDataSource.ServiceValue>
                      <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="userName" ArgumentType="System.String" ComponentName="txtUserName" IsDefault="True" MethodName="GetActiveDirectoryUserData" Value="5183947771732858935" WebAddress="SamanCRMServices" />
                      <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="GUID" ArgumentType="System.String" ComponentName="txtGUIDD" IsDefault="True" MethodName="GetActiveDirectoryUserData" Value="4995533338641167379" WebAddress="SamanCRMServices" />
                    </cm:tzDataSource.ServiceValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsLink" Content="dsLink" Width="110" Height="25" ControlID="5085105881132199709" Canvas.Left="851.33333333" Canvas.Top="203.93333333000004" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WebServerAddress)" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @WebServerAddress" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckWorkflowStatus" Content="dsCheckWorkflowStatus" Width="100.28943391000053" Height="25" ControlID="5122826346641792319" Canvas.Left="476.0172430799995" Canvas.Top="203.9333333300001" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_CheckWorkflowStatus_Frm31240">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkUserIsBranch" Content="chkUserIsBranch" Width="120" Height="20" ControlID="5464357723432469235" FontFamily="Tahoma" Canvas.Left="714.69625542999961" Canvas.Top="64.93333333000021" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UserIsBranch" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="110" Height="25" ControlID="5760404647498399665" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="851.33333333" Canvas.Top="164.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @UserName" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @GUIDD" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtServiceResult" Width="51" Height="21" ControlID="4938308427061897607" Canvas.Left="977.15274463" Canvas.Top="44.18089033" cm:DataBinding="dsLoadService" cm:DataBindingField="Result" cm:Event="dsLoadInfo" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtUserID" Width="51.000000000000227" Height="21" ControlID="5758762721732505115" Canvas.Left="977.15274463" Canvas.Top="91.93333333" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtRequestDesc" Width="1301.84440358" Height="179.96076473000156" ControlID="5206491520355753398" Canvas.Left="26.45918699" Canvas.Top="284.00493238" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="15" />
                  <cm:PDatePicker Name="pdDate" Width="270.16162532" Height="26.999999996666745" ControlID="5371746024198239615" Canvas.Left="117.07396283000027" Canvas.Top="21.933333336666816" cm:Event="dsCheckValidate" />
                  <cm:tzDataSource Name="dsReadData" Content="dsReadData" Width="110" Height="25" ControlID="4823486510891932452" Canvas.Left="13.68277825999985" Canvas.Top="286.48826571333342" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadData_ServingTableField">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ItemID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="TextBox189" Width="120" Height="21" ControlID="5568970676742359854" Canvas.Left="135.94136807999988" Canvas.Top="284.00493238000018" cm:DataBinding="dsReadData" cm:DataBindingField="FieldTitle" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsVisibleItem" Content="dsVisibleItem" Width="110.00000000000016" Height="25" ControlID="5017690624055140686" Canvas.Left="13.68277825999985" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_VisibleItemType {@txtItemID}" />
                  <cm:TZCheckBox Name="CheckBox203" Content="chbVisibleItem" Width="65.819411300000638" Height="20" ControlID="5447522547560323991" FontFamily="Tahoma" Canvas.Left="135.9413680799999" Canvas.Top="325.48826571" cm:DataBinding="dsVisibleItem" cm:DataBindingField="flag" cm:FCVCol="5371746024198239615#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5371746024198239615#" />
                  <cm:tzDataSource Name="dsLoad" Content="dsLoad" Width="110" Height="25" ControlID="5110670696080708548" Canvas.Left="277.23558815000035" Canvas.Top="280.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" />
                  <cm:tzDataSource Name="dsUpdateData" Content="dsUpdateData" Width="110" Height="25" ControlID="4730083060785538985" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="277.23558815000018" Canvas.Top="320.48826571000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Update_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ItemID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@FileUpload28}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FileUploadCertificate" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtValue}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FieldValueTitle" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbFieldValueID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @FieldValueID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FieldValueDate" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMultipleValues}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @txtMultipleValues" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsInsertData" Content="dsInsertData" Width="110" Height="25" ControlID="4877631570857336077" Canvas.Left="413.84440357999961" Canvas.Top="280.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUIDID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtInsertRes" Width="35" Height="21" ControlID="5591840014643513848" Canvas.Left="532.84440357999961" Canvas.Top="281.00493238000024" cm:DataBinding="dsInsertData" cm:DataBindingField="Res" cm:Event="dsLoad,dsCheckRequestSubject" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectItems" Content="dsSelectItems" Width="110" Height="25" ControlID="5036453969450944063" Canvas.Left="413.84440357999961" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@gdvItems} AS ItemID" />
                  <cm:tzTextBox Name="txtItemID" Width="34.999999999999659" Height="21" ControlID="5243519420555067860" Canvas.Left="532.84440358" Canvas.Top="324.48826571" cm:DataBinding="dsSelectItems" cm:DataBindingField="ItemID" cm:DataType="BigInt" cm:Event="dsReadData,dsMandatoryData,dsGetValue,dsDisableFileUpload,dsVisibleItem" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableBtn" Content="dsEnableBtn" Width="110" Height="25" ControlID="5662589489734807052" Canvas.Left="587.30667699000014" Canvas.Top="277.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" />
                  <cm:tzDataSource Name="dsFollowCode" Content="dsFollowCode" Width="109.99999999999966" Height="25" ControlID="4793853652190513490" Canvas.Left="587.30667699000037" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetFollowCode_NewUserDefinition">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FollowUpCode" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnableBtn" Content="chkEnableBtn" Width="102.6964094299999" Height="20" ControlID="5132155074427207127" FontFamily="Tahoma" Canvas.Left="706.30667698999991" Canvas.Top="282.0049323800003" cm:DataBinding="dsEnableBtn" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5616877507763691571#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGUIDD" Content="dsGUIDD" Width="110" Height="25" ControlID="5170551075891586804" Canvas.Left="851.33333333" Canvas.Top="277.0049323800003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetNewGUID">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtGUID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtGUIDD" Width="51.000000000000227" Height="21" ControlID="4995533338641167379" Canvas.Left="977.15274463000014" Canvas.Top="278.00493238000024" cm:DataBinding="dsGUIDD" cm:DataBindingField="Column1" cm:Event="dsGUIDD,dsLoad,dsCompare,dsLoadService,dsCheckRequestSubject" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCompare" Content="dsCompare" Width="110" Height="25" ControlID="4796377435123176147" Canvas.Left="851.33333333" Canvas.Top="317.48826571000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUIDD" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="110" Height="25" ControlID="5462419856774520597" Canvas.Left="1071.22025724" Canvas.Top="291.48826571000029" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_delete_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ItemID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtOUID" Width="120" Height="21" ControlID="5474736857145248079" Canvas.Left="1193.22025724" Canvas.Top="241.93333333000021" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UnitID" cm:Event="dsUserCanInsert" cm:IsEnableItem="False" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkValidate" Content="chkValidate" Width="120" Height="20" ControlID="4697873506575570740" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="64.933333330000153" cm:DataBinding="dsCheckValidate" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectWFID" Content="dsSelectWFID" Width="110" Height="25" ControlID="5667847526345547012" Canvas.Left="1071.22025724" Canvas.Top="325.48826571000023" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT (@WorkflowInstanceID) AS WFID" />
                  <cm:TZCheckBox Name="chkMandatoryNotSelectInfoDate" Content="chkMandatoryNotSelectInfoDate" Width="120" Height="20" ControlID="5115924373474858497" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="169.93333333000021" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryNotSelectInfoDate" cm:IsVisibleItem="False" />
                  <cm:TZCheckListBox Name="chklMultipleValues" Width="227.99999999999983" Height="138" ControlID="5466932434815057100" Canvas.Left="110.09785203000023" Canvas.Top="56.933333330000266" cm:DataBinding="dsGetValue" cm:Event="dsSelectchklMultipleValues" cm:tzDisplayItem="FieldValueTitle" cm:tzValueItem="FieldValueID" />
                  <cm:tzDataSource Name="dsSelectchklMultipleValues" Content="dsSelectchklMultipleValues" Width="110" Height="25" ControlID="5459657173581711636" Canvas.Left="13.682778259999889" Canvas.Top="350.48826570999995" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@chklMultipleValues} AS chklMultipleValues" />
                  <cm:tzTextBox Name="txtMultipleValues" Width="109.99999999999938" Height="21" ControlID="5760154045432193711" Canvas.Left="135.94136807999985" Canvas.Top="354.48826571000006" cm:DataBinding="dsSelectchklMultipleValues" cm:DataBindingField="chklMultipleValues" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkMultipleValues" Content="chkMultipleValues" Width="120" Height="20" ControlID="5659335003033723732" Canvas.Left="714.69625542999938" Canvas.Top="169.93333333000015" cm:DataBinding="dsMandatoryData" cm:DataBindingField="rbnMultipleValues" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5466932434815057100#" />
                  <cm:TZCheckBox Name="chkMultipleValuesMandatory" Content="chkMultipleValuesMandatory" Width="120" Height="20" Canvas.Left="714.69625542999938" Canvas.Top="202.20493827000018" cm:ControlID="5168659056268343420" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryrbnMultipleValues" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5760154045432193711#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkCheckWorkflowStatus" Content="chkCheckWorkflowStatus" Width="120" Height="20" ControlID="5036804729879951345" FontFamily="Tahoma" Canvas.Left="585.69625542999938" Canvas.Top="202.20493827000018" cm:DataBinding="dsCheckWorkflowStatus" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4756965879036652248#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dschkIsManagerAvailable" Content="dschkIsManagerAvailable" Width="51" Height="25" ControlID="5632608860963331703" Canvas.Left="19.06549431000002" Canvas.Top="59.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_IsFieldManagerAvailable">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @guidd" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkIsManagerAvailable" Content="TZCheckBox" Width="51.000000000000028" Height="20" ControlID="5314528432430841199" Canvas.Left="19.06549431" Canvas.Top="92.93333333" cm:DataBinding="dschkIsManagerAvailable" cm:DataBindingField="FieldManagerNotAvailable" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3839" Width="729" Height="164.9999999966667" Background="#FF8FB5A8" ControlID="5739827505747496310" FontFamily="Tahoma" Canvas.Left="6.6992840100001523" Canvas.Top="606.5832585333344" cm:Header="ارجاع گیرنده">
                <Canvas>
                  <cm:tzLabel Name="Lable170" Content=":تعیین وضعیت " Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="622.057956996666" Canvas.Top="13.966666676666364" cm:ControlID="5449393554084875660" />
                  <cm:TZRadioButton Name="rbnAccReference" Content="تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="2" Canvas.Left="573.73462366333229" Canvas.Top="19.247136049999995" cm:ControlID="5218958864821998426" cm:DefaultValue="" cm:TabIndex="22" />
                  <cm:TZRadioButton Name="rbnNotAccReference" Content="عدم تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="2" Canvas.Left="462.46192726999845" Canvas.Top="19.247136049999995" cm:ControlID="5093058697085053446" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="23" cm:TCVCol="" cm:TECol="" cm:TMCol="5704711095539514666#" cm:TVCol="" />
                  <cm:tzLabel Name="Lable173" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="622.76129032999893" Canvas.Top="47.450000009999712" cm:ControlID="4910134374771670285" />
                  <cm:tzTextBox Name="txtDescReference" Width="605.7612903299987" Height="80.06666666" Canvas.Left="8" Canvas.Top="47.45000001" cm:ControlID="5704711095539514666" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="24" />
                  <cm:tzDataSource Name="DataSource187" Content="dsGetUserDataFirst" Width="110" Height="25" Canvas.Left="8" Canvas.Top="60.783651813333059" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5367634685351392367" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Second">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetUserDataSecond" Content="dsGetUserDataSecond" Width="110" Height="25" ControlID="4937725416156234603" Canvas.Left="8" Canvas.Top="94.783651813333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Third">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserIDSecond" Width="110" Height="21" Canvas.Left="121.15923567000004" Canvas.Top="96.035987250000034" cm:ControlID="5639913882214238562" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:PDatePicker Name="prdRegDateSecond" Width="120" Height="20" Canvas.Left="246.08376396999893" Canvas.Top="97.035987250000147" cm:ControlID="5217129348169415114" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeSecond" Width="120" Height="20" Canvas.Left="380.22929936000014" Canvas.Top="99.783651813332881" cm:ControlID="4763977174989292395" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtActivityIDSecond" Width="120" Height="21" Canvas.Left="380.22929936000025" Canvas.Top="69.783651813333" cm:ControlID="4843974103575279809" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkUserCanInsert" Content="chkUserCanInsert" Width="120" Height="20" ControlID="5516976854451683700" FontFamily="Tahoma" Canvas.Left="286.09807556999988" Canvas.Top="8" cm:DataBinding="dsUserCanInsert" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsUserCanInsert" Content="dsUserCanInsert" Width="110" Height="25" ControlID="5200068161426511415" Canvas.Left="7.9999999999998295" Canvas.Top="13.45000000999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtOUID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OUID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3940" Width="714" Height="165" Background="#FFE0CCA1" BorderBrush="#FFB3CECC" ControlID="5534482759343499973" FontFamily="Tahoma" Canvas.Left="744.69928401000061" Canvas.Top="606.58325853000088" cm:Header="تایید کننده">
                <Canvas>
                  <cm:tzLabel Name="Lable154" Content=":تعیین وضعیت " ControlID="5599005784957224369" FontFamily="Tahoma" Canvas.Left="596.92452829999979" Canvas.Top="13.483333326666639" />
                  <cm:TZRadioButton Name="rbnAccSeconder" Content="تایید" ControlID="5433095950633073955" FontFamily="Tahoma" GroupName="1" Canvas.Left="547.89786163333338" Canvas.Top="16.000000000000114" cm:DefaultValue="" cm:TabIndex="16" />
                  <cm:TZRadioButton Name="rbnNotAccSeconder" Content="عدم تایید" ControlID="5558469775321616550" FontFamily="Tahoma" GroupName="1" Canvas.Left="451.94682128999989" Canvas.Top="16.000000000000114" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="17" cm:TCVCol="" cm:TECol="" cm:TMCol="5181720467505861532#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnReferencerbnAccSeconder" Content="ارجاع" ControlID="4684667365755274354" FontFamily="Tahoma" GroupName="1" Canvas.Left="358.421194966666" Canvas.Top="16.000000000000114" cm:FCVCol="4859239441948670019#5265233019818142125#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="18" cm:TCVCol="" cm:TECol="5417635295906277410#5265233019818142125#" cm:TMCol="4859239441948670019#5181720467505861532#" cm:TVCol="" />
                  <cm:tzLabel Name="Lable158" Content=":ارجاع گیرنده" ControlID="5235879747687840580" FontFamily="Tahoma" Canvas.Left="261.92452829999934" Canvas.Top="13.483333326666639" />
                  <cm:tzLabel Name="Lable168" Content=":توضیحات" ControlID="4814503470032419286" FontFamily="Tahoma" Canvas.Left="596.92452829999934" Canvas.Top="46.966666659999873" />
                  <cm:tzTextBox Name="TextBox285" Width="217.9245283" Height="21" ControlID="4859239441948670019" Canvas.Left="8" Canvas.Top="16.96666666" cm:DataBinding="dsSelectUserRefrenceSec" cm:DataBindingField="FullName" cm:IsEnableItem="False" cm:TabIndex="20" />
                  <cm:tzTextBox Name="txtReferenceUserSeconder" Width="120" Height="21" ControlID="5265233019818142125" Canvas.Left="11.924528299998659" Canvas.Top="-5.033333339999901" cm:DataBinding="dsSelectUserRefrenceSec" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUser" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectUserRefrenceSec" Content="dsSelectUserRefrenceSec" Width="110" Height="25" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="8.0000000000000053" Canvas.Top="12.966666659999987" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4617427278350659249" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp159}" IsOutputParameter="False" ParameterType="int" SpParamName=" @LookUp159" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtDescSeconder" Width="579.9245283" Height="90.484281393333163" ControlID="5181720467505861532" Canvas.Left="7.9999999999995417" Canvas.Top="41.899999988333306" cm:IsMulitiLine="True" cm:IsVisibleItem="True" cm:Len="2000" cm:TabIndex="21" />
                  <cm:tzDataSource Name="dsGetUserDataFirst" Content="dsGetUserDataFirst" Width="110" Height="25" ControlID="4655762560683332289" Canvas.Left="8" Canvas.Top="103.38243242333323" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Second">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TzPersianTime Name="prdRegTimeFirst" Width="120" Height="20" ControlID="4839123484665695911" Canvas.Left="132.92452829999891" Canvas.Top="103.38243242333317" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtUserIDfirst" Width="110" Height="21" ControlID="4882272451934286700" Canvas.Left="285.47682128999986" Canvas.Top="103.38428138166648" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUser" cm:IsVisibleItem="False" />
                  <cm:PDatePicker Name="prdRegDateFirst" Width="120" Height="20" ControlID="4866237595884546157" Canvas.Left="404.47682128999986" Canvas.Top="104.38428138166648" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox186" Content="TZCheckBox" Width="120" Height="20" ControlID="5286295664072768338" Canvas.Left="132.92452829999888" Canvas.Top="82.384281381666483" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4839123484665695911#4763977174989292395#5729362453248064269#4665967948789191520#" />
                  <cm:tzTextBox Name="txtActivityIDFirst" Width="120" Height="21" ControlID="5626482120269590337" Canvas.Left="404.47682129000009" Canvas.Top="74.384281381666369" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCheckRefrenceUser" Content="dsCheckRefrenceUser" Width="110" Height="25" ControlID="4983588032057303957" Canvas.Left="7.9999999999998863" Canvas.Top="48.384281381666369" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" />
                  <cm:TZCheckBox Name="chkCheckRefrenceUser" Content="chkCheckRefrenceUser" Width="120" Height="20" ControlID="4875558306346267617" FontFamily="Tahoma" Canvas.Left="132.92452829999877" Canvas.Top="53.384281381666369" cm:DataBinding="dsCheckRefrenceUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsAkhzTaidie" Content="dsAkhzTaidie" Width="110" Height="25" ControlID="5477569500181547439" Canvas.Left="285.47682128999963" Canvas.Top="46.449999993333215" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" />
                  <cm:TZCheckBox Name="chkAkhzTaidie" Content="chkAkhzTaidie" Width="120" Height="20" ControlID="4872620607267697235" FontFamily="Tahoma" Canvas.Left="404.47682128999986" Canvas.Top="51.4499999933331" cm:DataBinding="dsAkhzTaidie" cm:DataBindingField="Res" cm:Event="dsCheckExists" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5491265726550782421#5538917384814042880#" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5378483359704304450#" cm:TMCol="" cm:TVCol="5162934944876769201#5378483359704304450#" />
                  <cm:tzDataSource Name="dsCheckExists" Content="dsCheckExists" Width="110" Height="25" ControlID="4702876376026890291" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="285.47682128999963" Canvas.Top="77.384281381666483" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkAkhzTaidie}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @rbnReferencerbnAccSeconder" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExistsRefrence" Content="chkCheckExistsRefrence" Width="120" Height="20" ControlID="5322494452124026796" FontFamily="Tahoma" Canvas.Left="404.47682129000009" Canvas.Top="72.449999993333051" cm:DataBinding="dsCheckExists" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:TZLookUp Name="LookUp159" Width="26" ControlID="5417635295906277410" TabIndex="19" Canvas.Left="226.9245283" Canvas.Top="17.89999999" cm:Event="dsSelectUserRefrenceSec">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="57" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox40" Width="714" Height="209.9999999933334" Background="#FFD2BEDD" ControlID="4717567623316608016" FontFamily="Tahoma" Canvas.Left="744.69928401" Canvas.Top="778.03333334" cm:Header="اقدام کننده">
                <Canvas>
                  <cm:tzLabel Name="Lable186" Content=":انتخاب وضعیت" ControlID="5258236830362879225" FontFamily="Tahoma" Canvas.Left="596.440006847642" Canvas.Top="6.4652438966669745" />
                  <cm:tzLookUpComboBox Name="cmbStatusActing" Width="187" Height="22" ControlID="4881570594048707352" Canvas.Left="403.6981132100002" Canvas.Top="8.9485772300000956" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsAnswerActing" cm:TabIndex="25" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
                  <cm:TZCheckBox Name="chkReferenceActing" Content="ارجاع جهت" ControlID="5150378410502021558" FontFamily="Tahoma" Canvas.Left="606.2016931600001" Canvas.Top="50.351659955515288" cm:Event="dsAnswerActing" cm:FCVCol="4936620095668202831#5491265726550782421#5506921329922687913#5538917384814042880#" cm:FECol="4881570594048707352#" cm:FMCol="4881570594048707352#" cm:FVCol="" cm:TabIndex="28" cm:TCVCol="4881570594048707352#" cm:TECol="4936620095668202831#5506921329922687913#5538917384814042880#" cm:TMCol="4936620095668202831#4888789270628417469#5491265726550782421#5506921329922687913#" cm:TVCol="" />
                  <cm:tzLookUpComboBox Name="cmbReferenceActing" Width="187" Height="22" ControlID="4936620095668202831" Canvas.Left="403.69811321" Canvas.Top="44.55501192" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsReadActingRef" cm:DataType="Int" cm:Event="dsAkhzTaidie" cm:TabIndex="29" cm:tzDisplayItem="ReferenceActingTitle" cm:tzValueItem="ReferenceActingID" />
                  <cm:tzLabel Name="Lable191" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368368" Canvas.Top="124.03333332666685" cm:ControlID="5255976098231582745" />
                  <cm:tzTextBox Name="txtDescActing" Width="582.69811321" Height="63.96165474" Canvas.Left="2.3355704700000235" Canvas.Top="116.55501192000006" cm:ControlID="4888789270628417469" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="32" />
                  <cm:tzLabel Name="Lable236" Content=":ارجاع گیرنده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="258.58932040999969" Canvas.Top="40.966666656666817" cm:ControlID="5743778383319236862" />
                  <cm:tzTextBox Name="TextBox81" Width="199.66553991999956" Height="21" ControlID="5491265726550782421" Canvas.Left="8" Canvas.Top="44.44999999" cm:DataBinding="dsSelectUserRefrence" cm:DataBindingField="FullName" cm:IsEnableItem="False" cm:TabIndex="31" />
                  <cm:PDatePicker Name="prdDateActing" Width="164.64243845" Height="20" ControlID="4973100433102665678" TabIndex="26" Canvas.Left="90.8070970099997" Canvas.Top="10.948577230000979" cm:DataBinding="dsSelectCurrentDate" cm:DataBindingField="CurrentDate" cm:Event="dsCheckPeymankarDate" cm:IsEnableItem="True" />
                  <cm:TzPersianTime Name="prdTimeActing" Width="48.89800704" Height="20" ControlID="4804226963426195138" Canvas.Left="8" Canvas.Top="10.948577230000664" cm:DataBinding="dsSelectCurrentDate" cm:DataBindingField="CurrentTime" cm:Event="dsCheckPeymankarDate" cm:TabIndex="27" />
                  <cm:tzLabel Name="Lable8182" Content=":تاریخ و ساعت شروع مجدد" ControlID="5627792231250737219" FontFamily="Tahoma" Canvas.Left="233.66553991999945" Canvas.Top="6.4652438966673156" />
                  <cm:tzTextBox Name="txtReferenceUserActing" Width="120" Height="21" Canvas.Left="8" Canvas.Top="75.55501191999997" cm:ControlID="5506921329922687913" cm:DataBinding="dsSelectUserRefrence" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUserSec" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="91.999999999999773" Height="25" ControlID="5202716452179788894" Canvas.Left="421.6981132100002" Canvas.Top="5.94857723" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" />
                  <cm:tzDataSource Name="dsReadActingRef" Content="dsReadActingRef" Width="92" Height="25" ControlID="5114061319767955735" Canvas.Left="421.69811321" Canvas.Top="40.44999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" />
                  <cm:tzDataSource Name="dsSelectUserRefrence" Content="dsSelectUserRefrence" Width="110" Height="25" ControlID="5233856275930939671" Canvas.Left="317.162206586666" Canvas.Top="108.51666665999983" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" />
                  <cm:tzDataSource Name="dsGetUserDataThird" Content="dsGetUserDataThird" Width="110" Height="25" ControlID="5729304498189769267" Canvas.Left="10.589320409999569" Canvas.Top="129.51666666000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:PDatePicker Name="prdRegDateThird" Width="74" Height="20" Canvas.Left="471.69811321" Canvas.Top="160.51666666000017" cm:ControlID="5255399125036515846" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeThird" Width="120" Height="20" Canvas.Left="141.06887325333264" Canvas.Top="160.51666666000017" cm:ControlID="5729362453248064269" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="TextBox199" Width="120" Height="21" Canvas.Left="-726.11666667" Canvas.Top="44.449999990000038" cm:ControlID="5581141407921292751" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtUserIDThird" Width="33" Height="21" ControlID="4786962185969475179" Canvas.Left="660.99999999999989" Canvas.Top="107.51666665999994" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtActivityIDThird" Width="109.99999999999989" Height="21" Canvas.Left="270.06887325333275" Canvas.Top="155.51666666000017" cm:ControlID="5347612118525905609" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableDate" Content="dsEnableDate" Width="110" Height="25" ControlID="5466927095367674240" Canvas.Left="317.162206586666" Canvas.Top="129.51666665999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_EnableDate_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnableDate" Content="chkEnableDate" Width="120" Height="20" ControlID="5192361472626038383" FontFamily="Tahoma" Canvas.Left="473.0336836799998" Canvas.Top="113.51666665999983" cm:DataBinding="dsEnableDate" cm:DataBindingField="Res" cm:Event="dsCheckPeymankarDate,dsEnableLabel,dsEnableLabel2" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4973100433102665678#4804226963426195138#" cm:TVCol="4973100433102665678#4804226963426195138#5627792231250737219#" />
                  <cm:tzDataSource Name="dsAnswerActing" Content="dsAnswerActing" Width="59" Height="25" ControlID="4689550366720017222" Canvas.Left="651.69811321000009" Canvas.Top="129.51666666000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckAnswerActing_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbStatusActing}" IsOutputParameter="False" ParameterType="int" SpParamName="  @Acting" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@chkReferenceActing}" IsOutputParameter="False" ParameterType="bit" SpParamName="  @chkReferenceActing" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkAnswerActing" Content="chkAnswerActing" Width="59" Height="20" ControlID="4655348426068110759" FontFamily="Tahoma" Canvas.Left="471.69811321000009" Canvas.Top="134.51666665999994" cm:DataBinding="dsAnswerActing" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkCheckRefrenceUserSec" Content="chkCheckRefrenceUserSec" Width="120" Height="20" FontFamily="Tahoma" Canvas.Left="8.5893204099997877" Canvas.Top="160.51666666000017" cm:ControlID="4795065758229322170" cm:DataBinding="dsCheckRefrenceUserSec" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCheckPeymankarDate" Content="dsCheckPeymankarDate" Width="68" Height="25" ControlID="5046816167316824995" Canvas.Left="642.69811321000009" Canvas.Top="83.0383452533333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckPeymankarDate">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@prdDateActing}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @prdDateActing" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@prdTimeActing}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @prdTimeActing" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@chkEnableDate}" IsOutputParameter="False" ParameterType="bit" SpParamName="  @ChkEnable" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkValidatePeymankarDate" Content="chkValidatePeymankarDate." Width="120" Height="20" ControlID="5094607077792705164" FontFamily="Tahoma" Canvas.Left="129.5893204099998" Canvas.Top="71.516666659999828" cm:DataBinding="dsCheckPeymankarDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox175" Content="TZCheckBox" Width="37" Height="20" ControlID="5497800083366103290" Canvas.Left="383.69811321000009" Canvas.Top="82.516666659999942" cm:DataBinding="dsEnableLabel" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5627792231250737219#" />
                  <cm:tzLabel Name="Lable176" Content=":تاریخ و ساعت پاسخ پیمانکار" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="233.66553991999945" Canvas.Top="6.4652438966673156" cm:ControlID="5529075832015717328" />
                  <cm:tzDataSource Name="dsEnableLabel2" Content="dsEnableLabel2" Width="110" Height="25" Canvas.Left="8" Canvas.Top="95.516666660000169" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5273195586687856254" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:tzTextBox Name="txtLastStatusActing" Width="70.5366666633339" Height="21" ControlID="5485778130039395725" Canvas.Left="317.16220658666612" Canvas.Top="44.44999999" cm:DataBinding="dsEnableDate" cm:DataBindingField="StatusActing" cm:DataType="Int" cm:Event="dsEnableLabel2,dsEnableLabel" cm:IsVisibleItem="False" />
                  <cm:TZButton Name="Button196" Content="بازیابی تاریخ" Width="99.966316320000033" Height="23" ControlID="4714239607266895731" Canvas.Left="594.03368368" Canvas.Top="157.51666666000008" cm:Event="dsSelectCurrentDate" />
                  <cm:tzDataSource Name="dsSelectCurrentDate" Content="dsSelectCurrentDate" Width="110" Height="25" ControlID="5233624649659262730" Canvas.Left="317.162206586666" Canvas.Top="155.51666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" />
                  <cm:tzLabel Name="Lable284" Content=":شماره پیغام" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368368" Canvas.Top="75.55501191999997" cm:ControlID="5367350527803376629" />
                  <cm:tzTextBox Name="txtMessageNumber" Width="181.33557047000005" Height="21" ControlID="4826610513644201043" Canvas.Left="403.69811321" Canvas.Top="79.03834525" cm:DataType="NVarChar" cm:Len="50" />
                  <cm:tzLabel Name="Lable194" Content="درخواست/" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368367999985" Canvas.Top="91.071678586666749" cm:ControlID="5663799651477528301" />
                  <cm:tzDataSource Name="dsSelectUserRefrenceNew" Content="dsSelectUserRefrenceNew" Width="110" Height="25" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="139.58932040999991" Canvas.Top="129.51666665999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5401325953310335326" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" />
                  <cm:tzTextBox Name="TextBox213" Width="199.66553991999945" Height="21" Canvas.Left="7.9999999999999982" Canvas.Top="44.449999990000208" cm:ControlID="5162934944876769201" cm:DataBinding="dsSelectUserRefrenceNew" cm:DataBindingField="FullName" cm:Event="dsCheckExists" cm:IsEnableItem="False" cm:TabIndex="31" />
                  <cm:TZCheckBox Name="CheckBox178" Content="TZCheckBox" Width="120" Height="20" ControlID="5716290874951705075" Canvas.Left="267.69887324999991" Canvas.Top="82.516666659999942" cm:DataBinding="dsEnableLabel2" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5529075832015717328#" />
                  <cm:TZLookUp Name="LookUp237" Width="24" Height="NaN" TabIndex="30" Canvas.Left="208.66553991999967" Canvas.Top="42.449999990000038" cm:ControlID="5538917384814042880" cm:Event="dsSelectUserRefrence">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="57" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:TZLookUp Name="LookUp212" Width="24" Height="NaN" TabIndex="30" Canvas.Left="216.66553991999967" Canvas.Top="42.449999990000038" cm:ControlID="5378483359704304450" cm:Event="dsSelectUserRefrenceNew,dsCheckExists">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="5263373270007817469$WFID,4995533338641167379$GUID," DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="31306" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzDataSource Name="dsCheckRefrenceUserSec" Content="dsCheckRefrenceUserSec" Width="110" Height="25" Canvas.Left="159.06887325333275" Canvas.Top="108.51666665999983" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4646773501795498378" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox90" Width="729" Height="215.45007480333334" Background="#FFE098BE" ControlID="5311852255544786792" FontFamily="Tahoma" Canvas.Left="6.69928401" Canvas.Top="772.58325853" cm:Header="نتیجه اقدامات">
                <Canvas>
                  <cm:tzLabel Name="Lable80" Content=":نتیجه " Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="623.5419354799991" Canvas.Top="9.11021505666713" cm:ControlID="4681241468063451828" />
                  <cm:tzLabel Name="Lable86" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="623.5419354799991" Canvas.Top="42.593548390000251" cm:ControlID="4845383355432292428" />
                  <cm:tzLabel Name="Lable87" Content=":بارگذاری فایل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="621.78193547999933" Canvas.Top="113.6268817166665" cm:ControlID="5035904599795377816" />
                  <cm:TZFileUpload Name="fluAttachmentActions" Width="234" Height="25.516666666666652" TabIndex="4" Canvas.Left="380.54193547999932" Canvas.Top="112.5935483833332" cm:ControlID="4636532424394902227" />
                  <cm:TZRadioButton Name="rbnAccActions" Content="تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="3" Canvas.Left="574.51526881333291" Canvas.Top="14.39068443000042" cm:ControlID="5738523675897553270" cm:DefaultValue="" cm:Event="dsSelectrbnAccActions" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="33" cm:TCVCol="" cm:TECol="5259992753776356314#" cm:TMCol="5259992753776356314#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnNotAccActions" Content="عدم تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="3" Canvas.Left="478.84265146999928" Canvas.Top="14.39068443000042" cm:ControlID="5724648397005188929" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="34" cm:TCVCol="" cm:TECol="" cm:TMCol="4999118027321972736#" cm:TVCol="" />
                  <cm:tzLookUpComboBox Name="cmbScoreActions" Width="174" Height="22" Canvas.Left="7.9999999999999289" Canvas.Top="13.00000000000011" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5259992753776356314" cm:DataBinding="dsScore" cm:DataType="Int" cm:TabIndex="35" cm:tzDisplayItem="ServingTableScoreTitle" cm:tzValueItem="ServingTableScoreID" />
                  <cm:tzLabel Name="Lable83" Content=":امتیاز" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="183.00000000000011" Canvas.Top="10.516666666666776" cm:ControlID="4964487483417406645" />
                  <cm:tzTextBox Name="txtDescActions" Width="606.54193547999921" Height="50" Canvas.Left="8" Canvas.Top="44" cm:ControlID="4999118027321972736" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="36" />
                  <cm:tzDataSource Name="dsScore" Content="dsScore" Width="110" Height="25" ControlID="5055561591823269414" Canvas.Left="20.9615581999999" Canvas.Top="9.9999999999997726" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" />
                  <cm:tzDataSource Name="dsGetUserDataForth" Content="dsGetUserDataForth" Width="110" Height="25" Canvas.Left="8" Canvas.Top="77.000000000000114" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5627434039910385051" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Fourth">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:PDatePicker Name="prdRegDateForth" Width="120" Height="20" Canvas.Left="153.63932040999953" Canvas.Top="47.0768817233337" cm:ControlID="5481088134109499185" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeForth" Width="120" Height="20" Canvas.Left="296.4393204099996" Canvas.Top="43.998151041666915" cm:ControlID="4665967948789191520" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtUserIDForth" Width="120" Height="21" Canvas.Left="8" Canvas.Top="44.000000000000114" cm:ControlID="4818312992012446291" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtActivityIDForth" Width="120" Height="21" Canvas.Left="433.71118421000006" Canvas.Top="41.000000000000227" cm:ControlID="4825489060297649621" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectrbnAccActions" Content="dsSelectrbnAccActions" Width="110" Height="25" ControlID="5200482427605653075" Canvas.Left="367.84265146999928" Canvas.Top="7.0000000000002274" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnAccActions} AS rbnAccActions" />
                  <cm:TZCheckBox Name="CheckBox167" Content="TZCheckBox" Width="120" Height="20" ControlID="4975186370815220673" Canvas.Left="274.63932040999953" Canvas.Top="12.000000000000227" cm:DataBinding="dsSelectrbnAccActions" cm:DataBindingField="rbnAccActions" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5259992753776356314#" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsEnableLabel" Content="dsEnableLabel" Width="110" Height="25" ControlID="5559974938702805655" Canvas.Left="757.69928401" Canvas.Top="772.58325853" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="تاریخچه ">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox238" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="5228753967731097424" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView239" Width="1424" Height="901.55" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5742389205581948678" ItemsSource="{Binding ElementName=dsReadHistory, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsReadHistory" cm:KeyField="ServingTableSecondPhaseHistoryID">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableSecondPhaseHistoryID" DecimalMark="False" HeaderText="ServingTableSecondPhaseHistoryID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableSecondPhaseHistoryID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableSecondPhaseHistoryID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Rolee" DecimalMark="False" HeaderText="نقش" IsRowColorField="False" KeyField="False" SortMemberPath="Rolee">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Rolee}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Actionn" DecimalMark="False" HeaderText="نوع اقدام " IsRowColorField="False" KeyField="False" SortMemberPath="Actionn">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Actionn}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Reference" DecimalMark="False" HeaderText="ارجاع گیرنده " IsRowColorField="False" KeyField="False" SortMemberPath="Reference">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Reference}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserDesc" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="UserDesc">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserDesc}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsReadHistory" Content="dsReadHistory" Width="110" Height="25" ControlID="5281261300836226632" Canvas.Left="24.609319000000227" Canvas.Top="108.63548387000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="ضمیمه ها" cm:DataBinding="dsReadCountAttach" cm:DataBindingField="Column1">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox409" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="5139045147590239356" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView410" Width="1424" Height="901.55" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5697148593855323337" ItemsSource="{Binding ElementName=dsReadAttachment, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsReadAttachment" cm:KeyField="AttachmentID">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachmentID" DecimalMark="False" HeaderText="AttachmentID" IsRowColorField="False" KeyField="True" SortMemberPath="AttachmentID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachmentID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="56" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="AttachmentTitle" DataTextField="AttachmentTitle" DecimalMark="False" HeaderText="فایل مدرک" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="AttachmentTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding AttachmentTitle}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding AttachmentTitle}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsReadAttachment" Content="dsReadAttachment" Width="110" Height="25" ControlID="5031005639295037783" Canvas.Left="433" Canvas.Top="54.550000003333366" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsReadCountAttach" Content="dsReadCountAttach" Width="110" Height="25" Canvas.Left="433.00000000000028" Canvas.Top="106.57863962333337" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5616592185866978428" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="راهنما">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox284" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="4731899895694599865" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="راهنما">
                <Canvas>
                  <cm:TzHyperlink Name="Hyperlink143" Content="دریافت فایل آموزشی" Width="1424" Height="154.48333333" ControlID="5181278050932924512" FontFamily="B Nazanin" FontSize="100" Foreground="#FF5216CC" Canvas.Left="8" Canvas.Top="13.06666666" cm:DataBinding="dsLink" cm:tzDisplayItem="Title" cm:tzValueItem="LoggingSystemLink" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
        </cm:TZTabControl>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/06/03 14:28:33', '727b7174-a4e6-41ce-95e8-f91c3ece3ad6', 0, N'', N'{"formID": "243" ,"components": [{"value": "","key": "4975186370815220673","label": "CheckBox167","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "rbnAccActions"},{"value": "","key": "5497800083366103290","label": "CheckBox175","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5716290874951705075","label": "CheckBox178","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5286295664072768338","label": "CheckBox186","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5447522547560323991","label": "CheckBox203","controlType": "checkbox","caption": "chbVisibleItem" ,"DataBindingField" : "flag"},{"value": "","key": "5343950136022904724","label": "CheckBox37","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "SelectInfo"},{"value": "","key": "4872620607267697235","label": "chkAkhzTaidie","controlType": "checkbox","caption": "chkAkhzTaidie" ,"DataBindingField" : "Res"},{"value": "","key": "4655348426068110759","label": "chkAnswerActing","controlType": "checkbox","caption": "chkAnswerActing" ,"DataBindingField" : "Res"},{"value": "","key": "5322494452124026796","label": "chkCheckExistsRefrence","controlType": "checkbox","caption": "chkCheckExistsRefrence" ,"DataBindingField" : "Res"},{"value": "","key": "4875558306346267617","label": "chkCheckRefrenceUser","controlType": "checkbox","caption": "chkCheckRefrenceUser" ,"DataBindingField" : "Res"},{"value": "","key": "4795065758229322170","label": "chkCheckRefrenceUserSec","controlType": "checkbox","caption": "chkCheckRefrenceUserSec" ,"DataBindingField" : "Res"},{"value": "","key": "5036804729879951345","label": "chkCheckWorkflowStatus","controlType": "checkbox","caption": "chkCheckWorkflowStatus" ,"DataBindingField" : "Res"},{"value": "","key": "4688451764383907719","label": "chkCompare","controlType": "checkbox","caption": "chkCompare" ,"DataBindingField" : "res"},{"value": "","key": "5132155074427207127","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Column1"},{"value": "","key": "5192361472626038383","label": "chkEnableDate","controlType": "checkbox","caption": "chkEnableDate" ,"DataBindingField" : "Res"},{"value": "","key": "5314528432430841199","label": "chkIsManagerAvailable","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "FieldManagerNotAvailable"},{"value": "","key": "5220620902125066610","label": "chkMandatoryNotSelectInfo","controlType": "checkbox","caption": "chkMandatoryNotSelectInfo" ,"DataBindingField" : "MandatoryNotSelectInfo"},{"value": "","key": "5115924373474858497","label": "chkMandatoryNotSelectInfoDate","controlType": "checkbox","caption": "chkMandatoryNotSelectInfoDate" ,"DataBindingField" : "MandatoryNotSelectInfoDate"},{"value": "","key": "5666353536888725103","label": "chkMandatorySelectInfo","controlType": "checkbox","caption": "chkMandatorySelectInfo" ,"DataBindingField" : "MandatorySelectInfo"},{"value": "","key": "5659335003033723732","label": "chkMultipleValues","controlType": "checkbox","caption": "chkMultipleValues" ,"DataBindingField" : "rbnMultipleValues"},{"value": "","key": "5168659056268343420","label": "chkMultipleValuesMandatory","controlType": "checkbox","caption": "chkMultipleValuesMandatory" ,"DataBindingField" : "MandatoryrbnMultipleValues"},{"value": "","key": "5443758597500893918","label": "chkNeedCertificate","controlType": "checkbox","caption": "chkNeedCertificate" ,"DataBindingField" : "IsNeedCertificate"},{"value": "","key": "5150378410502021558","label": "chkReferenceActing","controlType": "checkbox","caption": "ارجاع جهت" ,"DataBindingField" : ""},{"value": "","key": "4844487118598404545","label": "chkRequestSubject","controlType": "checkbox","caption": "chkRequestSubject" ,"DataBindingField" : "Res"},{"value": "","key": "5516976854451683700","label": "chkUserCanInsert","controlType": "checkbox","caption": "chkUserCanInsert" ,"DataBindingField" : "Res"},{"value": "","key": "5464357723432469235","label": "chkUserIsBranch","controlType": "checkbox","caption": "chkUserIsBranch" ,"DataBindingField" : "UserIsBranch"},{"value": "","key": "4697873506575570740","label": "chkValidate","controlType": "checkbox","caption": "chkValidate" ,"DataBindingField" : "Res"},{"value": "","key": "5094607077792705164","label": "chkValidatePeymankarDate","controlType": "checkbox","caption": "chkValidatePeymankarDate." ,"DataBindingField" : "Column1"},{"key": "5554970866147992698","label": "cmbFieldValueID","value": "", "controlType": "dropdown","options":""},{"key": "4936620095668202831","label": "cmbReferenceActing","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5259992753776356314","label": "cmbScoreActions","value": "", "controlType": "dropdown","options":""},{"key": "4881570594048707352","label": "cmbStatusActing","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key":"5367634685351392367" , "dataSourceName":"DataSource187" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5477569500181547439" , "dataSourceName":"dsAkhzTaidie" , "controlType": "datasource",  "selectQuery" :"IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689550366720017222" , "dataSourceName":"dsAnswerActing" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckAnswerActing_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4702876376026890291" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5046816167316824995" , "dataSourceName":"dsCheckPeymankarDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckPeymankarDate" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4983588032057303957" , "dataSourceName":"dsCheckRefrenceUser" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4646773501795498378" , "dataSourceName":"dsCheckRefrenceUserSec" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4686304685539765447" , "dataSourceName":"dsCheckRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidate_RequestSubject_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4772282357938744593" , "dataSourceName":"dsCheckValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5122826346641792319" , "dataSourceName":"dsCheckWorkflowStatus" , "controlType": "datasource",  "selectQuery" :"SP_Cu_CheckWorkflowStatus_Frm31240" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5632608860963331703" , "dataSourceName":"dschkIsManagerAvailable" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_IsFieldManagerAvailable" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4796377435123176147" , "dataSourceName":"dsCompare" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5462419856774520597" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_delete_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5662589489734807052" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5466927095367674240" , "dataSourceName":"dsEnableDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_EnableDate_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5559974938702805655" , "dataSourceName":"dsEnableLabel" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5273195586687856254" , "dataSourceName":"dsEnableLabel2" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4793853652190513490" , "dataSourceName":"dsFollowCode" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFollowCode_NewUserDefinition" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4655762560683332289" , "dataSourceName":"dsGetUserDataFirst" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5627434039910385051" , "dataSourceName":"dsGetUserDataForth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Fourth" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4937725416156234603" , "dataSourceName":"dsGetUserDataSecond" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Third" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5729304498189769267" , "dataSourceName":"dsGetUserDataThird" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5369238171599239062" , "dataSourceName":"dsGetValue" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5170551075891586804" , "dataSourceName":"dsGUIDD" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4877631570857336077" , "dataSourceName":"dsInsertData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5085105881132199709" , "dataSourceName":"dsLink" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5110670696080708548" , "dataSourceName":"dsLoad" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760404647498399665" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4974277814964022057" , "dataSourceName":"dsLoadService" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4881392250038900796" , "dataSourceName":"dsMakeEmptry" , "controlType": "datasource",  "selectQuery" :"IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5540375087530757889" , "dataSourceName":"dsMandatoryData" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5114061319767955735" , "dataSourceName":"dsReadActingRef" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5031005639295037783" , "dataSourceName":"dsReadAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5616592185866978428" , "dataSourceName":"dsReadCountAttach" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4823486510891932452" , "dataSourceName":"dsReadData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadData_ServingTableField" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5281261300836226632" , "dataSourceName":"dsReadHistory" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5055561591823269414" , "dataSourceName":"dsScore" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5459657173581711636" , "dataSourceName":"dsSelectchklMultipleValues" , "controlType": "datasource",  "selectQuery" :"SELECT {@chklMultipleValues} AS chklMultipleValues" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233624649659262730" , "dataSourceName":"dsSelectCurrentDate" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5036453969450944063" , "dataSourceName":"dsSelectItems" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvItems} AS ItemID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5200482427605653075" , "dataSourceName":"dsSelectrbnAccActions" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnAccActions} AS rbnAccActions" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233856275930939671" , "dataSourceName":"dsSelectUserRefrence" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5401325953310335326" , "dataSourceName":"dsSelectUserRefrenceNew" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617427278350659249" , "dataSourceName":"dsSelectUserRefrenceSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5667847526345547012" , "dataSourceName":"dsSelectWFID" , "controlType": "datasource",  "selectQuery" :"SELECT (@WorkflowInstanceID) AS WFID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4730083060785538985" , "dataSourceName":"dsUpdateData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5200068161426511415" , "dataSourceName":"dsUserCanInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5017690624055140686" , "dataSourceName":"dsVisibleItem" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_VisibleItemType {@txtItemID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5568970676742359854","label": "TextBox189","controlType": "textbox", "type": "" , "DataBindingField" : "FieldTitle"},{"value": "","key": "5581141407921292751","label": "TextBox199","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5162934944876769201","label": "TextBox213","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4859239441948670019","label": "TextBox285","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5491265726550782421","label": "TextBox81","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5626482120269590337","label": "txtActivityIDFirst","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4825489060297649621","label": "txtActivityIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4843974103575279809","label": "txtActivityIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5347612118525905609","label": "txtActivityIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5761211021147188750","label": "txtAddress","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5626556152912671128","label": "txtDataRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4669232414997773258","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4888789270628417469","label": "txtDescActing","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4999118027321972736","label": "txtDescActions","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704711095539514666","label": "txtDescReference","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5181720467505861532","label": "txtDescSeconder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5263373270007817469","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "5329520347459779938","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4995533338641167379","label": "txtGUIDD","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5591840014643513848","label": "txtInsertRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5243519420555067860","label": "txtItemID","controlType": "textbox", "type": "" , "DataBindingField" : "ItemID"},{"value": "","key": "5485778130039395725","label": "txtLastStatusActing","controlType": "textbox", "type": "" , "DataBindingField" : "StatusActing"},{"value": "","key": "4826610513644201043","label": "txtMessageNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5760154045432193711","label": "txtMultipleValues","controlType": "textbox", "type": "" , "DataBindingField" : "chklMultipleValues"},{"value": "","key": "4850327712077035454","label": "txtOrganizationPost","controlType": "textbox", "type": "" , "DataBindingField" : "Organizationpost"},{"value": "","key": "4797625139975453820","label": "txtOrganizationUnit","controlType": "textbox", "type": "" , "DataBindingField" : "OrganizationUnit"},{"value": "","key": "5474736857145248079","label": "txtOUID","controlType": "textbox", "type": "" , "DataBindingField" : "UnitID"},{"value": "","key": "5281861071186097962","label": "txtPhoneNumber","controlType": "textbox", "type": "" , "DataBindingField" : "telephonenumber"},{"value": "","key": "5506921329922687913","label": "txtReferenceUserActing","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5265233019818142125","label": "txtReferenceUserSeconder","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5206491520355753398","label": "txtRequestDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5035903570341991895","label": "txtServiceLocation","controlType": "textbox", "type": "" , "DataBindingField" : "Servicelocation"},{"value": "","key": "4938308427061897607","label": "txtServiceResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "5758762721732505115","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4882272451934286700","label": "txtUserIDfirst","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4818312992012446291","label": "txtUserIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5639913882214238562","label": "txtUserIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4786962185969475179","label": "txtUserIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5183947771732858935","label": "txtUserName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5662217081009761575","label": "txtValue","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4883524612292746126","data": [{"key": "5209939103483890987","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5329520347459779938","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5035903570341991895","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4838564445226209905","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4647773901884335145","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5266482798981468614","color": "","invisible": false,"mandatory": true,"disable": false }]},{"layoutID": "5247524876530023130","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5626692213297706894","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5315581096260719821","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5057671704762368988","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4636532424394902227","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5035904599795377816","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5580275910207162559","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218958864821998426","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5093058697085053446","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5704711095539514666","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5449393554084875660","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5238898146110492403","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681241468063451828","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5738523675897553270","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5724648397005188929","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4964487483417406645","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5259992753776356314","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4999118027321972736","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم فرآیند فاز دوم میز خدمت',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="1555" Height="1087">
    <ViewLayouts>
      <ViewLayoutItem Name="کاربر ثبت کننده" ID="4883524612292746126" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5209939103483890987" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5329520347459779938" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5035903570341991895" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4838564445226209905" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4647773901884335145" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5266482798981468614" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="تایید کننده" ID="5247524876530023130" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ارجاع گیرنده" ID="5626692213297706894" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="اقدام کننده" ID="5315581096260719821" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه اقدامات" ID="5057671704762368988" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4636532424394902227" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5035904599795377816" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="ارجاع گیرنده-توضیحات" ID="5580275910207162559" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5311852255544786792" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5218958864821998426" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5093058697085053446" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5704711095539514666" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5449393554084875660" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
      <ViewLayoutItem Name="نتیجه اقدامات-توضیحات" ID="5238898146110492403" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4966675744931087483" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4756965879036652248" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5739827505747496310" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5534482759343499973" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4717567623316608016" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4681241468063451828" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5738523675897553270" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5724648397005188929" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4964487483417406645" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5259992753776356314" InVisible="true" Disable="false" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4999118027321972736" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5150238976164030821" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5616877507763691571" InVisible="false" Disable="true" Mandatory="false" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5664127672082991889</ID>
        <Name>بارگذاری فایل</Name>
        <Condition>({@chkNeedCertificate.Value} ==True) &amp;&amp; ("{@FileUpload28.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>بارگذاری فایل اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5443758597500893918</ComponentID>
            <ComponentName>chkNeedCertificate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5318841287166758505</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5538532305009285066</ComponentID>
            <ComponentName>FileUpload28</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4949302914793759509</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4627802545459455776</ID>
        <Name>فرمت اطلاعات</Name>
        <Condition>({@chkValidate.Value} ==False) &amp;&amp; ({@CheckBox37.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فرمت اطلاعات وارد شده صحیح نمی باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4697873506575570740</ComponentID>
            <ComponentName>chkValidate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4831672282573033539</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5343950136022904724</ComponentID>
            <ComponentName>CheckBox37</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4721370834776458916</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5402681211692642020</ID>
        <Name>مقایسه وارد کردن کمبو فیلد گرید </Name>
        <Condition>({@chkCompare.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>بازیابی اطلاعات انجام نشده و یا مقادیر اجباری در جدول مقدار دهی نشده اند</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4688451764383907719</ComponentID>
            <ComponentName>chkCompare</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4686129164262309263</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4835365107176920692</ID>
        <Name>مجاز </Name>
        <Condition>({@chkUserCanInsert.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر گرامی شما مجاز به ثبت درخواست برای این عنوان درخواست نمی باشید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5516976854451683700</ComponentID>
            <ComponentName>chkUserCanInsert</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5269645911585093772</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5174606341414606131</ID>
        <Name>پاسخ-تایید کننده</Name>
        <Condition>({@rbnAccSeconder.Value} ==False) &amp;&amp; ({@rbnNotAccSeconder.Value} ==False) &amp;&amp; ({@rbnReferencerbnAccSeconder.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5433095950633073955</ComponentID>
            <ComponentName>rbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5573437438430075627</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5558469775321616550</ComponentID>
            <ComponentName>rbnNotAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5449934113124656819</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5733257746624329625</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5266146089457154940</ID>
        <Name>پاسخ- اقدام کننده</Name>
        <Condition>({@chkAnswerActing.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4655348426068110759</ComponentID>
            <ComponentName>chkAnswerActing</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5388722183198473807</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4736779566622842066</ID>
        <Name>پاسخ-ارجاع گیرنده</Name>
        <Condition>({@rbnAccReference.Value} ==False) &amp;&amp; ({@rbnNotAccReference.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5218958864821998426</ComponentID>
            <ComponentName>rbnAccReference</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5368190437274647971</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5093058697085053446</ComponentID>
            <ComponentName>rbnNotAccReference</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5131500554782751940</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4628885506234383630</ID>
        <Name>پاسخ-اقدامات</Name>
        <Condition>({@rbnAccActions.Value} ==False) &amp;&amp; ({@rbnNotAccActions.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا پاسخ خود را ثبت نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5738523675897553270</ComponentID>
            <ComponentName>rbnAccActions</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5354468947902492325</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5724648397005188929</ComponentID>
            <ComponentName>rbnNotAccActions</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5450362158120781362</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4614314661607481214</ID>
        <Name>کاربر ارجاع گیرنده-2</Name>
        <Condition>({@chkCheckRefrenceUserSec.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر ارجاع گیرنده با کاربر فعلی نمی تواند یکی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4795065758229322170</ComponentID>
            <ComponentName>chkCheckRefrenceUserSec</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5114068655337628566</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5159487477694048575</ID>
        <Name>تاریخ و ساعت</Name>
        <Condition>({@chkValidatePeymankarDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تاریخ و ساعت وارد شده معتبر نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5094607077792705164</ComponentID>
            <ComponentName>chkValidatePeymankarDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5104978855349504996</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5696470399696347795</ID>
        <Name>عنوان درخواست</Name>
        <Condition>({@chkRequestSubject.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>عنوان درخواست انتخابی مطابقت ندارد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4844487118598404545</ComponentID>
            <ComponentName>chkRequestSubject</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4725444943891210512</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5279669103305025125</ID>
        <Name>کاربر ارجاع گیرنده-1</Name>
        <Condition>({@chkCheckRefrenceUser.Value} ==True) &amp;&amp; ({@rbnReferencerbnAccSeconder.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر ارجاع گیرنده با کاربر فعلی نمی تواند یکی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4875558306346267617</ComponentID>
            <ComponentName>chkCheckRefrenceUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4829288975332454148</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5755057833228877577</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4787787231297231280</ID>
        <Name>کمبو اجباری</Name>
        <Condition>({@chkMandatorySelectInfo.Value} ==True) &amp;&amp; ({@cmbFieldValueID.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5666353536888725103</ComponentID>
            <ComponentName>chkMandatorySelectInfo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4617581697415939130</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5554970866147992698</ComponentID>
            <ComponentName>cmbFieldValueID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4979725152185711805</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4869114721595587559</ID>
        <Name>تکست اجباری</Name>
        <Condition>({@chkMandatoryNotSelectInfo.Value} ==True) &amp;&amp; ("{@txtValue.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5220620902125066610</ComponentID>
            <ComponentName>chkMandatoryNotSelectInfo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5357195177413322123</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5662217081009761575</ComponentID>
            <ComponentName>txtValue</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4969075496133317392</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5374810010129897506</ID>
        <Name>تاریخ</Name>
        <Condition>({@chkMandatoryNotSelectInfoDate.Value} ==True) &amp;&amp; ("{@pdDate.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تاریخ را انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5115924373474858497</ComponentID>
            <ComponentName>chkMandatoryNotSelectInfoDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5521811429741286563</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5371746024198239615</ComponentID>
            <ComponentName>pdDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5290505399489843387</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4797432062973963544</ID>
        <Name>اجباری-چک لیست</Name>
        <Condition>({@chkMultipleValuesMandatory.Value} ==True) &amp;&amp; ("{@txtMultipleValues.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد های اجباری را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5168659056268343420</ComponentID>
            <ComponentName>chkMultipleValuesMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4898021459079443895</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5760154045432193711</ComponentID>
            <ComponentName>txtMultipleValues</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5261589270041232129</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5617663843076015243</ID>
        <Name>کاربر ارجاع گیرنده اقدام کننده</Name>
        <Condition>({@chkCheckExistsRefrence.Value} ==True) &amp;&amp; ({@cmbReferenceActing.Value} ==1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا حداقل یک کاربر برای ارجاع انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5322494452124026796</ComponentID>
            <ComponentName>chkCheckExistsRefrence</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4918411253940591152</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4936620095668202831</ComponentID>
            <ComponentName>cmbReferenceActing</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4624308569282193492</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5205319302369453573</ID>
        <Name>کاربر ارجاع گیرنده - خالی</Name>
        <Condition>({@rbnReferencerbnAccSeconder.Value} ==True) &amp;&amp; ({@txtReferenceUserSeconder.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا کاربر ارجاع گیرنده مورد نظر را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4684667365755274354</ComponentID>
            <ComponentName>rbnReferencerbnAccSeconder</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5180216907795963006</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5265233019818142125</ComponentID>
            <ComponentName>txtReferenceUserSeconder</ComponentName>
            <ComponentDataType>BigInt</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5081105183082124004</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5230398995716057362</ID>
        <Name>تعریف نشدن مدیر رشته</Name>
        <Condition>({@chkIsManagerAvailable.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>به دلیل عدم تعریف مدیر رشته، امکان ثبت فرآیند وجود ندارد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5314528432430841199</ComponentID>
            <ComponentName>chkIsManagerAvailable</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4803703807101971225</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1502" Height="1060" Background="#FF6A3DDB" BorderBrush="#FFD5DFE5" ControlID="4933763375039949449" FontFamily="Tahoma" Canvas.Left="26" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TZTabControl Name="TabControl8" Width="1474" Height="1022.5166666666667" Background="#FFFFFFFF" ControlID="5732604917581371215" Canvas.Left="8" Canvas.Top="8">
          <cm:TZTabItem cm:HeaderText="مشخصات درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox41" Width="1452" Height="100.48750877000026" Background="#FFB1A0D3" ControlID="4966675744931087483" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="-3" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable43" Content=":نام و نام خانوادگی" ControlID="5733634605876206147" FontFamily="Tahoma" Canvas.Left="1337.1366666666665" Canvas.Top="5.0666666666665634" />
                  <cm:tzLabel Name="Lable44" Content=":محل خدمت" ControlID="4686214630536177633" FontFamily="Tahoma" Canvas.Left="989.22999999999888" Canvas.Top="5.0666666666666211" />
                  <cm:tzLabel Name="Lable45" Content=":واحد سازمانی" ControlID="5375270509618889506" FontFamily="Tahoma" Canvas.Left="711.66155131" Canvas.Top="4.06481770833331" />
                  <cm:tzLabel Name="Lable46" Content=":پست سازمانی" ControlID="5222376638017743464" FontFamily="Tahoma" Canvas.Left="1337.1366666699996" Canvas.Top="42.550000006666679" />
                  <cm:tzLabel Name="Lable48" Content=":تلفن" ControlID="5387460877374822072" FontFamily="Tahoma" Canvas.Left="989.65155130999972" Canvas.Top="38.549999996666713" />
                  <cm:tzLabel Name="Lable49" Content=":آدرس" ControlID="4875678637686562706" FontFamily="Tahoma" Canvas.Left="343.66155131000005" Canvas.Top="38.549999996666713" />
                  <cm:tzLabel Name="Lable50" Content=":تاریخ و ساعت ثبت" ControlID="5337486683385218239" FontFamily="Tahoma" Canvas.Left="343.66155131000005" Canvas.Top="5.0666666666667908" />
                  <cm:tzLabel Name="Lable51" Content=":شماره پیگیری" ControlID="5446486502087834869" FontFamily="Tahoma" Canvas.Left="712.43155131" Canvas.Top="42.550000006666806" />
                  <cm:tzTextBox Name="txtOrganizationPost" Width="255.13666667000143" Height="21" ControlID="4850327712077035454" Canvas.Left="1072.9999999999986" Canvas.Top="46.03333334" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Organizationpost" cm:IsEnableItem="False" cm:TabIndex="6" />
                  <cm:tzTextBox Name="txtFollowUpCode" Width="252.01333333333349" Height="21" ControlID="5263373270007817469" Canvas.Left="450.64821797666656" Canvas.Top="43.033333340000013" cm:DataBinding="dsSelectWFID" cm:DataBindingField="WFID" cm:IsEnableItem="False" cm:TabIndex="8" />
                  <cm:tzTextBox Name="txtOrganizationUnit" Width="252.01333333333338" Height="21" ControlID="4797625139975453820" Canvas.Left="450.64821797666661" Canvas.Top="8.5500000000001251" cm:DataBinding="dsLoadInfo" cm:DataBindingField="OrganizationUnit" cm:IsEnableItem="False" cm:TabIndex="3" />
                  <cm:PDatePicker Name="prdRegDate" Width="142" Height="20" ControlID="5150238976164030821" TabIndex="4" Canvas.Left="222.77372315000017" Canvas.Top="9.5500000000001251" cm:DefaultValue="$CurrentDate" cm:IsEnableItem="False" />
                  <cm:TzPersianTime Name="prdRegTime" Width="58" Height="20" ControlID="5209939103483890987" Canvas.Left="163.77372315000048" Canvas.Top="8.5481510416668129" cm:DefaultValue="$CurrentTime" cm:TabIndex="5" />
                  <cm:tzTextBox Name="txtFullName" Width="255.13666667000143" Height="21" ControlID="5329520347459779938" Canvas.Left="1072.9999999999986" Canvas.Top="8.55" cm:DataBinding="dsFollowCode" cm:DataBindingField="FullName" cm:TabIndex="1" />
                  <cm:tzTextBox Name="txtPhoneNumber" Width="174.99999999999989" Height="21" ControlID="5281861071186097962" Canvas.Left="805.65155131" Canvas.Top="46.03333334000007" cm:DataBinding="dsLoadInfo" cm:DataBindingField="telephonenumber" cm:Len="50" cm:TabIndex="7" />
                  <cm:tzTextBox Name="txtServiceLocation" Width="175" Height="21" ControlID="5035903570341991895" Canvas.Left="805.65155131" Canvas.Top="8.5500000000000682" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Servicelocation" cm:IsEnableItem="False" cm:TabIndex="2" />
                  <cm:tzTextBox Name="txtAddress" Width="326.66155130999994" Height="21" ControlID="5761211021147188750" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="46.03333334" cm:IsMulitiLine="True" cm:Len="1000" cm:TabIndex="9" />
                  <cm:tzLabel Name="Lable123" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1039.1479713599988" Canvas.Top="38.549999996666671" cm:ControlID="4960159078730659898" cm:ForeColor="#FFFF0000" />
                  <cm:tzTextBox Name="txtUserName" Width="112" Height="21" ControlID="5183947771732858935" Canvas.Left="13.097852029999899" Canvas.Top="8.5500000000000114" cm:DataBinding="dsFollowCode" cm:DataBindingField="UserName" cm:Event="dsLoadService,dsLoadInfo" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkCompare" Content="chkCompare" Width="51.000000000000227" Height="20" ControlID="4688451764383907719" FontFamily="Tahoma" Canvas.Left="134.09785203" Canvas.Top="9.5500000000000114" cm:DataBinding="dsCompare" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3738" Width="1452" Height="493.44903044333489" Background="#FFF0F0F0" ControlID="4756965879036652248" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="106.48750877" cm:Header="جزپیات درخواست ">
                <Canvas>
                  <cm:tzLabel Name="Lable63" Content=":زیر گروه" ControlID="5409084325907146721" FontFamily="Tahoma" Canvas.Left="1329.3035905699994" Canvas.Top="20.966666666666711" />
                  <cm:tzLabel Name="Lable66" Content=":نوع درخواست" ControlID="4892056181775139283" FontFamily="Tahoma" Canvas.Left="1329.3035905699999" Canvas.Top="109.6211846766667" />
                  <cm:tzLabel Name="Lable81" Content=":عنوان درخواست" ControlID="5112982330083563082" FontFamily="Tahoma" Canvas.Left="1325.0761972933333" Canvas.Top="207.11587111666682" />
                  <cm:tzLabel Name="Lable95" Content=":توضیحات" ControlID="5543135639953743431" FontFamily="Tahoma" Canvas.Left="1329.3035905699999" Canvas.Top="287.00493238000013" />
                  <cm:tzLabel Name="Lable108" Content="" ControlID="5073821595528042038" FontFamily="Tahoma" Canvas.Left="358.99999999999977" Canvas.Top="22.741910966666698" cm:DataBinding="dsReadData" cm:DataBindingField="FieldTitle" />
                  <cm:tzLabel Name="Lable139" Content=":بارگذاری فایل" ControlID="5159019044311639933" FontFamily="Tahoma" Canvas.Left="359.0000000000004" Canvas.Top="194.92297296666683" />
                  <cm:TZFileUpload Name="FileUpload28" Width="234" Height="31" ControlID="5538532305009285066" TabIndex="14" Canvas.Left="116.0000000000004" Canvas.Top="188.4063063000003" />
                  <cm:TZButton Name="Button150" Content="درج مقدار " Width="99" Height="23" Background="#FFB3C8E5" ControlID="5103100971998658403" FontFamily="Tahoma" TabIndex="16" Canvas.Left="7.9999999999997229" Canvas.Top="22.450000000000045" cm:Event="dsUpdateData,dschkIsManagerAvailable" cm:Validations="5664127672082991889,4627802545459455776,4787787231297231280,4869114721595587559,4797432062973963544" />
                  <cm:TZButton Name="Button153" Content="حذف اطلاعات" Width="99" Height="23" Background="#FFB3C8E5" ControlID="4617449582792457511" FontFamily="Tahoma" TabIndex="17" Canvas.Left="8.00000000000017" Canvas.Top="196.40630630000018" cm:Event="dsDelete" />
                  <cm:tzDataGrid Name="gdvItems" Width="600" Height="247.48333333" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5149912097223312151" ItemsSource="{Binding ElementName=dsLoad, Path=DataItems}" Canvas.Left="454.93082333" Canvas.Top="32.52159905" cm:BindingForm="dsLoad" cm:Event="dsSelectItems,dsCompare" cm:EventForAdd="dsCompare" cm:EventForDelete="dsCompare" cm:EventForEdit="dsCompare" cm:KeyField="ServingTableFieldID" cm:RowColorField="AnsweredColor">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableFieldID" DecimalMark="False" HeaderText="ServingTableFieldID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableFieldID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableFieldID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueTitle" DecimalMark="False" HeaderText="مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="FileUploadCertificate" DataTextField="FileUploadCertificate" DecimalMark="False" HeaderText="مدرک" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="FileUploadCertificate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding FileUploadCertificate}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding FileUploadCertificate}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AnsweredColor" DecimalMark="False" IsRowColorField="True" KeyField="False" SortMemberPath="AnsweredColor">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AnsweredColor}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzLookUpComboBox Name="cmbFieldValueID" Width="221" Height="22" ControlID="5554970866147992698" Canvas.Left="117.09785203000006" Canvas.Top="23.449999999999989" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetValue" cm:TabIndex="13" cm:tzDisplayItem="FieldValueTitle" cm:tzValueItem="FieldValueID" />
                  <cm:tzLookUpComboBox Name="cmbSubGroup" Width="249.08333333" Height="22" ControlID="4838564445226209905" Canvas.Left="1071.22025724" Canvas.Top="23.45" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:TabIndex="10" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbRequestKind" Width="249.08333333" Height="22" ControlID="4647773901884335145" Canvas.Left="1071.22025724" Canvas.Top="112.10451800999999" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dschkIsManagerAvailable" cm:TabIndex="11" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="1071.22025724" Canvas.Top="110.93333333000004" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="249.08333333" Height="22" ControlID="5266482798981468614" Canvas.Left="1071.22025724" Canvas.Top="209.59920445" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsEnableBtn,dsUserCanInsert,dsCheckRequestSubject,dschkIsManagerAvailable" cm:TabIndex="12" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="1071.22025724" Canvas.Top="206.59920445000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1071.22025724" Canvas.Top="20.449999999999989" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM138" />
                  <cm:TZButton Name="Button102" Content="نمایش فیلد" Width="99" Height="23" Background="#FFB3C8E5" FontFamily="Tahoma" TabIndex="16" Canvas.Left="1071.2202572400001" Canvas.Top="247.93333332999993" cm:ControlID="5616877507763691571" cm:Event="dsInsertData" />
                  <cm:tzTextBox Name="txtValue" Width="220.99999999999989" Height="27" ControlID="5662217081009761575" Canvas.Left="117.09785203000034" Canvas.Top="21.933333333333504" cm:Event="dsCheckValidate" cm:Len="1000" />
                  <cm:tzDataSource Name="dsMandatoryData" Content="dsMandatoryData" Width="100.28943391000053" Height="25" ControlID="5540375087530757889" Canvas.Left="470.93082333" Canvas.Top="101.93333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkMandatoryNotSelectInfo" Content="chkMandatoryNotSelectInfo" Width="120" Height="20" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="135.93333333000032" cm:ControlID="5220620902125066610" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryNotSelectInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsEnableItem="False" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5662217081009761575#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkMandatorySelectInfo" Content="chkMandatorySelectInfo" Width="120" Height="20" ControlID="5666353536888725103" FontFamily="Tahoma" Canvas.Left="577.30667699000014" Canvas.Top="106.93333333000004" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatorySelectInfo" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsEnableItem="False" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5554970866147992698#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkNeedCertificate" Content="chkNeedCertificate" Width="120" Height="20" ControlID="5443758597500893918" FontFamily="Tahoma" Canvas.Left="714.69625542999961" Canvas.Top="106.93333333000004" cm:DataBinding="dsMandatoryData" cm:DataBindingField="IsNeedCertificate" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5538532305009285066#" cm:TMCol="5538532305009285066#" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGetValue" Content="dsGetValue" Width="110" Height="25" ControlID="5369238171599239062" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="851.33333333" Canvas.Top="135.93333333000027" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckValidate" Content="dsCheckValidate" Width="99.000000000000114" Height="25" ControlID="4772282357938744593" Canvas.Left="472.22025724000042" Canvas.Top="59.93333333000016" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbFieldValueID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtValue" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" " IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PdDate" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="CheckBox37" Content="TZCheckBox" Width="120" Height="20" ControlID="5343950136022904724" Canvas.Left="714.69625542999961" Canvas.Top="135.93333333000032" cm:DataBinding="dsMandatoryData" cm:DataBindingField="SelectInfo" cm:FCVCol="5554970866147992698#" cm:FECol="" cm:FMCol="" cm:FVCol="5662217081009761575#" cm:IsVisibleItem="False" cm:TCVCol="5662217081009761575#" cm:TECol="" cm:TMCol="" cm:TVCol="5554970866147992698#" />
                  <cm:tzTextBox Name="txtDataRes" Width="93.058631919999868" Height="21" ControlID="5626556152912671128" Canvas.Left="604.2480450700001" Canvas.Top="241.93333333000021" cm:DataBinding="dsUpdateData" cm:DataBindingField="Res" cm:Event="dsLoad,dsCompare,dsMakeEmptry" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtDeleteRes" Width="110" Height="21" ControlID="4669232414997773258" Canvas.Left="1210.3035905699999" Canvas.Top="318.48826571000018" cm:DataBinding="dsDelete" cm:DataBindingField="Res" cm:Event="dsLoad" cm:IsVisibleItem="False" />
                  <cm:tzLabel Name="Lable125" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1382.4202572366655" Canvas.Top="16.449999996666648" cm:ControlID="5445026493927620187" cm:ForeColor="#FFFF0000" />
                  <cm:tzLabel Name="Lable1225" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1407.3302572366667" Canvas.Top="93.373627676666786" cm:ControlID="4620758417852751912" cm:ForeColor="#FFFF0000" />
                  <cm:tzLabel Name="Lable126" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1415.45" Canvas.Top="207.11587111666671" cm:ControlID="5475883871613132721" cm:ForeColor="#FFFF0000" />
                  <cm:tzDataSource Name="dsCheckRequestSubject" Content="dsCheckRequestSubject" Width="100.2894339099999" Height="25" ControlID="4686304685539765447" Canvas.Left="476.01724308000018" Canvas.Top="169.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckValidate_RequestSubject_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @GUID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKind}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @cmbRequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkRequestSubject" Content="chkRequestSubject" Width="120" Height="20" ControlID="4844487118598404545" FontFamily="Tahoma" Canvas.Left="859.61330613999939" Canvas.Top="106.93333333000004" cm:DataBinding="dsCheckRequestSubject" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsMakeEmptry" Content="dsMakeEmptry" Width="110" Height="25" ControlID="4881392250038900796" Canvas.Left="851.33333333" Canvas.Top="237.93333333000015" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:tzDataSource Name="dsLoadService" Content="dsLoadService" Width="103.37585366000012" Height="25" ControlID="4974277814964022057" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="472.93082332999995" Canvas.Top="237.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="" cm:RunQueryMode="Text" cm:tzSelectQuery="">
                    <cm:tzDataSource.ServiceValue>
                      <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="userName" ArgumentType="System.String" ComponentName="txtUserName" IsDefault="True" MethodName="GetActiveDirectoryUserData" Value="5183947771732858935" WebAddress="SamanCRMServices" />
                      <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="GUID" ArgumentType="System.String" ComponentName="txtGUIDD" IsDefault="True" MethodName="GetActiveDirectoryUserData" Value="4995533338641167379" WebAddress="SamanCRMServices" />
                    </cm:tzDataSource.ServiceValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsLink" Content="dsLink" Width="110" Height="25" ControlID="5085105881132199709" Canvas.Left="851.33333333" Canvas.Top="203.93333333000004" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WebServerAddress)" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @WebServerAddress" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckWorkflowStatus" Content="dsCheckWorkflowStatus" Width="100.28943391000053" Height="25" ControlID="5122826346641792319" Canvas.Left="476.0172430799995" Canvas.Top="203.9333333300001" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_CheckWorkflowStatus_Frm31240">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkUserIsBranch" Content="chkUserIsBranch" Width="120" Height="20" ControlID="5464357723432469235" FontFamily="Tahoma" Canvas.Left="714.69625542999961" Canvas.Top="64.93333333000021" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UserIsBranch" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="110" Height="25" ControlID="5760404647498399665" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="851.33333333" Canvas.Top="164.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @UserName" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @GUIDD" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtServiceResult" Width="51" Height="21" ControlID="4938308427061897607" Canvas.Left="977.15274463" Canvas.Top="44.18089033" cm:DataBinding="dsLoadService" cm:DataBindingField="Result" cm:Event="dsLoadInfo" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtUserID" Width="51.000000000000227" Height="21" ControlID="5758762721732505115" Canvas.Left="977.15274463" Canvas.Top="91.93333333" cm:DataType="BigInt" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtRequestDesc" Width="1301.84440358" Height="179.96076473000156" ControlID="5206491520355753398" Canvas.Left="26.45918699" Canvas.Top="284.00493238" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="15" />
                  <cm:PDatePicker Name="pdDate" Width="270.16162532" Height="26.999999996666745" ControlID="5371746024198239615" Canvas.Left="117.07396283000027" Canvas.Top="21.933333336666816" cm:Event="dsCheckValidate" />
                  <cm:tzDataSource Name="dsReadData" Content="dsReadData" Width="110" Height="25" ControlID="4823486510891932452" Canvas.Left="13.68277825999985" Canvas.Top="286.48826571333342" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadData_ServingTableField">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ItemID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="TextBox189" Width="120" Height="21" ControlID="5568970676742359854" Canvas.Left="135.94136807999988" Canvas.Top="284.00493238000018" cm:DataBinding="dsReadData" cm:DataBindingField="FieldTitle" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsVisibleItem" Content="dsVisibleItem" Width="110.00000000000016" Height="25" ControlID="5017690624055140686" Canvas.Left="13.68277825999985" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_VisibleItemType {@txtItemID}" />
                  <cm:TZCheckBox Name="CheckBox203" Content="chbVisibleItem" Width="65.819411300000638" Height="20" ControlID="5447522547560323991" FontFamily="Tahoma" Canvas.Left="135.9413680799999" Canvas.Top="325.48826571" cm:DataBinding="dsVisibleItem" cm:DataBindingField="flag" cm:FCVCol="5371746024198239615#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5371746024198239615#" />
                  <cm:tzDataSource Name="dsLoad" Content="dsLoad" Width="110" Height="25" ControlID="5110670696080708548" Canvas.Left="277.23558815000035" Canvas.Top="280.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" />
                  <cm:tzDataSource Name="dsUpdateData" Content="dsUpdateData" Width="110" Height="25" ControlID="4730083060785538985" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="277.23558815000018" Canvas.Top="320.48826571000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Update_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ItemID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@FileUpload28}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FileUploadCertificate" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtValue}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FieldValueTitle" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbFieldValueID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @FieldValueID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FieldValueDate" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMultipleValues}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @txtMultipleValues" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsInsertData" Content="dsInsertData" Width="110" Height="25" ControlID="4877631570857336077" Canvas.Left="413.84440357999961" Canvas.Top="280.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUIDID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtInsertRes" Width="35" Height="21" ControlID="5591840014643513848" Canvas.Left="532.84440357999961" Canvas.Top="281.00493238000024" cm:DataBinding="dsInsertData" cm:DataBindingField="Res" cm:Event="dsLoad,dsCheckRequestSubject" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectItems" Content="dsSelectItems" Width="110" Height="25" ControlID="5036453969450944063" Canvas.Left="413.84440357999961" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@gdvItems} AS ItemID" />
                  <cm:tzTextBox Name="txtItemID" Width="34.999999999999659" Height="21" ControlID="5243519420555067860" Canvas.Left="532.84440358" Canvas.Top="324.48826571" cm:DataBinding="dsSelectItems" cm:DataBindingField="ItemID" cm:DataType="BigInt" cm:Event="dsReadData,dsMandatoryData,dsGetValue,dsDisableFileUpload,dsVisibleItem" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableBtn" Content="dsEnableBtn" Width="110" Height="25" ControlID="5662589489734807052" Canvas.Left="587.30667699000014" Canvas.Top="277.00493238000018" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" />
                  <cm:tzDataSource Name="dsFollowCode" Content="dsFollowCode" Width="109.99999999999966" Height="25" ControlID="4793853652190513490" Canvas.Left="587.30667699000037" Canvas.Top="320.48826571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetFollowCode_NewUserDefinition">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FollowUpCode" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnableBtn" Content="chkEnableBtn" Width="102.6964094299999" Height="20" ControlID="5132155074427207127" FontFamily="Tahoma" Canvas.Left="706.30667698999991" Canvas.Top="282.0049323800003" cm:DataBinding="dsEnableBtn" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5616877507763691571#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGUIDD" Content="dsGUIDD" Width="110" Height="25" ControlID="5170551075891586804" Canvas.Left="851.33333333" Canvas.Top="277.0049323800003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_GetNewGUID">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtGUID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtGUIDD" Width="51.000000000000227" Height="21" ControlID="4995533338641167379" Canvas.Left="977.15274463000014" Canvas.Top="278.00493238000024" cm:DataBinding="dsGUIDD" cm:DataBindingField="Column1" cm:Event="dsGUIDD,dsLoad,dsCompare,dsLoadService,dsCheckRequestSubject" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCompare" Content="dsCompare" Width="110" Height="25" ControlID="4796377435123176147" Canvas.Left="851.33333333" Canvas.Top="317.48826571000012" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @GUIDD" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="110" Height="25" ControlID="5462419856774520597" Canvas.Left="1071.22025724" Canvas.Top="291.48826571000029" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_delete_Tbl_Cu_ServingTableField_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtItemID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ItemID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtOUID" Width="120" Height="21" ControlID="5474736857145248079" Canvas.Left="1193.22025724" Canvas.Top="241.93333333000021" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UnitID" cm:Event="dsUserCanInsert" cm:IsEnableItem="False" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkValidate" Content="chkValidate" Width="120" Height="20" ControlID="4697873506575570740" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="64.933333330000153" cm:DataBinding="dsCheckValidate" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectWFID" Content="dsSelectWFID" Width="110" Height="25" ControlID="5667847526345547012" Canvas.Left="1071.22025724" Canvas.Top="325.48826571000023" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT (@WorkflowInstanceID) AS WFID" />
                  <cm:TZCheckBox Name="chkMandatoryNotSelectInfoDate" Content="chkMandatoryNotSelectInfoDate" Width="120" Height="20" ControlID="5115924373474858497" FontFamily="Tahoma" Canvas.Left="577.30667699" Canvas.Top="169.93333333000021" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryNotSelectInfoDate" cm:IsVisibleItem="False" />
                  <cm:TZCheckListBox Name="chklMultipleValues" Width="227.99999999999983" Height="138" ControlID="5466932434815057100" Canvas.Left="110.09785203000023" Canvas.Top="56.933333330000266" cm:DataBinding="dsGetValue" cm:Event="dsSelectchklMultipleValues" cm:tzDisplayItem="FieldValueTitle" cm:tzValueItem="FieldValueID" />
                  <cm:tzDataSource Name="dsSelectchklMultipleValues" Content="dsSelectchklMultipleValues" Width="110" Height="25" ControlID="5459657173581711636" Canvas.Left="13.682778259999889" Canvas.Top="350.48826570999995" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@chklMultipleValues} AS chklMultipleValues" />
                  <cm:tzTextBox Name="txtMultipleValues" Width="109.99999999999938" Height="21" ControlID="5760154045432193711" Canvas.Left="135.94136807999985" Canvas.Top="354.48826571000006" cm:DataBinding="dsSelectchklMultipleValues" cm:DataBindingField="chklMultipleValues" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkMultipleValues" Content="chkMultipleValues" Width="120" Height="20" ControlID="5659335003033723732" Canvas.Left="714.69625542999938" Canvas.Top="169.93333333000015" cm:DataBinding="dsMandatoryData" cm:DataBindingField="rbnMultipleValues" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5466932434815057100#" />
                  <cm:TZCheckBox Name="chkMultipleValuesMandatory" Content="chkMultipleValuesMandatory" Width="120" Height="20" Canvas.Left="714.69625542999938" Canvas.Top="202.20493827000018" cm:ControlID="5168659056268343420" cm:DataBinding="dsMandatoryData" cm:DataBindingField="MandatoryrbnMultipleValues" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5760154045432193711#" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkCheckWorkflowStatus" Content="chkCheckWorkflowStatus" Width="120" Height="20" ControlID="5036804729879951345" FontFamily="Tahoma" Canvas.Left="585.69625542999938" Canvas.Top="202.20493827000018" cm:DataBinding="dsCheckWorkflowStatus" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4756965879036652248#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dschkIsManagerAvailable" Content="dschkIsManagerAvailable" Width="51" Height="25" ControlID="5632608860963331703" Canvas.Left="19.06549431000002" Canvas.Top="59.93333333000021" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_IsFieldManagerAvailable">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGUIDD}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @guidd" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkIsManagerAvailable" Content="TZCheckBox" Width="51.000000000000028" Height="20" ControlID="5314528432430841199" Canvas.Left="19.06549431" Canvas.Top="92.93333333" cm:DataBinding="dschkIsManagerAvailable" cm:DataBindingField="FieldManagerNotAvailable" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3839" Width="729" Height="164.9999999966667" Background="#FF8FB5A8" ControlID="5739827505747496310" FontFamily="Tahoma" Canvas.Left="6.6992840100001523" Canvas.Top="606.5832585333344" cm:Header="ارجاع گیرنده">
                <Canvas>
                  <cm:tzLabel Name="Lable170" Content=":تعیین وضعیت " Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="622.057956996666" Canvas.Top="13.966666676666364" cm:ControlID="5449393554084875660" />
                  <cm:TZRadioButton Name="rbnAccReference" Content="تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="2" Canvas.Left="573.73462366333229" Canvas.Top="19.247136049999995" cm:ControlID="5218958864821998426" cm:DefaultValue="" cm:TabIndex="22" />
                  <cm:TZRadioButton Name="rbnNotAccReference" Content="عدم تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="2" Canvas.Left="462.46192726999845" Canvas.Top="19.247136049999995" cm:ControlID="5093058697085053446" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="23" cm:TCVCol="" cm:TECol="" cm:TMCol="5704711095539514666#" cm:TVCol="" />
                  <cm:tzLabel Name="Lable173" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="622.76129032999893" Canvas.Top="47.450000009999712" cm:ControlID="4910134374771670285" />
                  <cm:tzTextBox Name="txtDescReference" Width="605.7612903299987" Height="80.06666666" Canvas.Left="8" Canvas.Top="47.45000001" cm:ControlID="5704711095539514666" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="24" />
                  <cm:tzDataSource Name="DataSource187" Content="dsGetUserDataFirst" Width="110" Height="25" Canvas.Left="8" Canvas.Top="60.783651813333059" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5367634685351392367" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Second">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetUserDataSecond" Content="dsGetUserDataSecond" Width="110" Height="25" ControlID="4937725416156234603" Canvas.Left="8" Canvas.Top="94.783651813333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Third">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserIDSecond" Width="110" Height="21" Canvas.Left="121.15923567000004" Canvas.Top="96.035987250000034" cm:ControlID="5639913882214238562" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:PDatePicker Name="prdRegDateSecond" Width="120" Height="20" Canvas.Left="246.08376396999893" Canvas.Top="97.035987250000147" cm:ControlID="5217129348169415114" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeSecond" Width="120" Height="20" Canvas.Left="380.22929936000014" Canvas.Top="99.783651813332881" cm:ControlID="4763977174989292395" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtActivityIDSecond" Width="120" Height="21" Canvas.Left="380.22929936000025" Canvas.Top="69.783651813333" cm:ControlID="4843974103575279809" cm:DataBinding="dsGetUserDataSecond" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkUserCanInsert" Content="chkUserCanInsert" Width="120" Height="20" ControlID="5516976854451683700" FontFamily="Tahoma" Canvas.Left="286.09807556999988" Canvas.Top="8" cm:DataBinding="dsUserCanInsert" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsUserCanInsert" Content="dsUserCanInsert" Width="110" Height="25" ControlID="5200068161426511415" Canvas.Left="7.9999999999998295" Canvas.Top="13.45000000999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtOUID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OUID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox3940" Width="714" Height="165" Background="#FFE0CCA1" BorderBrush="#FFB3CECC" ControlID="5534482759343499973" FontFamily="Tahoma" Canvas.Left="744.69928401000061" Canvas.Top="606.58325853000088" cm:Header="تایید کننده">
                <Canvas>
                  <cm:tzLabel Name="Lable154" Content=":تعیین وضعیت " ControlID="5599005784957224369" FontFamily="Tahoma" Canvas.Left="596.92452829999979" Canvas.Top="13.483333326666639" />
                  <cm:TZRadioButton Name="rbnAccSeconder" Content="تایید" ControlID="5433095950633073955" FontFamily="Tahoma" GroupName="1" Canvas.Left="547.89786163333338" Canvas.Top="16.000000000000114" cm:DefaultValue="" cm:TabIndex="16" />
                  <cm:TZRadioButton Name="rbnNotAccSeconder" Content="عدم تایید" ControlID="5558469775321616550" FontFamily="Tahoma" GroupName="1" Canvas.Left="451.94682128999989" Canvas.Top="16.000000000000114" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="17" cm:TCVCol="" cm:TECol="" cm:TMCol="5181720467505861532#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnReferencerbnAccSeconder" Content="ارجاع" ControlID="4684667365755274354" FontFamily="Tahoma" GroupName="1" Canvas.Left="358.421194966666" Canvas.Top="16.000000000000114" cm:FCVCol="4859239441948670019#5265233019818142125#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="18" cm:TCVCol="" cm:TECol="5417635295906277410#5265233019818142125#" cm:TMCol="4859239441948670019#5181720467505861532#" cm:TVCol="" />
                  <cm:tzLabel Name="Lable158" Content=":ارجاع گیرنده" ControlID="5235879747687840580" FontFamily="Tahoma" Canvas.Left="261.92452829999934" Canvas.Top="13.483333326666639" />
                  <cm:tzLabel Name="Lable168" Content=":توضیحات" ControlID="4814503470032419286" FontFamily="Tahoma" Canvas.Left="596.92452829999934" Canvas.Top="46.966666659999873" />
                  <cm:tzTextBox Name="TextBox285" Width="217.9245283" Height="21" ControlID="4859239441948670019" Canvas.Left="8" Canvas.Top="16.96666666" cm:DataBinding="dsSelectUserRefrenceSec" cm:DataBindingField="FullName" cm:IsEnableItem="False" cm:TabIndex="20" />
                  <cm:tzTextBox Name="txtReferenceUserSeconder" Width="120" Height="21" ControlID="5265233019818142125" Canvas.Left="11.924528299998659" Canvas.Top="-5.033333339999901" cm:DataBinding="dsSelectUserRefrenceSec" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUser" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectUserRefrenceSec" Content="dsSelectUserRefrenceSec" Width="110" Height="25" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="8.0000000000000053" Canvas.Top="12.966666659999987" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4617427278350659249" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp159}" IsOutputParameter="False" ParameterType="int" SpParamName=" @LookUp159" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtDescSeconder" Width="579.9245283" Height="90.484281393333163" ControlID="5181720467505861532" Canvas.Left="7.9999999999995417" Canvas.Top="41.899999988333306" cm:IsMulitiLine="True" cm:IsVisibleItem="True" cm:Len="2000" cm:TabIndex="21" />
                  <cm:tzDataSource Name="dsGetUserDataFirst" Content="dsGetUserDataFirst" Width="110" Height="25" ControlID="4655762560683332289" Canvas.Left="8" Canvas.Top="103.38243242333323" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Second">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TzPersianTime Name="prdRegTimeFirst" Width="120" Height="20" ControlID="4839123484665695911" Canvas.Left="132.92452829999891" Canvas.Top="103.38243242333317" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtUserIDfirst" Width="110" Height="21" ControlID="4882272451934286700" Canvas.Left="285.47682128999986" Canvas.Top="103.38428138166648" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUser" cm:IsVisibleItem="False" />
                  <cm:PDatePicker Name="prdRegDateFirst" Width="120" Height="20" ControlID="4866237595884546157" Canvas.Left="404.47682128999986" Canvas.Top="104.38428138166648" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox186" Content="TZCheckBox" Width="120" Height="20" ControlID="5286295664072768338" Canvas.Left="132.92452829999888" Canvas.Top="82.384281381666483" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4839123484665695911#4763977174989292395#5729362453248064269#4665967948789191520#" />
                  <cm:tzTextBox Name="txtActivityIDFirst" Width="120" Height="21" ControlID="5626482120269590337" Canvas.Left="404.47682129000009" Canvas.Top="74.384281381666369" cm:DataBinding="dsGetUserDataFirst" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCheckRefrenceUser" Content="dsCheckRefrenceUser" Width="110" Height="25" ControlID="4983588032057303957" Canvas.Left="7.9999999999998863" Canvas.Top="48.384281381666369" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" />
                  <cm:TZCheckBox Name="chkCheckRefrenceUser" Content="chkCheckRefrenceUser" Width="120" Height="20" ControlID="4875558306346267617" FontFamily="Tahoma" Canvas.Left="132.92452829999877" Canvas.Top="53.384281381666369" cm:DataBinding="dsCheckRefrenceUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsAkhzTaidie" Content="dsAkhzTaidie" Width="110" Height="25" ControlID="5477569500181547439" Canvas.Left="285.47682128999963" Canvas.Top="46.449999993333215" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" />
                  <cm:TZCheckBox Name="chkAkhzTaidie" Content="chkAkhzTaidie" Width="120" Height="20" ControlID="4872620607267697235" FontFamily="Tahoma" Canvas.Left="404.47682128999986" Canvas.Top="51.4499999933331" cm:DataBinding="dsAkhzTaidie" cm:DataBindingField="Res" cm:Event="dsCheckExists" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5491265726550782421#5538917384814042880#" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5378483359704304450#" cm:TMCol="" cm:TVCol="5162934944876769201#5378483359704304450#" />
                  <cm:tzDataSource Name="dsCheckExists" Content="dsCheckExists" Width="110" Height="25" ControlID="4702876376026890291" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="285.47682128999963" Canvas.Top="77.384281381666483" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkAkhzTaidie}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @rbnReferencerbnAccSeconder" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExistsRefrence" Content="chkCheckExistsRefrence" Width="120" Height="20" ControlID="5322494452124026796" FontFamily="Tahoma" Canvas.Left="404.47682129000009" Canvas.Top="72.449999993333051" cm:DataBinding="dsCheckExists" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:TZLookUp Name="LookUp159" Width="26" ControlID="5417635295906277410" TabIndex="19" Canvas.Left="226.9245283" Canvas.Top="17.89999999" cm:Event="dsSelectUserRefrenceSec">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="57" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox40" Width="714" Height="209.9999999933334" Background="#FFD2BEDD" ControlID="4717567623316608016" FontFamily="Tahoma" Canvas.Left="744.69928401" Canvas.Top="778.03333334" cm:Header="اقدام کننده">
                <Canvas>
                  <cm:tzLabel Name="Lable186" Content=":انتخاب وضعیت" ControlID="5258236830362879225" FontFamily="Tahoma" Canvas.Left="596.440006847642" Canvas.Top="6.4652438966669745" />
                  <cm:tzLookUpComboBox Name="cmbStatusActing" Width="187" Height="22" ControlID="4881570594048707352" Canvas.Left="403.6981132100002" Canvas.Top="8.9485772300000956" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsAnswerActing" cm:TabIndex="25" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
                  <cm:TZCheckBox Name="chkReferenceActing" Content="ارجاع جهت" ControlID="5150378410502021558" FontFamily="Tahoma" Canvas.Left="606.2016931600001" Canvas.Top="50.351659955515288" cm:Event="dsAnswerActing" cm:FCVCol="4936620095668202831#5491265726550782421#5506921329922687913#5538917384814042880#" cm:FECol="4881570594048707352#" cm:FMCol="4881570594048707352#" cm:FVCol="" cm:TabIndex="28" cm:TCVCol="4881570594048707352#" cm:TECol="4936620095668202831#5506921329922687913#5538917384814042880#" cm:TMCol="4936620095668202831#4888789270628417469#5491265726550782421#5506921329922687913#" cm:TVCol="" />
                  <cm:tzLookUpComboBox Name="cmbReferenceActing" Width="187" Height="22" ControlID="4936620095668202831" Canvas.Left="403.69811321" Canvas.Top="44.55501192" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsReadActingRef" cm:DataType="Int" cm:Event="dsAkhzTaidie" cm:TabIndex="29" cm:tzDisplayItem="ReferenceActingTitle" cm:tzValueItem="ReferenceActingID" />
                  <cm:tzLabel Name="Lable191" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368368" Canvas.Top="124.03333332666685" cm:ControlID="5255976098231582745" />
                  <cm:tzTextBox Name="txtDescActing" Width="582.69811321" Height="63.96165474" Canvas.Left="2.3355704700000235" Canvas.Top="116.55501192000006" cm:ControlID="4888789270628417469" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="32" />
                  <cm:tzLabel Name="Lable236" Content=":ارجاع گیرنده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="258.58932040999969" Canvas.Top="40.966666656666817" cm:ControlID="5743778383319236862" />
                  <cm:tzTextBox Name="TextBox81" Width="199.66553991999956" Height="21" ControlID="5491265726550782421" Canvas.Left="8" Canvas.Top="44.44999999" cm:DataBinding="dsSelectUserRefrence" cm:DataBindingField="FullName" cm:IsEnableItem="False" cm:TabIndex="31" />
                  <cm:PDatePicker Name="prdDateActing" Width="164.64243845" Height="20" ControlID="4973100433102665678" TabIndex="26" Canvas.Left="90.8070970099997" Canvas.Top="10.948577230000979" cm:DataBinding="dsSelectCurrentDate" cm:DataBindingField="CurrentDate" cm:Event="dsCheckPeymankarDate" cm:IsEnableItem="True" />
                  <cm:TzPersianTime Name="prdTimeActing" Width="48.89800704" Height="20" ControlID="4804226963426195138" Canvas.Left="8" Canvas.Top="10.948577230000664" cm:DataBinding="dsSelectCurrentDate" cm:DataBindingField="CurrentTime" cm:Event="dsCheckPeymankarDate" cm:TabIndex="27" />
                  <cm:tzLabel Name="Lable8182" Content=":تاریخ و ساعت شروع مجدد" ControlID="5627792231250737219" FontFamily="Tahoma" Canvas.Left="233.66553991999945" Canvas.Top="6.4652438966673156" />
                  <cm:tzTextBox Name="txtReferenceUserActing" Width="120" Height="21" Canvas.Left="8" Canvas.Top="75.55501191999997" cm:ControlID="5506921329922687913" cm:DataBinding="dsSelectUserRefrence" cm:DataBindingField="UserId" cm:DataType="BigInt" cm:Event="dsCheckRefrenceUserSec" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="91.999999999999773" Height="25" ControlID="5202716452179788894" Canvas.Left="421.6981132100002" Canvas.Top="5.94857723" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" />
                  <cm:tzDataSource Name="dsReadActingRef" Content="dsReadActingRef" Width="92" Height="25" ControlID="5114061319767955735" Canvas.Left="421.69811321" Canvas.Top="40.44999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" />
                  <cm:tzDataSource Name="dsSelectUserRefrence" Content="dsSelectUserRefrence" Width="110" Height="25" ControlID="5233856275930939671" Canvas.Left="317.162206586666" Canvas.Top="108.51666665999983" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" />
                  <cm:tzDataSource Name="dsGetUserDataThird" Content="dsGetUserDataThird" Width="110" Height="25" ControlID="5729304498189769267" Canvas.Left="10.589320409999569" Canvas.Top="129.51666666000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:PDatePicker Name="prdRegDateThird" Width="74" Height="20" Canvas.Left="471.69811321" Canvas.Top="160.51666666000017" cm:ControlID="5255399125036515846" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeThird" Width="120" Height="20" Canvas.Left="141.06887325333264" Canvas.Top="160.51666666000017" cm:ControlID="5729362453248064269" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="TextBox199" Width="120" Height="21" Canvas.Left="-726.11666667" Canvas.Top="44.449999990000038" cm:ControlID="5581141407921292751" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtUserIDThird" Width="33" Height="21" ControlID="4786962185969475179" Canvas.Left="660.99999999999989" Canvas.Top="107.51666665999994" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtActivityIDThird" Width="109.99999999999989" Height="21" Canvas.Left="270.06887325333275" Canvas.Top="155.51666666000017" cm:ControlID="5347612118525905609" cm:DataBinding="dsGetUserDataThird" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableDate" Content="dsEnableDate" Width="110" Height="25" ControlID="5466927095367674240" Canvas.Left="317.162206586666" Canvas.Top="129.51666665999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_EnableDate_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnableDate" Content="chkEnableDate" Width="120" Height="20" ControlID="5192361472626038383" FontFamily="Tahoma" Canvas.Left="473.0336836799998" Canvas.Top="113.51666665999983" cm:DataBinding="dsEnableDate" cm:DataBindingField="Res" cm:Event="dsCheckPeymankarDate,dsEnableLabel,dsEnableLabel2" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="4973100433102665678#4804226963426195138#" cm:TVCol="4973100433102665678#4804226963426195138#5627792231250737219#" />
                  <cm:tzDataSource Name="dsAnswerActing" Content="dsAnswerActing" Width="59" Height="25" ControlID="4689550366720017222" Canvas.Left="651.69811321000009" Canvas.Top="129.51666666000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckAnswerActing_Frm243">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbStatusActing}" IsOutputParameter="False" ParameterType="int" SpParamName="  @Acting" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@chkReferenceActing}" IsOutputParameter="False" ParameterType="bit" SpParamName="  @chkReferenceActing" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkAnswerActing" Content="chkAnswerActing" Width="59" Height="20" ControlID="4655348426068110759" FontFamily="Tahoma" Canvas.Left="471.69811321000009" Canvas.Top="134.51666665999994" cm:DataBinding="dsAnswerActing" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkCheckRefrenceUserSec" Content="chkCheckRefrenceUserSec" Width="120" Height="20" FontFamily="Tahoma" Canvas.Left="8.5893204099997877" Canvas.Top="160.51666666000017" cm:ControlID="4795065758229322170" cm:DataBinding="dsCheckRefrenceUserSec" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsCheckPeymankarDate" Content="dsCheckPeymankarDate" Width="68" Height="25" ControlID="5046816167316824995" Canvas.Left="642.69811321000009" Canvas.Top="83.0383452533333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckPeymankarDate">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@prdDateActing}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @prdDateActing" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@prdTimeActing}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @prdTimeActing" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@chkEnableDate}" IsOutputParameter="False" ParameterType="bit" SpParamName="  @ChkEnable" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkValidatePeymankarDate" Content="chkValidatePeymankarDate." Width="120" Height="20" ControlID="5094607077792705164" FontFamily="Tahoma" Canvas.Left="129.5893204099998" Canvas.Top="71.516666659999828" cm:DataBinding="dsCheckPeymankarDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox175" Content="TZCheckBox" Width="37" Height="20" ControlID="5497800083366103290" Canvas.Left="383.69811321000009" Canvas.Top="82.516666659999942" cm:DataBinding="dsEnableLabel" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5627792231250737219#" />
                  <cm:tzLabel Name="Lable176" Content=":تاریخ و ساعت پاسخ پیمانکار" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="233.66553991999945" Canvas.Top="6.4652438966673156" cm:ControlID="5529075832015717328" />
                  <cm:tzDataSource Name="dsEnableLabel2" Content="dsEnableLabel2" Width="110" Height="25" Canvas.Left="8" Canvas.Top="95.516666660000169" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5273195586687856254" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:tzTextBox Name="txtLastStatusActing" Width="70.5366666633339" Height="21" ControlID="5485778130039395725" Canvas.Left="317.16220658666612" Canvas.Top="44.44999999" cm:DataBinding="dsEnableDate" cm:DataBindingField="StatusActing" cm:DataType="Int" cm:Event="dsEnableLabel2,dsEnableLabel" cm:IsVisibleItem="False" />
                  <cm:TZButton Name="Button196" Content="بازیابی تاریخ" Width="99.966316320000033" Height="23" ControlID="4714239607266895731" Canvas.Left="594.03368368" Canvas.Top="157.51666666000008" cm:Event="dsSelectCurrentDate" />
                  <cm:tzDataSource Name="dsSelectCurrentDate" Content="dsSelectCurrentDate" Width="110" Height="25" ControlID="5233624649659262730" Canvas.Left="317.162206586666" Canvas.Top="155.51666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" />
                  <cm:tzLabel Name="Lable284" Content=":شماره پیغام" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368368" Canvas.Top="75.55501191999997" cm:ControlID="5367350527803376629" />
                  <cm:tzTextBox Name="txtMessageNumber" Width="181.33557047000005" Height="21" ControlID="4826610513644201043" Canvas.Left="403.69811321" Canvas.Top="79.03834525" cm:DataType="NVarChar" cm:Len="50" />
                  <cm:tzLabel Name="Lable194" Content="درخواست/" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="594.03368367999985" Canvas.Top="91.071678586666749" cm:ControlID="5663799651477528301" />
                  <cm:tzDataSource Name="dsSelectUserRefrenceNew" Content="dsSelectUserRefrenceNew" Width="110" Height="25" FontWeight="Bold" Foreground="#FFFF0000" Canvas.Left="139.58932040999991" Canvas.Top="129.51666665999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5401325953310335326" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" />
                  <cm:tzTextBox Name="TextBox213" Width="199.66553991999945" Height="21" Canvas.Left="7.9999999999999982" Canvas.Top="44.449999990000208" cm:ControlID="5162934944876769201" cm:DataBinding="dsSelectUserRefrenceNew" cm:DataBindingField="FullName" cm:Event="dsCheckExists" cm:IsEnableItem="False" cm:TabIndex="31" />
                  <cm:TZCheckBox Name="CheckBox178" Content="TZCheckBox" Width="120" Height="20" ControlID="5716290874951705075" Canvas.Left="267.69887324999991" Canvas.Top="82.516666659999942" cm:DataBinding="dsEnableLabel2" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5529075832015717328#" />
                  <cm:TZLookUp Name="LookUp237" Width="24" Height="NaN" TabIndex="30" Canvas.Left="208.66553991999967" Canvas.Top="42.449999990000038" cm:ControlID="5538917384814042880" cm:Event="dsSelectUserRefrence">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="57" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:TZLookUp Name="LookUp212" Width="24" Height="NaN" TabIndex="30" Canvas.Left="216.66553991999967" Canvas.Top="42.449999990000038" cm:ControlID="5378483359704304450" cm:Event="dsSelectUserRefrenceNew,dsCheckExists">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="5263373270007817469$WFID,4995533338641167379$GUID," DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="31306" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzDataSource Name="dsCheckRefrenceUserSec" Content="dsCheckRefrenceUserSec" Width="110" Height="25" Canvas.Left="159.06887325333275" Canvas.Top="108.51666665999983" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4646773501795498378" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:TzGroupBox Name="GroupBox90" Width="729" Height="215.45007480333334" Background="#FFE098BE" ControlID="5311852255544786792" FontFamily="Tahoma" Canvas.Left="6.69928401" Canvas.Top="772.58325853" cm:Header="نتیجه اقدامات">
                <Canvas>
                  <cm:tzLabel Name="Lable80" Content=":نتیجه " Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="623.5419354799991" Canvas.Top="9.11021505666713" cm:ControlID="4681241468063451828" />
                  <cm:tzLabel Name="Lable86" Content=":توضیحات" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="623.5419354799991" Canvas.Top="42.593548390000251" cm:ControlID="4845383355432292428" />
                  <cm:tzLabel Name="Lable87" Content=":بارگذاری فایل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="621.78193547999933" Canvas.Top="113.6268817166665" cm:ControlID="5035904599795377816" />
                  <cm:TZFileUpload Name="fluAttachmentActions" Width="234" Height="25.516666666666652" TabIndex="4" Canvas.Left="380.54193547999932" Canvas.Top="112.5935483833332" cm:ControlID="4636532424394902227" />
                  <cm:TZRadioButton Name="rbnAccActions" Content="تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="3" Canvas.Left="574.51526881333291" Canvas.Top="14.39068443000042" cm:ControlID="5738523675897553270" cm:DefaultValue="" cm:Event="dsSelectrbnAccActions" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="33" cm:TCVCol="" cm:TECol="5259992753776356314#" cm:TMCol="5259992753776356314#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnNotAccActions" Content="عدم تایید" Width="NaN" Height="NaN" FontFamily="Tahoma" GroupName="3" Canvas.Left="478.84265146999928" Canvas.Top="14.39068443000042" cm:ControlID="5724648397005188929" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TabIndex="34" cm:TCVCol="" cm:TECol="" cm:TMCol="4999118027321972736#" cm:TVCol="" />
                  <cm:tzLookUpComboBox Name="cmbScoreActions" Width="174" Height="22" Canvas.Left="7.9999999999999289" Canvas.Top="13.00000000000011" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5259992753776356314" cm:DataBinding="dsScore" cm:DataType="Int" cm:TabIndex="35" cm:tzDisplayItem="ServingTableScoreTitle" cm:tzValueItem="ServingTableScoreID" />
                  <cm:tzLabel Name="Lable83" Content=":امتیاز" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="183.00000000000011" Canvas.Top="10.516666666666776" cm:ControlID="4964487483417406645" />
                  <cm:tzTextBox Name="txtDescActions" Width="606.54193547999921" Height="50" Canvas.Left="8" Canvas.Top="44" cm:ControlID="4999118027321972736" cm:IsMulitiLine="True" cm:Len="2000" cm:TabIndex="36" />
                  <cm:tzDataSource Name="dsScore" Content="dsScore" Width="110" Height="25" ControlID="5055561591823269414" Canvas.Left="20.9615581999999" Canvas.Top="9.9999999999997726" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" />
                  <cm:tzDataSource Name="dsGetUserDataForth" Content="dsGetUserDataForth" Width="110" Height="25" Canvas.Left="8" Canvas.Top="77.000000000000114" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5627434039910385051" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLoadEghamUserData_Frm243_Fourth">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @USerID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:PDatePicker Name="prdRegDateForth" Width="120" Height="20" Canvas.Left="153.63932040999953" Canvas.Top="47.0768817233337" cm:ControlID="5481088134109499185" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="RegDate" cm:IsVisibleItem="False" />
                  <cm:TzPersianTime Name="prdRegTimeForth" Width="120" Height="20" Canvas.Left="296.4393204099996" Canvas.Top="43.998151041666915" cm:ControlID="4665967948789191520" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="RegTime" />
                  <cm:tzTextBox Name="txtUserIDForth" Width="120" Height="21" Canvas.Left="8" Canvas.Top="44.000000000000114" cm:ControlID="4818312992012446291" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="UserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtActivityIDForth" Width="120" Height="21" Canvas.Left="433.71118421000006" Canvas.Top="41.000000000000227" cm:ControlID="4825489060297649621" cm:DataBinding="dsGetUserDataForth" cm:DataBindingField="ActivityID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsSelectrbnAccActions" Content="dsSelectrbnAccActions" Width="110" Height="25" ControlID="5200482427605653075" Canvas.Left="367.84265146999928" Canvas.Top="7.0000000000002274" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnAccActions} AS rbnAccActions" />
                  <cm:TZCheckBox Name="CheckBox167" Content="TZCheckBox" Width="120" Height="20" ControlID="4975186370815220673" Canvas.Left="274.63932040999953" Canvas.Top="12.000000000000227" cm:DataBinding="dsSelectrbnAccActions" cm:DataBindingField="rbnAccActions" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="5259992753776356314#" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsEnableLabel" Content="dsEnableLabel" Width="110" Height="25" ControlID="5559974938702805655" Canvas.Left="757.69928401" Canvas.Top="772.58325853" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="تاریخچه ">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox238" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="5228753967731097424" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView239" Width="1424" Height="901.55" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5742389205581948678" ItemsSource="{Binding ElementName=dsReadHistory, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsReadHistory" cm:KeyField="ServingTableSecondPhaseHistoryID">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableSecondPhaseHistoryID" DecimalMark="False" HeaderText="ServingTableSecondPhaseHistoryID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableSecondPhaseHistoryID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableSecondPhaseHistoryID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Rolee" DecimalMark="False" HeaderText="نقش" IsRowColorField="False" KeyField="False" SortMemberPath="Rolee">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Rolee}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Actionn" DecimalMark="False" HeaderText="نوع اقدام " IsRowColorField="False" KeyField="False" SortMemberPath="Actionn">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Actionn}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Reference" DecimalMark="False" HeaderText="ارجاع گیرنده " IsRowColorField="False" KeyField="False" SortMemberPath="Reference">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Reference}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserDesc" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="UserDesc">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserDesc}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsReadHistory" Content="dsReadHistory" Width="110" Height="25" ControlID="5281261300836226632" Canvas.Left="24.609319000000227" Canvas.Top="108.63548387000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="ضمیمه ها" cm:DataBinding="dsReadCountAttach" cm:DataBindingField="Column1">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox409" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="5139045147590239356" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView410" Width="1424" Height="901.55" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5697148593855323337" ItemsSource="{Binding ElementName=dsReadAttachment, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsReadAttachment" cm:KeyField="AttachmentID">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AttachmentID" DecimalMark="False" HeaderText="AttachmentID" IsRowColorField="False" KeyField="True" SortMemberPath="AttachmentID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AttachmentID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="56" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="AttachmentTitle" DataTextField="AttachmentTitle" DecimalMark="False" HeaderText="فایل مدرک" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="AttachmentTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding AttachmentTitle}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding AttachmentTitle}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsReadAttachment" Content="dsReadAttachment" Width="110" Height="25" ControlID="5031005639295037783" Canvas.Left="433" Canvas.Top="54.550000003333366" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsReadCountAttach" Content="dsReadCountAttach" Width="110" Height="25" Canvas.Left="433.00000000000028" Canvas.Top="106.57863962333337" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5616592185866978428" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@WorkflowInstanceID)" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="راهنما">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox284" Width="1452" Height="939.0333333333333" Background="#FFB1A0D3" ControlID="4731899895694599865" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="راهنما">
                <Canvas>
                  <cm:TzHyperlink Name="Hyperlink143" Content="دریافت فایل آموزشی" Width="1424" Height="154.48333333" ControlID="5181278050932924512" FontFamily="B Nazanin" FontSize="100" Foreground="#FF5216CC" Canvas.Left="8" Canvas.Top="13.06666666" cm:DataBinding="dsLink" cm:tzDisplayItem="Title" cm:tzValueItem="LoggingSystemLink" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
        </cm:TZTabControl>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/06/03 14:28:33', GUID = '727b7174-a4e6-41ce-95e8-f91c3ece3ad6', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "243" ,"components": [{"value": "","key": "4975186370815220673","label": "CheckBox167","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "rbnAccActions"},{"value": "","key": "5497800083366103290","label": "CheckBox175","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5716290874951705075","label": "CheckBox178","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5286295664072768338","label": "CheckBox186","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5447522547560323991","label": "CheckBox203","controlType": "checkbox","caption": "chbVisibleItem" ,"DataBindingField" : "flag"},{"value": "","key": "5343950136022904724","label": "CheckBox37","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "SelectInfo"},{"value": "","key": "4872620607267697235","label": "chkAkhzTaidie","controlType": "checkbox","caption": "chkAkhzTaidie" ,"DataBindingField" : "Res"},{"value": "","key": "4655348426068110759","label": "chkAnswerActing","controlType": "checkbox","caption": "chkAnswerActing" ,"DataBindingField" : "Res"},{"value": "","key": "5322494452124026796","label": "chkCheckExistsRefrence","controlType": "checkbox","caption": "chkCheckExistsRefrence" ,"DataBindingField" : "Res"},{"value": "","key": "4875558306346267617","label": "chkCheckRefrenceUser","controlType": "checkbox","caption": "chkCheckRefrenceUser" ,"DataBindingField" : "Res"},{"value": "","key": "4795065758229322170","label": "chkCheckRefrenceUserSec","controlType": "checkbox","caption": "chkCheckRefrenceUserSec" ,"DataBindingField" : "Res"},{"value": "","key": "5036804729879951345","label": "chkCheckWorkflowStatus","controlType": "checkbox","caption": "chkCheckWorkflowStatus" ,"DataBindingField" : "Res"},{"value": "","key": "4688451764383907719","label": "chkCompare","controlType": "checkbox","caption": "chkCompare" ,"DataBindingField" : "res"},{"value": "","key": "5132155074427207127","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Column1"},{"value": "","key": "5192361472626038383","label": "chkEnableDate","controlType": "checkbox","caption": "chkEnableDate" ,"DataBindingField" : "Res"},{"value": "","key": "5314528432430841199","label": "chkIsManagerAvailable","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "FieldManagerNotAvailable"},{"value": "","key": "5220620902125066610","label": "chkMandatoryNotSelectInfo","controlType": "checkbox","caption": "chkMandatoryNotSelectInfo" ,"DataBindingField" : "MandatoryNotSelectInfo"},{"value": "","key": "5115924373474858497","label": "chkMandatoryNotSelectInfoDate","controlType": "checkbox","caption": "chkMandatoryNotSelectInfoDate" ,"DataBindingField" : "MandatoryNotSelectInfoDate"},{"value": "","key": "5666353536888725103","label": "chkMandatorySelectInfo","controlType": "checkbox","caption": "chkMandatorySelectInfo" ,"DataBindingField" : "MandatorySelectInfo"},{"value": "","key": "5659335003033723732","label": "chkMultipleValues","controlType": "checkbox","caption": "chkMultipleValues" ,"DataBindingField" : "rbnMultipleValues"},{"value": "","key": "5168659056268343420","label": "chkMultipleValuesMandatory","controlType": "checkbox","caption": "chkMultipleValuesMandatory" ,"DataBindingField" : "MandatoryrbnMultipleValues"},{"value": "","key": "5443758597500893918","label": "chkNeedCertificate","controlType": "checkbox","caption": "chkNeedCertificate" ,"DataBindingField" : "IsNeedCertificate"},{"value": "","key": "5150378410502021558","label": "chkReferenceActing","controlType": "checkbox","caption": "ارجاع جهت" ,"DataBindingField" : ""},{"value": "","key": "4844487118598404545","label": "chkRequestSubject","controlType": "checkbox","caption": "chkRequestSubject" ,"DataBindingField" : "Res"},{"value": "","key": "5516976854451683700","label": "chkUserCanInsert","controlType": "checkbox","caption": "chkUserCanInsert" ,"DataBindingField" : "Res"},{"value": "","key": "5464357723432469235","label": "chkUserIsBranch","controlType": "checkbox","caption": "chkUserIsBranch" ,"DataBindingField" : "UserIsBranch"},{"value": "","key": "4697873506575570740","label": "chkValidate","controlType": "checkbox","caption": "chkValidate" ,"DataBindingField" : "Res"},{"value": "","key": "5094607077792705164","label": "chkValidatePeymankarDate","controlType": "checkbox","caption": "chkValidatePeymankarDate." ,"DataBindingField" : "Column1"},{"key": "5554970866147992698","label": "cmbFieldValueID","value": "", "controlType": "dropdown","options":""},{"key": "4936620095668202831","label": "cmbReferenceActing","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5259992753776356314","label": "cmbScoreActions","value": "", "controlType": "dropdown","options":""},{"key": "4881570594048707352","label": "cmbStatusActing","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key":"5367634685351392367" , "dataSourceName":"DataSource187" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5477569500181547439" , "dataSourceName":"dsAkhzTaidie" , "controlType": "datasource",  "selectQuery" :"IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689550366720017222" , "dataSourceName":"dsAnswerActing" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckAnswerActing_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4702876376026890291" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5046816167316824995" , "dataSourceName":"dsCheckPeymankarDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckPeymankarDate" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4983588032057303957" , "dataSourceName":"dsCheckRefrenceUser" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4646773501795498378" , "dataSourceName":"dsCheckRefrenceUserSec" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4686304685539765447" , "dataSourceName":"dsCheckRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidate_RequestSubject_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4772282357938744593" , "dataSourceName":"dsCheckValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5122826346641792319" , "dataSourceName":"dsCheckWorkflowStatus" , "controlType": "datasource",  "selectQuery" :"SP_Cu_CheckWorkflowStatus_Frm31240" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5632608860963331703" , "dataSourceName":"dschkIsManagerAvailable" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_IsFieldManagerAvailable" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4796377435123176147" , "dataSourceName":"dsCompare" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5462419856774520597" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_delete_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5662589489734807052" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5466927095367674240" , "dataSourceName":"dsEnableDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_EnableDate_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5559974938702805655" , "dataSourceName":"dsEnableLabel" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5273195586687856254" , "dataSourceName":"dsEnableLabel2" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4793853652190513490" , "dataSourceName":"dsFollowCode" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFollowCode_NewUserDefinition" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4655762560683332289" , "dataSourceName":"dsGetUserDataFirst" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5627434039910385051" , "dataSourceName":"dsGetUserDataForth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Fourth" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4937725416156234603" , "dataSourceName":"dsGetUserDataSecond" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Third" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5729304498189769267" , "dataSourceName":"dsGetUserDataThird" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5369238171599239062" , "dataSourceName":"dsGetValue" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5170551075891586804" , "dataSourceName":"dsGUIDD" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4877631570857336077" , "dataSourceName":"dsInsertData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5085105881132199709" , "dataSourceName":"dsLink" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5110670696080708548" , "dataSourceName":"dsLoad" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760404647498399665" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4974277814964022057" , "dataSourceName":"dsLoadService" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4881392250038900796" , "dataSourceName":"dsMakeEmptry" , "controlType": "datasource",  "selectQuery" :"IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5540375087530757889" , "dataSourceName":"dsMandatoryData" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5114061319767955735" , "dataSourceName":"dsReadActingRef" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5031005639295037783" , "dataSourceName":"dsReadAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5616592185866978428" , "dataSourceName":"dsReadCountAttach" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4823486510891932452" , "dataSourceName":"dsReadData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadData_ServingTableField" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5281261300836226632" , "dataSourceName":"dsReadHistory" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5055561591823269414" , "dataSourceName":"dsScore" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5459657173581711636" , "dataSourceName":"dsSelectchklMultipleValues" , "controlType": "datasource",  "selectQuery" :"SELECT {@chklMultipleValues} AS chklMultipleValues" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233624649659262730" , "dataSourceName":"dsSelectCurrentDate" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5036453969450944063" , "dataSourceName":"dsSelectItems" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvItems} AS ItemID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5200482427605653075" , "dataSourceName":"dsSelectrbnAccActions" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnAccActions} AS rbnAccActions" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233856275930939671" , "dataSourceName":"dsSelectUserRefrence" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5401325953310335326" , "dataSourceName":"dsSelectUserRefrenceNew" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617427278350659249" , "dataSourceName":"dsSelectUserRefrenceSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5667847526345547012" , "dataSourceName":"dsSelectWFID" , "controlType": "datasource",  "selectQuery" :"SELECT (@WorkflowInstanceID) AS WFID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4730083060785538985" , "dataSourceName":"dsUpdateData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5200068161426511415" , "dataSourceName":"dsUserCanInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5017690624055140686" , "dataSourceName":"dsVisibleItem" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_VisibleItemType {@txtItemID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5568970676742359854","label": "TextBox189","controlType": "textbox", "type": "" , "DataBindingField" : "FieldTitle"},{"value": "","key": "5581141407921292751","label": "TextBox199","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5162934944876769201","label": "TextBox213","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4859239441948670019","label": "TextBox285","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5491265726550782421","label": "TextBox81","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5626482120269590337","label": "txtActivityIDFirst","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4825489060297649621","label": "txtActivityIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4843974103575279809","label": "txtActivityIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5347612118525905609","label": "txtActivityIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5761211021147188750","label": "txtAddress","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5626556152912671128","label": "txtDataRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4669232414997773258","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4888789270628417469","label": "txtDescActing","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4999118027321972736","label": "txtDescActions","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704711095539514666","label": "txtDescReference","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5181720467505861532","label": "txtDescSeconder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5263373270007817469","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "5329520347459779938","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4995533338641167379","label": "txtGUIDD","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5591840014643513848","label": "txtInsertRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5243519420555067860","label": "txtItemID","controlType": "textbox", "type": "" , "DataBindingField" : "ItemID"},{"value": "","key": "5485778130039395725","label": "txtLastStatusActing","controlType": "textbox", "type": "" , "DataBindingField" : "StatusActing"},{"value": "","key": "4826610513644201043","label": "txtMessageNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5760154045432193711","label": "txtMultipleValues","controlType": "textbox", "type": "" , "DataBindingField" : "chklMultipleValues"},{"value": "","key": "4850327712077035454","label": "txtOrganizationPost","controlType": "textbox", "type": "" , "DataBindingField" : "Organizationpost"},{"value": "","key": "4797625139975453820","label": "txtOrganizationUnit","controlType": "textbox", "type": "" , "DataBindingField" : "OrganizationUnit"},{"value": "","key": "5474736857145248079","label": "txtOUID","controlType": "textbox", "type": "" , "DataBindingField" : "UnitID"},{"value": "","key": "5281861071186097962","label": "txtPhoneNumber","controlType": "textbox", "type": "" , "DataBindingField" : "telephonenumber"},{"value": "","key": "5506921329922687913","label": "txtReferenceUserActing","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5265233019818142125","label": "txtReferenceUserSeconder","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5206491520355753398","label": "txtRequestDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5035903570341991895","label": "txtServiceLocation","controlType": "textbox", "type": "" , "DataBindingField" : "Servicelocation"},{"value": "","key": "4938308427061897607","label": "txtServiceResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "5758762721732505115","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4882272451934286700","label": "txtUserIDfirst","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4818312992012446291","label": "txtUserIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5639913882214238562","label": "txtUserIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4786962185969475179","label": "txtUserIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5183947771732858935","label": "txtUserName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5662217081009761575","label": "txtValue","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4883524612292746126","data": [{"key": "5209939103483890987","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5329520347459779938","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5035903570341991895","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4838564445226209905","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4647773901884335145","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5266482798981468614","color": "","invisible": false,"mandatory": true,"disable": false }]},{"layoutID": "5247524876530023130","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5626692213297706894","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5315581096260719821","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5057671704762368988","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4636532424394902227","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5035904599795377816","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5580275910207162559","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218958864821998426","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5093058697085053446","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5704711095539514666","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5449393554084875660","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5238898146110492403","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681241468063451828","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5738523675897553270","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5724648397005188929","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4964487483417406645","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5259992753776356314","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4999118027321972736","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',DefaultCulture = NULL  WHERE FormId = 243
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm243') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm243] ( [frm243Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4850327712077035454]  [nvarchar] ( 50) NULL , [Col_5263373270007817469]  [nvarchar] ( 50) NULL , [Col_4797625139975453820]  [nvarchar] ( 50) NULL , [Col_5329520347459779938]  [nvarchar] ( 50) NULL , [Col_5281861071186097962]  [nvarchar] ( 50) NULL , [Col_5035903570341991895]  [nvarchar] ( 50) NULL , [Col_5761211021147188750]  [nvarchar] ( 1000) NULL , [Col_5206491520355753398]  [nvarchar] ( 2000) NULL , [Col_5704711095539514666]  [nvarchar] ( 2000) NULL , [Col_5181720467505861532]  [nvarchar] ( 2000) NULL , [Col_4888789270628417469]  [nvarchar] ( 2000) NULL , [Col_5491265726550782421]  [nvarchar] ( 50) NULL , [Col_4999118027321972736]  [nvarchar] ( 2000) NULL , [Col_5554970866147992698]  [nvarchar] ( 50) NULL , [Col_4881570594048707352]  [int] NULL , [Col_4936620095668202831]  [int] NULL , [Col_5259992753776356314]  [int] NULL , [Col_5218958864821998426]  [bit] NULL , [Col_5093058697085053446]  [bit] NULL , [Col_5433095950633073955]  [bit] NULL , [Col_5558469775321616550]  [bit] NULL , [Col_4684667365755274354]  [bit] NULL , [Col_5738523675897553270]  [bit] NULL , [Col_5724648397005188929]  [bit] NULL , [Col_5150378410502021558]  [bit] NULL , [Col_5150238976164030821]  [nvarchar] ( 10) NULL , [Col_4973100433102665678]  [nvarchar] ( 10) NULL , [Col_5209939103483890987]  [nvarchar] ( 5) NULL , [Col_4804226963426195138]  [nvarchar] ( 5) NULL , [Col_5538532305009285066]  [nvarchar] ( 150) NULL , [Col_4636532424394902227]  [nvarchar] ( 150) NULL , [Col_5417635295906277410]  [nvarchar] ( 50) NULL , [Col_4838564445226209905]  [nvarchar] ( 50) NULL , [Col_4647773901884335145]  [nvarchar] ( 50) NULL , [Col_5266482798981468614]  [nvarchar] ( 50) NULL , [Col_5758762721732505115]  [bigint] NULL , [Col_4938308427061897607]  [nvarchar] ( 50) NULL , [Col_5183947771732858935]  [nvarchar] ( 50) NULL , [Col_4995533338641167379]  [nvarchar] ( 50) NULL , [Col_5591840014643513848]  [nvarchar] ( 50) NULL , [Col_5243519420555067860]  [bigint] NULL , [Col_5132155074427207127]  [bit] NULL , [Col_5662217081009761575]  [nvarchar] ( 1000) NULL , [Col_5220620902125066610]  [bit] NULL , [Col_5666353536888725103]  [bit] NULL , [Col_5443758597500893918]  [bit] NULL , [Col_5343950136022904724]  [bit] NULL , [Col_4697873506575570740]  [bit] NULL , [Col_5568970676742359854]  [nvarchar] ( 50) NULL , [Col_5626556152912671128]  [nvarchar] ( 50) NULL , [Col_4688451764383907719]  [bit] NULL , [Col_4669232414997773258]  [nvarchar] ( 50) NULL , [Col_4859239441948670019]  [nvarchar] ( 50) NULL , [Col_5265233019818142125]  [bigint] NULL , [Col_5506921329922687913]  [bigint] NULL , [Col_5474736857145248079]  [nvarchar] ( 50) NULL , [Col_5464357723432469235]  [bit] NULL , [Col_4786962185969475179]  [bigint] NULL , [Col_4882272451934286700]  [bigint] NULL , [Col_5286295664072768338]  [bit] NULL , [Col_4866237595884546157]  [nvarchar] ( 10) NULL , [Col_4839123484665695911]  [nvarchar] ( 5) NULL , [Col_5639913882214238562]  [bigint] NULL , [Col_5217129348169415114]  [nvarchar] ( 10) NULL , [Col_4763977174989292395]  [nvarchar] ( 5) NULL , [Col_5255399125036515846]  [nvarchar] ( 10) NULL , [Col_5729362453248064269]  [nvarchar] ( 5) NULL , [Col_5581141407921292751]  [bigint] NULL , [Col_4818312992012446291]  [bigint] NULL , [Col_5481088134109499185]  [nvarchar] ( 10) NULL , [Col_4665967948789191520]  [nvarchar] ( 5) NULL , [Col_4843974103575279809]  [bigint] NULL , [Col_5626482120269590337]  [bigint] NULL , [Col_5347612118525905609]  [bigint] NULL , [Col_4825489060297649621]  [bigint] NULL , [Col_5192361472626038383]  [bit] NULL , [Col_5516976854451683700]  [bit] NULL , [Col_4975186370815220673]  [bit] NULL , [Col_4655348426068110759]  [bit] NULL , [Col_4875558306346267617]  [bit] NULL , [Col_4795065758229322170]  [bit] NULL , [Col_5094607077792705164]  [bit] NULL , [Col_5497800083366103290]  [bit] NULL , [Col_5716290874951705075]  [bit] NULL , [Col_5485778130039395725]  [int] NULL , [Col_5036804729879951345]  [bit] NULL , [Col_4844487118598404545]  [bit] NULL , [Col_5509714113749934332]  [bit] NULL , [Col_5447522547560323991]  [bit] NULL , [Col_5371746024198239615]  [nvarchar] ( 10) NULL , [Col_5115924373474858497]  [bit] NULL , [Col_4826610513644201043]  [nvarchar] ( 50) NULL , [Col_5760154045432193711]  [nvarchar] ( 50) NULL , [Col_5659335003033723732]  [bit] NULL , [Col_5168659056268343420]  [bit] NULL , [Col_5162934944876769201]  [nvarchar] ( 50) NULL , [Col_4872620607267697235]  [bit] NULL , [Col_5322494452124026796]  [bit] NULL , [Col_5378483359704304450]  [nvarchar] ( 50) NULL , [Col_5538917384814042880]  [nvarchar] ( 50) NULL , [Col_5314528432430841199]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm243Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'frm243Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD frm243Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4850327712077035454' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4850327712077035454 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5263373270007817469' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5263373270007817469 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4797625139975453820' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4797625139975453820 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5329520347459779938' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5329520347459779938 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5281861071186097962' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5281861071186097962 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5035903570341991895' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5035903570341991895 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5761211021147188750' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5761211021147188750 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5206491520355753398' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5206491520355753398 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5704711095539514666' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5704711095539514666 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5181720467505861532' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5181720467505861532 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4888789270628417469' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4888789270628417469 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5491265726550782421' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5491265726550782421 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4999118027321972736' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4999118027321972736 nvarchar (2000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5554970866147992698' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5554970866147992698 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4881570594048707352' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4881570594048707352 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4936620095668202831' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4936620095668202831 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5259992753776356314' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5259992753776356314 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5218958864821998426' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5218958864821998426 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5093058697085053446' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5093058697085053446 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5433095950633073955' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5433095950633073955 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5558469775321616550' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5558469775321616550 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4684667365755274354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4684667365755274354 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5738523675897553270' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5738523675897553270 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5724648397005188929' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5724648397005188929 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5150378410502021558' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5150378410502021558 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5150238976164030821' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5150238976164030821 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4973100433102665678' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4973100433102665678 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5209939103483890987' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5209939103483890987 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4804226963426195138' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4804226963426195138 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5538532305009285066' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5538532305009285066 nvarchar (150) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4636532424394902227' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4636532424394902227 nvarchar (150) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5417635295906277410' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5417635295906277410 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4838564445226209905' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4838564445226209905 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4647773901884335145' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4647773901884335145 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5266482798981468614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5266482798981468614 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5758762721732505115' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5758762721732505115 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4938308427061897607' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4938308427061897607 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5183947771732858935' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5183947771732858935 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4995533338641167379' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4995533338641167379 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5591840014643513848' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5591840014643513848 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5243519420555067860' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5243519420555067860 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5132155074427207127' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5132155074427207127 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5662217081009761575' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5662217081009761575 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5220620902125066610' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5220620902125066610 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5666353536888725103' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5666353536888725103 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5443758597500893918' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5443758597500893918 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5343950136022904724' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5343950136022904724 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4697873506575570740' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4697873506575570740 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5568970676742359854' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5568970676742359854 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5626556152912671128' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5626556152912671128 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4688451764383907719' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4688451764383907719 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4669232414997773258' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4669232414997773258 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4859239441948670019' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4859239441948670019 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5265233019818142125' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5265233019818142125 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5506921329922687913' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5506921329922687913 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5474736857145248079' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5474736857145248079 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5464357723432469235' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5464357723432469235 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4786962185969475179' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4786962185969475179 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4882272451934286700' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4882272451934286700 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5286295664072768338' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5286295664072768338 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4866237595884546157' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4866237595884546157 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4839123484665695911' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4839123484665695911 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5639913882214238562' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5639913882214238562 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5217129348169415114' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5217129348169415114 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4763977174989292395' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4763977174989292395 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5255399125036515846' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5255399125036515846 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5729362453248064269' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5729362453248064269 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5581141407921292751' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5581141407921292751 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4818312992012446291' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4818312992012446291 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5481088134109499185' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5481088134109499185 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4665967948789191520' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4665967948789191520 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4843974103575279809' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4843974103575279809 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5626482120269590337' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5626482120269590337 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5347612118525905609' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5347612118525905609 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4825489060297649621' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4825489060297649621 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5192361472626038383' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5192361472626038383 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5516976854451683700' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5516976854451683700 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4975186370815220673' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4975186370815220673 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4655348426068110759' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4655348426068110759 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4875558306346267617' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4875558306346267617 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4795065758229322170' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4795065758229322170 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5094607077792705164' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5094607077792705164 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5497800083366103290' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5497800083366103290 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5716290874951705075' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5716290874951705075 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5485778130039395725' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5485778130039395725 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5036804729879951345' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5036804729879951345 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4844487118598404545' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4844487118598404545 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5509714113749934332' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5509714113749934332 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5447522547560323991' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5447522547560323991 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5371746024198239615' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5371746024198239615 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5115924373474858497' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5115924373474858497 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4826610513644201043' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4826610513644201043 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5760154045432193711' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5760154045432193711 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5659335003033723732' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5659335003033723732 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5168659056268343420' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5168659056268343420 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5162934944876769201' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5162934944876769201 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_4872620607267697235' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_4872620607267697235 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5322494452124026796' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5322494452124026796 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5378483359704304450' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5378483359704304450 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5538917384814042880' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5538917384814042880 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm243' AND COLUMN_NAME = 'Col_5314528432430841199' )  BEGIN ALTER TABLE [dbo].[Tbl_frm243] ADD Col_5314528432430841199 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm243]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm243
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm243] ( @PKFormId as bigint OUTPUT ,  @Col_4850327712077035454 AS nvarchar(50),  @Col_5263373270007817469 AS nvarchar(50),  @Col_4797625139975453820 AS nvarchar(50),  @Col_5329520347459779938 AS nvarchar(50),  @Col_5281861071186097962 AS nvarchar(50),  @Col_5035903570341991895 AS nvarchar(50),  @Col_5761211021147188750 AS nvarchar(1000),  @Col_5206491520355753398 AS nvarchar(2000),  @Col_5704711095539514666 AS nvarchar(2000),  @Col_5181720467505861532 AS nvarchar(2000),  @Col_4888789270628417469 AS nvarchar(2000),  @Col_5491265726550782421 AS nvarchar(50),  @Col_4999118027321972736 AS nvarchar(2000),  @Col_5554970866147992698 AS nvarchar(50),  @Col_4881570594048707352 AS int,  @Col_4936620095668202831 AS int,  @Col_5259992753776356314 AS int,  @Col_5218958864821998426 AS bit,  @Col_5093058697085053446 AS bit,  @Col_5433095950633073955 AS bit,  @Col_5558469775321616550 AS bit,  @Col_4684667365755274354 AS bit,  @Col_5738523675897553270 AS bit,  @Col_5724648397005188929 AS bit,  @Col_5150378410502021558 AS bit,  @Col_5150238976164030821 AS nvarchar(10),  @Col_4973100433102665678 AS nvarchar(10),  @Col_5209939103483890987 AS nvarchar(5),  @Col_4804226963426195138 AS nvarchar(5),  @Col_5538532305009285066 AS nvarchar(150),  @Col_4636532424394902227 AS nvarchar(150),  @Col_5417635295906277410 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_4647773901884335145 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_5758762721732505115 AS bigint,  @Col_4938308427061897607 AS nvarchar(50),  @Col_5183947771732858935 AS nvarchar(50),  @Col_4995533338641167379 AS nvarchar(50),  @Col_5591840014643513848 AS nvarchar(50),  @Col_5243519420555067860 AS bigint,  @Col_5132155074427207127 AS bit,  @Col_5662217081009761575 AS nvarchar(1000),  @Col_5220620902125066610 AS bit,  @Col_5666353536888725103 AS bit,  @Col_5443758597500893918 AS bit,  @Col_5343950136022904724 AS bit,  @Col_4697873506575570740 AS bit,  @Col_5568970676742359854 AS nvarchar(50),  @Col_5626556152912671128 AS nvarchar(50),  @Col_4688451764383907719 AS bit,  @Col_4669232414997773258 AS nvarchar(50),  @Col_4859239441948670019 AS nvarchar(50),  @Col_5265233019818142125 AS bigint,  @Col_5506921329922687913 AS bigint,  @Col_5474736857145248079 AS nvarchar(50),  @Col_5464357723432469235 AS bit,  @Col_4786962185969475179 AS bigint,  @Col_4882272451934286700 AS bigint,  @Col_5286295664072768338 AS bit,  @Col_4866237595884546157 AS nvarchar(10),  @Col_4839123484665695911 AS nvarchar(5),  @Col_5639913882214238562 AS bigint,  @Col_5217129348169415114 AS nvarchar(10),  @Col_4763977174989292395 AS nvarchar(5),  @Col_5255399125036515846 AS nvarchar(10),  @Col_5729362453248064269 AS nvarchar(5),  @Col_5581141407921292751 AS bigint,  @Col_4818312992012446291 AS bigint,  @Col_5481088134109499185 AS nvarchar(10),  @Col_4665967948789191520 AS nvarchar(5),  @Col_4843974103575279809 AS bigint,  @Col_5626482120269590337 AS bigint,  @Col_5347612118525905609 AS bigint,  @Col_4825489060297649621 AS bigint,  @Col_5192361472626038383 AS bit,  @Col_5516976854451683700 AS bit,  @Col_4975186370815220673 AS bit,  @Col_4655348426068110759 AS bit,  @Col_4875558306346267617 AS bit,  @Col_4795065758229322170 AS bit,  @Col_5094607077792705164 AS bit,  @Col_5497800083366103290 AS bit,  @Col_5716290874951705075 AS bit,  @Col_5485778130039395725 AS int,  @Col_5036804729879951345 AS bit,  @Col_4844487118598404545 AS bit,  @Col_5509714113749934332 AS bit,  @Col_5447522547560323991 AS bit,  @Col_5371746024198239615 AS nvarchar(10),  @Col_5115924373474858497 AS bit,  @Col_4826610513644201043 AS nvarchar(50),  @Col_5760154045432193711 AS nvarchar(50),  @Col_5659335003033723732 AS bit,  @Col_5168659056268343420 AS bit,  @Col_5162934944876769201 AS nvarchar(50),  @Col_4872620607267697235 AS bit,  @Col_5322494452124026796 AS bit,  @Col_5378483359704304450 AS nvarchar(50),  @Col_5538917384814042880 AS nvarchar(50),  @Col_5314528432430841199 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm243](Col_4850327712077035454,Col_5263373270007817469,Col_4797625139975453820,Col_5329520347459779938,Col_5281861071186097962,Col_5035903570341991895,Col_5761211021147188750,Col_5206491520355753398,Col_5704711095539514666,Col_5181720467505861532,Col_4888789270628417469,Col_5491265726550782421,Col_4999118027321972736,Col_5554970866147992698,Col_4881570594048707352,Col_4936620095668202831,Col_5259992753776356314,Col_5218958864821998426,Col_5093058697085053446,Col_5433095950633073955,Col_5558469775321616550,Col_4684667365755274354,Col_5738523675897553270,Col_5724648397005188929,Col_5150378410502021558,Col_5150238976164030821,Col_4973100433102665678,Col_5209939103483890987,Col_4804226963426195138,Col_5538532305009285066,Col_4636532424394902227,Col_5417635295906277410,Col_4838564445226209905,Col_4647773901884335145,Col_5266482798981468614,Col_5758762721732505115,Col_4938308427061897607,Col_5183947771732858935,Col_4995533338641167379,Col_5591840014643513848,Col_5243519420555067860,Col_5132155074427207127,Col_5662217081009761575,Col_5220620902125066610,Col_5666353536888725103,Col_5443758597500893918,Col_5343950136022904724,Col_4697873506575570740,Col_5568970676742359854,Col_5626556152912671128,Col_4688451764383907719,Col_4669232414997773258,Col_4859239441948670019,Col_5265233019818142125,Col_5506921329922687913,Col_5474736857145248079,Col_5464357723432469235,Col_4786962185969475179,Col_4882272451934286700,Col_5286295664072768338,Col_4866237595884546157,Col_4839123484665695911,Col_5639913882214238562,Col_5217129348169415114,Col_4763977174989292395,Col_5255399125036515846,Col_5729362453248064269,Col_5581141407921292751,Col_4818312992012446291,Col_5481088134109499185,Col_4665967948789191520,Col_4843974103575279809,Col_5626482120269590337,Col_5347612118525905609,Col_4825489060297649621,Col_5192361472626038383,Col_5516976854451683700,Col_4975186370815220673,Col_4655348426068110759,Col_4875558306346267617,Col_4795065758229322170,Col_5094607077792705164,Col_5497800083366103290,Col_5716290874951705075,Col_5485778130039395725,Col_5036804729879951345,Col_4844487118598404545,Col_5509714113749934332,Col_5447522547560323991,Col_5371746024198239615,Col_5115924373474858497,Col_4826610513644201043,Col_5760154045432193711,Col_5659335003033723732,Col_5168659056268343420,Col_5162934944876769201,Col_4872620607267697235,Col_5322494452124026796,Col_5378483359704304450,Col_5538917384814042880,Col_5314528432430841199) VALUES ( @Col_4850327712077035454,@Col_5263373270007817469,@Col_4797625139975453820,@Col_5329520347459779938,@Col_5281861071186097962,@Col_5035903570341991895,@Col_5761211021147188750,@Col_5206491520355753398,@Col_5704711095539514666,@Col_5181720467505861532,@Col_4888789270628417469,@Col_5491265726550782421,@Col_4999118027321972736,@Col_5554970866147992698,@Col_4881570594048707352,@Col_4936620095668202831,@Col_5259992753776356314,@Col_5218958864821998426,@Col_5093058697085053446,@Col_5433095950633073955,@Col_5558469775321616550,@Col_4684667365755274354,@Col_5738523675897553270,@Col_5724648397005188929,@Col_5150378410502021558,@Col_5150238976164030821,@Col_4973100433102665678,@Col_5209939103483890987,@Col_4804226963426195138,@Col_5538532305009285066,@Col_4636532424394902227,@Col_5417635295906277410,@Col_4838564445226209905,@Col_4647773901884335145,@Col_5266482798981468614,@Col_5758762721732505115,@Col_4938308427061897607,@Col_5183947771732858935,@Col_4995533338641167379,@Col_5591840014643513848,@Col_5243519420555067860,@Col_5132155074427207127,@Col_5662217081009761575,@Col_5220620902125066610,@Col_5666353536888725103,@Col_5443758597500893918,@Col_5343950136022904724,@Col_4697873506575570740,@Col_5568970676742359854,@Col_5626556152912671128,@Col_4688451764383907719,@Col_4669232414997773258,@Col_4859239441948670019,@Col_5265233019818142125,@Col_5506921329922687913,@Col_5474736857145248079,@Col_5464357723432469235,@Col_4786962185969475179,@Col_4882272451934286700,@Col_5286295664072768338,@Col_4866237595884546157,@Col_4839123484665695911,@Col_5639913882214238562,@Col_5217129348169415114,@Col_4763977174989292395,@Col_5255399125036515846,@Col_5729362453248064269,@Col_5581141407921292751,@Col_4818312992012446291,@Col_5481088134109499185,@Col_4665967948789191520,@Col_4843974103575279809,@Col_5626482120269590337,@Col_5347612118525905609,@Col_4825489060297649621,@Col_5192361472626038383,@Col_5516976854451683700,@Col_4975186370815220673,@Col_4655348426068110759,@Col_4875558306346267617,@Col_4795065758229322170,@Col_5094607077792705164,@Col_5497800083366103290,@Col_5716290874951705075,@Col_5485778130039395725,@Col_5036804729879951345,@Col_4844487118598404545,@Col_5509714113749934332,@Col_5447522547560323991,@Col_5371746024198239615,@Col_5115924373474858497,@Col_4826610513644201043,@Col_5760154045432193711,@Col_5659335003033723732,@Col_5168659056268343420,@Col_5162934944876769201,@Col_4872620607267697235,@Col_5322494452124026796,@Col_5378483359704304450,@Col_5538917384814042880,@Col_5314528432430841199 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm243]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm243
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm243] ( @PKFormId as bigint OUTPUT ,  @Col_4850327712077035454 AS nvarchar(50),  @Col_5263373270007817469 AS nvarchar(50),  @Col_4797625139975453820 AS nvarchar(50),  @Col_5329520347459779938 AS nvarchar(50),  @Col_5281861071186097962 AS nvarchar(50),  @Col_5035903570341991895 AS nvarchar(50),  @Col_5761211021147188750 AS nvarchar(1000),  @Col_5206491520355753398 AS nvarchar(2000),  @Col_5704711095539514666 AS nvarchar(2000),  @Col_5181720467505861532 AS nvarchar(2000),  @Col_4888789270628417469 AS nvarchar(2000),  @Col_5491265726550782421 AS nvarchar(50),  @Col_4999118027321972736 AS nvarchar(2000),  @Col_5554970866147992698 AS nvarchar(50),  @Col_4881570594048707352 AS int,  @Col_4936620095668202831 AS int,  @Col_5259992753776356314 AS int,  @Col_5218958864821998426 AS bit,  @Col_5093058697085053446 AS bit,  @Col_5433095950633073955 AS bit,  @Col_5558469775321616550 AS bit,  @Col_4684667365755274354 AS bit,  @Col_5738523675897553270 AS bit,  @Col_5724648397005188929 AS bit,  @Col_5150378410502021558 AS bit,  @Col_5150238976164030821 AS nvarchar(10),  @Col_4973100433102665678 AS nvarchar(10),  @Col_5209939103483890987 AS nvarchar(5),  @Col_4804226963426195138 AS nvarchar(5),  @Col_5538532305009285066 AS nvarchar(150),  @Col_4636532424394902227 AS nvarchar(150),  @Col_5417635295906277410 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_4647773901884335145 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_5758762721732505115 AS bigint,  @Col_4938308427061897607 AS nvarchar(50),  @Col_5183947771732858935 AS nvarchar(50),  @Col_4995533338641167379 AS nvarchar(50),  @Col_5591840014643513848 AS nvarchar(50),  @Col_5243519420555067860 AS bigint,  @Col_5132155074427207127 AS bit,  @Col_5662217081009761575 AS nvarchar(1000),  @Col_5220620902125066610 AS bit,  @Col_5666353536888725103 AS bit,  @Col_5443758597500893918 AS bit,  @Col_5343950136022904724 AS bit,  @Col_4697873506575570740 AS bit,  @Col_5568970676742359854 AS nvarchar(50),  @Col_5626556152912671128 AS nvarchar(50),  @Col_4688451764383907719 AS bit,  @Col_4669232414997773258 AS nvarchar(50),  @Col_4859239441948670019 AS nvarchar(50),  @Col_5265233019818142125 AS bigint,  @Col_5506921329922687913 AS bigint,  @Col_5474736857145248079 AS nvarchar(50),  @Col_5464357723432469235 AS bit,  @Col_4786962185969475179 AS bigint,  @Col_4882272451934286700 AS bigint,  @Col_5286295664072768338 AS bit,  @Col_4866237595884546157 AS nvarchar(10),  @Col_4839123484665695911 AS nvarchar(5),  @Col_5639913882214238562 AS bigint,  @Col_5217129348169415114 AS nvarchar(10),  @Col_4763977174989292395 AS nvarchar(5),  @Col_5255399125036515846 AS nvarchar(10),  @Col_5729362453248064269 AS nvarchar(5),  @Col_5581141407921292751 AS bigint,  @Col_4818312992012446291 AS bigint,  @Col_5481088134109499185 AS nvarchar(10),  @Col_4665967948789191520 AS nvarchar(5),  @Col_4843974103575279809 AS bigint,  @Col_5626482120269590337 AS bigint,  @Col_5347612118525905609 AS bigint,  @Col_4825489060297649621 AS bigint,  @Col_5192361472626038383 AS bit,  @Col_5516976854451683700 AS bit,  @Col_4975186370815220673 AS bit,  @Col_4655348426068110759 AS bit,  @Col_4875558306346267617 AS bit,  @Col_4795065758229322170 AS bit,  @Col_5094607077792705164 AS bit,  @Col_5497800083366103290 AS bit,  @Col_5716290874951705075 AS bit,  @Col_5485778130039395725 AS int,  @Col_5036804729879951345 AS bit,  @Col_4844487118598404545 AS bit,  @Col_5509714113749934332 AS bit,  @Col_5447522547560323991 AS bit,  @Col_5371746024198239615 AS nvarchar(10),  @Col_5115924373474858497 AS bit,  @Col_4826610513644201043 AS nvarchar(50),  @Col_5760154045432193711 AS nvarchar(50),  @Col_5659335003033723732 AS bit,  @Col_5168659056268343420 AS bit,  @Col_5162934944876769201 AS nvarchar(50),  @Col_4872620607267697235 AS bit,  @Col_5322494452124026796 AS bit,  @Col_5378483359704304450 AS nvarchar(50),  @Col_5538917384814042880 AS nvarchar(50),  @Col_5314528432430841199 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm243] SET Col_4850327712077035454 =  @Col_4850327712077035454, Col_5263373270007817469 =  @Col_5263373270007817469, Col_4797625139975453820 =  @Col_4797625139975453820, Col_5329520347459779938 =  @Col_5329520347459779938, Col_5281861071186097962 =  @Col_5281861071186097962, Col_5035903570341991895 =  @Col_5035903570341991895, Col_5761211021147188750 =  @Col_5761211021147188750, Col_5206491520355753398 =  @Col_5206491520355753398, Col_5704711095539514666 =  @Col_5704711095539514666, Col_5181720467505861532 =  @Col_5181720467505861532, Col_4888789270628417469 =  @Col_4888789270628417469, Col_5491265726550782421 =  @Col_5491265726550782421, Col_4999118027321972736 =  @Col_4999118027321972736, Col_5554970866147992698 =  @Col_5554970866147992698, Col_4881570594048707352 =  @Col_4881570594048707352, Col_4936620095668202831 =  @Col_4936620095668202831, Col_5259992753776356314 =  @Col_5259992753776356314, Col_5218958864821998426 =  @Col_5218958864821998426, Col_5093058697085053446 =  @Col_5093058697085053446, Col_5433095950633073955 =  @Col_5433095950633073955, Col_5558469775321616550 =  @Col_5558469775321616550, Col_4684667365755274354 =  @Col_4684667365755274354, Col_5738523675897553270 =  @Col_5738523675897553270, Col_5724648397005188929 =  @Col_5724648397005188929, Col_5150378410502021558 =  @Col_5150378410502021558, Col_5150238976164030821 =  @Col_5150238976164030821, Col_4973100433102665678 =  @Col_4973100433102665678, Col_5209939103483890987 =  @Col_5209939103483890987, Col_4804226963426195138 =  @Col_4804226963426195138, Col_5538532305009285066 =  @Col_5538532305009285066, Col_4636532424394902227 =  @Col_4636532424394902227, Col_5417635295906277410 =  @Col_5417635295906277410, Col_4838564445226209905 =  @Col_4838564445226209905, Col_4647773901884335145 =  @Col_4647773901884335145, Col_5266482798981468614 =  @Col_5266482798981468614, Col_5758762721732505115 =  @Col_5758762721732505115, Col_4938308427061897607 =  @Col_4938308427061897607, Col_5183947771732858935 =  @Col_5183947771732858935, Col_4995533338641167379 =  @Col_4995533338641167379, Col_5591840014643513848 =  @Col_5591840014643513848, Col_5243519420555067860 =  @Col_5243519420555067860, Col_5132155074427207127 =  @Col_5132155074427207127, Col_5662217081009761575 =  @Col_5662217081009761575, Col_5220620902125066610 =  @Col_5220620902125066610, Col_5666353536888725103 =  @Col_5666353536888725103, Col_5443758597500893918 =  @Col_5443758597500893918, Col_5343950136022904724 =  @Col_5343950136022904724, Col_4697873506575570740 =  @Col_4697873506575570740, Col_5568970676742359854 =  @Col_5568970676742359854, Col_5626556152912671128 =  @Col_5626556152912671128, Col_4688451764383907719 =  @Col_4688451764383907719, Col_4669232414997773258 =  @Col_4669232414997773258, Col_4859239441948670019 =  @Col_4859239441948670019, Col_5265233019818142125 =  @Col_5265233019818142125, Col_5506921329922687913 =  @Col_5506921329922687913, Col_5474736857145248079 =  @Col_5474736857145248079, Col_5464357723432469235 =  @Col_5464357723432469235, Col_4786962185969475179 =  @Col_4786962185969475179, Col_4882272451934286700 =  @Col_4882272451934286700, Col_5286295664072768338 =  @Col_5286295664072768338, Col_4866237595884546157 =  @Col_4866237595884546157, Col_4839123484665695911 =  @Col_4839123484665695911, Col_5639913882214238562 =  @Col_5639913882214238562, Col_5217129348169415114 =  @Col_5217129348169415114, Col_4763977174989292395 =  @Col_4763977174989292395, Col_5255399125036515846 =  @Col_5255399125036515846, Col_5729362453248064269 =  @Col_5729362453248064269, Col_5581141407921292751 =  @Col_5581141407921292751, Col_4818312992012446291 =  @Col_4818312992012446291, Col_5481088134109499185 =  @Col_5481088134109499185, Col_4665967948789191520 =  @Col_4665967948789191520, Col_4843974103575279809 =  @Col_4843974103575279809, Col_5626482120269590337 =  @Col_5626482120269590337, Col_5347612118525905609 =  @Col_5347612118525905609, Col_4825489060297649621 =  @Col_4825489060297649621, Col_5192361472626038383 =  @Col_5192361472626038383, Col_5516976854451683700 =  @Col_5516976854451683700, Col_4975186370815220673 =  @Col_4975186370815220673, Col_4655348426068110759 =  @Col_4655348426068110759, Col_4875558306346267617 =  @Col_4875558306346267617, Col_4795065758229322170 =  @Col_4795065758229322170, Col_5094607077792705164 =  @Col_5094607077792705164, Col_5497800083366103290 =  @Col_5497800083366103290, Col_5716290874951705075 =  @Col_5716290874951705075, Col_5485778130039395725 =  @Col_5485778130039395725, Col_5036804729879951345 =  @Col_5036804729879951345, Col_4844487118598404545 =  @Col_4844487118598404545, Col_5509714113749934332 =  @Col_5509714113749934332, Col_5447522547560323991 =  @Col_5447522547560323991, Col_5371746024198239615 =  @Col_5371746024198239615, Col_5115924373474858497 =  @Col_5115924373474858497, Col_4826610513644201043 =  @Col_4826610513644201043, Col_5760154045432193711 =  @Col_5760154045432193711, Col_5659335003033723732 =  @Col_5659335003033723732, Col_5168659056268343420 =  @Col_5168659056268343420, Col_5162934944876769201 =  @Col_5162934944876769201, Col_4872620607267697235 =  @Col_4872620607267697235, Col_5322494452124026796 =  @Col_5322494452124026796, Col_5378483359704304450 =  @Col_5378483359704304450, Col_5538917384814042880 =  @Col_5538917384814042880, Col_5314528432430841199 =  @Col_5314528432430841199 WHERE [frm243Id] = @PKFormId 
 END 
GO
GO
----------
 IF (SELECT COUNT(*) FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm243'  ) = 1 
 BEGIN 
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_Cfrm5466932434815057100') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_Cfrm5466932434815057100] ( [Cfrm5466932434815057100Id]  [bigint] IDENTITY(1,1) NOT NULL , [frm243Id]  [bigint] NULL , [Col_5466932434815057100]  [bigint] NULL ,  PRIMARY KEY CLUSTERED ( [Cfrm5466932434815057100Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  
 ALTER TABLE [dbo].[Tbl_Cfrm5466932434815057100] WITH NOCHECK ADD  CONSTRAINT [FK_frm54669324348150571001]  FOREIGN KEY ([frm243Id]) REFERENCES [dbo].[Tbl_frm243] ([frm243Id]) 
 ALTER TABLE [dbo].[Tbl_Cfrm5466932434815057100] CHECK CONSTRAINT [FK_frm54669324348150571001] END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm5466932434815057100' AND COLUMN_NAME = 'Cfrm5466932434815057100Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm5466932434815057100] ADD Cfrm5466932434815057100Id bigint NOT NULL END 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm5466932434815057100' AND COLUMN_NAME = 'frm243Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm5466932434815057100] ADD frm243Id bigint NOT NULL END 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm5466932434815057100' AND COLUMN_NAME = 'Col_5466932434815057100' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm5466932434815057100] ADD Col_5466932434815057100 bigint NOT NULL END 
 END 
 END 
 GO 
----------
