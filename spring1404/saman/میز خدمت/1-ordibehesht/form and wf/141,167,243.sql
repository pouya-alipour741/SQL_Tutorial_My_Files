GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 141) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (141, N'فرم پایه میزخدمت ',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1561" Height="758.51666667" Background="White">
  <Canvas Width="1534" Height="737">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>4854295578190589708</ID>
        <Name>انتخاب یکی از موارد 4</Name>
        <Condition>({@rbnHirarchy4.Value} ==False) &amp;&amp; ({@rbnPersonAcc4.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد تاییدیه سلسله مراتبی درخواست / اشخاص تایید کننده درخواست را انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5322325159627758245</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5137043738733234862</ComponentID>
            <ComponentName>rbnPersonAcc4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5253042623943990403</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5081699084573161713</ID>
        <Name>انتخاب یکی از موارد </Name>
        <Condition>({@rbnRoundRabin.Value} ==False) &amp;&amp; ({@rbnPrivate.Value} ==False) &amp;&amp; ({@rbnGroup.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد شخصی / راندرابین / گروهی را انتخاب کنید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5274263548684808881</ComponentID>
            <ComponentName>rbnRoundRabin</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5317086292795360011</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5540986736218024796</ComponentID>
            <ComponentName>rbnPrivate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5738233341510300132</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5353767825611093820</ComponentID>
            <ComponentName>rbnGroup</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5216656268899333369</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5522434525603585355</ID>
        <Name>انتخاب گروهی اقدام کننده</Name>
        <Condition>({@rbnGroup.Value} ==True) &amp;&amp; ({@cmbGroupName.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا گروه مورد نظر را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5353767825611093820</ComponentID>
            <ComponentName>rbnGroup</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5282830118983293835</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4818150681943631791</ComponentID>
            <ComponentName>cmbGroupName</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5084099890553122172</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4880688901836648820</ID>
        <Name>انتخاب تعداد سطوح اقدام</Name>
        <Condition>("{@txtHierarchyLevel4.Value}" =="''''") &amp;&amp; ({@rbnHirarchy4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تعداد سطوح سلسله مراتب را مشخص کنید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5430364406490735121</ComponentID>
            <ComponentName>txtHierarchyLevel4</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5224251682471362356</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5432333462431545396</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5383745149548614592</ID>
        <Name>کمبوهای اجباری شخصی 4</Name>
        <Condition>({@chkForceCombo4.Value} ==True) &amp;&amp; ({@rbnPersonAcc4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست، عنوان درخواست و کاربر را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5750404642420030986</ComponentID>
            <ComponentName>chkForceCombo4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5224803982925853530</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5137043738733234862</ComponentID>
            <ComponentName>rbnPersonAcc4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5261345019997956377</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5671351916939755458</ID>
        <Name>کمبوهای اجباری سلسله مراتبی 3</Name>
        <Condition>({@chkForceCombo3.Value} ==True) &amp;&amp; ({@rbnHierarchy.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیر گروه، نوع درخواست و عنوان درخواست را انتخاب کنید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5247095645906577244</ComponentID>
            <ComponentName>chkForceCombo3</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5515655169029803158</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnHierarchy</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5380665414205133197</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5470929817002576955</ID>
        <Name>کمبوهای اجباری شخصی 3</Name>
        <Condition>({@chkForceCombo3.Value} ==True) &amp;&amp; ({@rbnPersonAcc.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه،نوع درخواست، عنوان درخواست و کاربر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5247095645906577244</ComponentID>
            <ComponentName>chkForceCombo3</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5217434965872995458</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5408605046420899582</ComponentID>
            <ComponentName>rbnPersonAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4789222553515693474</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5586747621371589399</ID>
        <Name>اجباری اقدام کننده</Name>
        <Condition>({@chkForceCombo.Value} ==True) &amp;&amp; ({@rbnPrivate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیر گروه، نوع درخواست، عنوان درخواست و کاربر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5694591723591438281</ComponentID>
            <ComponentName>chkForceCombo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4677267438399336083</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5540986736218024796</ComponentID>
            <ComponentName>rbnPrivate</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5734331979258723570</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5743287254942614538</ID>
        <Name>کمبوهای اجباری سلسله مراتبی 4</Name>
        <Condition>({@chkForceCombo4.Value} ==True) &amp;&amp; ({@rbnHirarchy4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5750404642420030986</ComponentID>
            <ComponentName>chkForceCombo4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5724588807283934061</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5484144042050388697</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5312539210166549360</ID>
        <Name>اجباری موارد اقدام کنندگان</Name>
        <Condition>({@chActiveButton.Value} ==-1) || ({@cmbRequestSubjectForEghdam.Value} ==-1) || ({@cmbSubGroupForEghdam.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5456563802719509205</ComponentID>
            <ComponentName>chActiveButton</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5557364710794934989</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5094466931308842551</ComponentID>
            <ComponentName>cmbRequestSubjectForEghdam</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5614387916969747025</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>4826009166159449630</ComponentID>
            <ComponentName>cmbSubGroupForEghdam</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5757160268260354674</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5046876198386289117</ID>
        <Name>اجباری موارد افراد مجاز</Name>
        <Condition>({@cmbAllowAbleSubGroupID.Value} ==-1) || ({@cmbAllowAbleRequestSubject.Value} ==-1) || ({@cmbAllowAbleRequestKindID.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4892227114633198821</ComponentID>
            <ComponentName>cmbAllowAbleSubGroupID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4622487776063432623</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5677450966544964473</ComponentID>
            <ComponentName>cmbAllowAbleRequestSubject</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5626826624182464009</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5008755893319791604</ComponentID>
            <ComponentName>cmbAllowAbleRequestKindID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5410487821719908570</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4620333210430668729</ID>
        <Name>محل استقرار</Name>
        <Condition>({@cmbLocation.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد محل استقرار اجباری می باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5050022801165709513</ComponentID>
            <ComponentName>cmbLocation</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4998945802297267682</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4972265920432692656</ID>
        <Name>اجباری-بدون تایید</Name>
        <Condition>({@chkCheckValidateNotAcc.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد های زیر گروه،نوع درخواست و عنوان درخواست اجباری می باشند</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4856264153266251646</ComponentID>
            <ComponentName>chkCheckValidateNotAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5650922252213217484</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5663299565898728487</ID>
        <Name>اطلاعات فعال</Name>
        <Condition>({@chkCheckExists.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>با عنوان درخواست و محل استقرار درج شده اطلاعات فعالی موجود می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4868634925841731922</ComponentID>
            <ComponentName>chkCheckExists</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4873345838695030313</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5402851422252158988</ID>
        <Name>فقط سطح</Name>
        <Condition>({@rbnOnlyLevel.Value} ==True) &amp;&amp; ({@txtHierarchyOnlyLevel.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد (فقط سطح) اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4642743964458069529</ComponentID>
            <ComponentName>rbnOnlyLevel</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5728403456092121351</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5651316636483490825</ComponentID>
            <ComponentName>txtHierarchyOnlyLevel</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4758117329934446380</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5134564919795866319</ID>
        <Name>اجباری راندرابین</Name>
        <Condition>({@rbnRoundRabin.Value} ==True) &amp;&amp; ("{@cmbGroupName.Value}" =="-1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا گروه مورد نظر را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5274263548684808881</ComponentID>
            <ComponentName>rbnRoundRabin</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4756305518083472272</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4818150681943631791</ComponentID>
            <ComponentName>cmbGroupName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5731495421163665896</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5485195571572086527</ID>
        <Name>تکراری اقدام</Name>
        <Condition>({@chkCheckExistsEghdam.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>با عنوان درخواست انتخاب شده اطلاعات فعالی موجود می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4714712306533876512</ComponentID>
            <ComponentName>chkCheckExistsEghdam</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5276704408009819626</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5539938603151312102</ID>
        <Name>انتخاب تعدا سطوح درخواست</Name>
        <Condition>("{@txtHierarchyLevel.Value}" =="''''") &amp;&amp; ({@rbnToLevel.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تعداد سطوح سلسله مراتب را مشخص کنید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4849458309856855812</ComponentID>
            <ComponentName>txtHierarchyLevel</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5251277732471984034</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnToLevel</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5069793390454914522</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5614079753730481623</ID>
        <Name>انتخاب یکی لز موارد سلسله مراتب </Name>
        <Condition>({@rbnHierarchy.Value} ==False) &amp;&amp; ({@rbnPersonAcc.Value} ==False) &amp;&amp; ({@rbnNotAcc.Value} ==False) &amp;&amp; ({@rbnManagerConfirmation.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد تاییدیه سلسله مراتبی درخواست / اشخاص تایید کننده درخواست/تایید مدیر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnHierarchy</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4748440666643130129</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5408605046420899582</ComponentID>
            <ComponentName>rbnPersonAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5389315448043823576</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5730683233644939840</ComponentID>
            <ComponentName>rbnNotAcc</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4962623473610918672</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5292917656300919479</ComponentID>
            <ComponentName>rbnManagerConfirmation</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5022569820182960885</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox28" Width="1516" Height="722" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="4798201668750863841" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TZTabControl Name="TabControl4" Width="1488" Height="686.51666667" ControlID="4871163599880366250" Canvas.Left="8" Canvas.Top="8">
          <cm:TZTabItem HeaderText="زیرگروه">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox23" Width="1466" Height="644.03333334" Background="#FFDEEFF7" BorderBrush="#FFD5DFE5" ControlID="5225750305900421739" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView21" Width="1438" Height="606.55000001" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4654538436425488112" ItemsSource="{Binding ElementName=dsSubGroupRead, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSubGroupRead" cm:EventForAdd="dsSubGroup" cm:EventForEdit="dsSubGroup" cm:Form="151" cm:FormName="زیرگروه،فرم اطلاعات پایه میز خدمت" cm:KeyField="SubGroupID" cm:ParamValues="4892227114633198821¢SubGrpID$5677450966544964473¢ReqSubID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupID" DecimalMark="False" HeaderText="SubGroupID" IsRowColorField="False" KeyField="True" SortMemberPath="SubGroupID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام مدیر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsSubGroupRead" Content="dsSubGroupRead" Width="139" Height="25" ControlID="5244903530493884167" Canvas.Left="171" Canvas.Top="108.03333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_SubGroups_FRM151" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="نوع درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox24" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="4764468026618703409" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLookUpComboBox Name="cmbSubGroup" Width="354.78277405000017" Height="22" ControlID="5350339319748265747" Canvas.Left="1024.13333333" Canvas.Top="17" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsEnable,dsReadRequestKind" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable30" Content=":زیرگروه" ControlID="5325915927758238878" FontFamily="Tahoma" Canvas.Left="1387.9161073799999" Canvas.Top="14.516666666666611" />
                  <cm:tzDataGrid Name="GridView20" Width="1433.5" Height="560" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5661381937141166484" ItemsSource="{Binding ElementName=dsReadRequestKind, Path=DataItems}" Canvas.Left="8" Canvas.Top="48" cm:BindingForm="dsReadRequestKind" cm:EventForAdd="dsRequestKindID" cm:EventForEdit="dsRequestKindID" cm:Form="153" cm:FormName="نوع درخواست، فرم اطلاعات پایه میز خدمت" cm:KeyField="RequestKindID" cm:ParamValues="5350339319748265747¢SubGroupID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="4827349007716321152">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindID" DecimalMark="False" HeaderText="RequestKindID" IsRowColorField="False" KeyField="True" SortMemberPath="RequestKindID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه " IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZButton Name="Button48" Content="جستجو" Width="167" Height="23" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:ControlID="5677927008580536168" cm:Event="dsReadRequestKind" />
                  <cm:tzDataSource Name="dsReadRequestKind" Content="dsReadRequestKind" Width="110" Height="25" ControlID="5304657148491250252" Canvas.Left="325" Canvas.Top="153.99999999666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_RequestKind_FRM153">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="4728373506184342381" Canvas.Left="913.13333332999991" Canvas.Top="13.999999999999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzDataSource Name="dsEnable" Content="dsEnable" Width="110" Height="25" ControlID="4793645083043692532" Canvas.Left="468.54340836000006" Canvas.Top="14" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenComboIsNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable" Content="chkEnable" Width="120" Height="20" ControlID="4721231163390093653" FontFamily="Tahoma" Canvas.Left="607.99999999999989" Canvas.Top="19" cm:DataBinding="dsEnable" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5661381937141166484#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="عنوان درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox26" Width="1466" Height="644.0333333366666" Background="#FFDEEFF7" ControlID="5367413166179197217" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas Width="1476" Height="624.51666667">
                  <cm:tzDataGrid Name="GridView31" Width="1438" Height="572.96666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4880318387681725900" ItemsSource="{Binding ElementName=dsReasRequestSubject, Path=DataItems}" Canvas.Left="8" Canvas.Top="43.55" cm:BindingForm="dsReasRequestSubject" cm:EventForAdd="dsRequestSubject" cm:EventForEdit="dsRequestSubject" cm:Form="155" cm:FormName="عنوان درخواست، فرم اطلاعات پایه میزخدمت" cm:KeyField="RequestSubjectID" cm:ParamValues="4942403356356019292¢SubGroupID$5276893744932336389¢SubRequestKindID" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="4903233949669444429">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectID" DecimalMark="False" HeaderText="RequestSubjectID" IsRowColorField="False" KeyField="True" SortMemberPath="RequestSubjectID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TimeDuration" DecimalMark="False" HeaderText="مدت زمان SLA" IsRowColorField="False" KeyField="False" SortMemberPath="TimeDuration">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TimeDuration}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzLabel Name="Lable26" Content=":نوع درخواست" ControlID="5560379382152212592" FontFamily="Tahoma" Canvas.Left="930" Canvas.Top="8.0666666699999041" />
                  <cm:tzLabel Name="Lable34" Content=":زیرگروه" FontFamily="Tahoma" Canvas.Left="1387.6333333333334" Canvas.Top="8.0666666699999041" cm:ControlID="4783999997367959318" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID" Width="313" Height="22" Canvas.Left="1065" Canvas.Top="10.550000000000011" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4942403356356019292" cm:DataBinding="dsSubGroup" cm:Event="dsReasRequestSubject,dsEnable2,dsRequestKindID" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID" Width="313" Height="22" Canvas.Left="608" Canvas.Top="10.550000003333253" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5276893744932336389" cm:DataBinding="dsRequestKindID" cm:Event="dsReasRequestSubject,dsEnable2" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsReasRequestSubject" Content="dsReasRequestSubject" Width="206" Height="25" ControlID="4845498683050207478" Canvas.Left="401" Canvas.Top="180.51666666000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_RequestSubject_FRM155">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbSubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   {@cmbRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbRequestKindID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button49" Content="جستجو" Width="178" Height="23" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="9.55000000333325" cm:ControlID="4792355170374852626" cm:Event="dsReasRequestSubject" />
                  <cm:tzDataSource Name="dsRequestKindID" Content="dsRequestKindID" Width="110" Height="25" ControlID="4865574286142649124" Canvas.Left="720.10128617000009" Canvas.Top="17.550000003333253" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsEnable2" Content="dsEnable2" Width="110" Height="25" ControlID="5246080342187869674" Canvas.Left="321.6672025700002" Canvas.Top="7.5500000033332526" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenCombosAreNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKindID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable2" Content="chkEnable2" Width="120" Height="20" ControlID="4718280222361325084" FontFamily="Tahoma" Canvas.Left="476.39389067999991" Canvas.Top="22.550000003333253" cm:DataBinding="dsEnable2" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4880318387681725900#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsSubGroupID" Content="dsSubGroupID" Width="110" Height="25" ControlID="4681298825570567329" Canvas.Left="981.92211838000048" Canvas.Top="-26.000000000000057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="عنوان فیلد">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox2526" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5747898673709125881" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView45" Width="1438" Height="541.99999999999989" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4663391460458464416" ItemsSource="{Binding ElementName=dsReadFieldSubject, Path=DataItems}" Canvas.Left="8" Canvas.Top="72.550000010000076" cm:BindingForm="dsReadFieldSubject" cm:Form="157" cm:FormName="عنوان فیلد، فرم پایه میزخدمت" cm:KeyField="FieldSubjectID" cm:ParamValues="4941026096929921893¢RequestSubjectID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:Validations4Add="5586747621371589399,5081699084573161713,5522434525603585355" cm:Validations4Delete="5586747621371589399,5081699084573161713,5522434525603585355" cm:Validations4Edit="5586747621371589399,5081699084573161713,5522434525603585355" cm:ViewLayoutId="5059001035720893695">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectID" DecimalMark="False" HeaderText="FieldSubjectID" IsRowColorField="False" KeyField="True" SortMemberPath="FieldSubjectID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsNeedCertificate" DecimalMark="False" HeaderText="نیاز به بارگذاری مدرک" IsRowColorField="False" KeyField="False" SortMemberPath="IsNeedCertificate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsNeedCertificate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="103" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="InsertOrSelectInfo" DecimalMark="False" HeaderText="درج یا انتخاب مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="InsertOrSelectInfo">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding InsertOrSelectInfo}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="43" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsMandatory" DecimalMark="False" HeaderText="اجباری" IsRowColorField="False" KeyField="False" SortMemberPath="IsMandatory">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsMandatory}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ItemType" DecimalMark="False" HeaderText="نوع ایتم " IsRowColorField="False" KeyField="False" SortMemberPath="ItemType">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ItemType}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ordering" DecimalMark="False" HeaderText="ترتیب" IsRowColorField="False" KeyField="False" SortMemberPath="ordering">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ordering}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5442082000093336424" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="321" Height="22" ControlID="4941026096929921893" Canvas.Left="8" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject5" cm:Event="dsReadFieldSubject,dsEnable3" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsReadFieldSubject" Content="dsReadFieldSubject" Width="110" Height="25" ControlID="4783005421192912395" Canvas.Left="410" Canvas.Top="154.03333333666683" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button43" Content="جستجو" Width="194" Height="23" ControlID="4752233602468350241" FontFamily="Tahoma" Canvas.Left="8.0000000000000853" Canvas.Top="40.550000009999962" cm:Event="dsReadFieldSubject" />
                  <cm:tzDataSource Name="dsEnable3" Content="dsEnable3" Width="110" Height="25" ControlID="5092178803662675304" Canvas.Left="383.20374701999953" Canvas.Top="72.550000010000019" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenComboIsNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable3" Content="chkEnable3" Width="120" Height="20" ControlID="5471496556158595679" FontFamily="Tahoma" Canvas.Left="726.20739549999985" Canvas.Top="77.550000010000076" cm:DataBinding="dsEnable3" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4663391460458464416#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzLabel Name="Lable38" Content=": عنوان درخواست" Height="23" ControlID="5314659477399008285" Canvas.Left="338.00000000000006" Canvas.Top="8.55000000999995" />
                  <cm:tzLabel Name="Lable143" Content=":زیرگروه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1397.6333333333334" Canvas.Top="7.066666676666614" cm:ControlID="5020292259776983349" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID5" Width="313" Height="22" Canvas.Left="1075.6333333333334" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4822823333807585022" cm:DataBinding="dsSubGroupID5" cm:Event="dsRequestKindID5" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzDataSource Name="dsSubGroupID5" Content="dsSubGroupID5" Width="110" Height="25" Canvas.Left="1088.95522388" Canvas.Top="6.5500000099999447" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4758379092434607172" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID5" Width="313" Height="22" Canvas.Left="525.20739550000008" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5016382732342712582" cm:DataBinding="dsRequestKindID5" cm:Event="dsRequestSubject5" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable146" Content=":نوع درخواست" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="847.20739550000008" Canvas.Top="7.0666666766666282" cm:ControlID="5353773497244044490" />
                  <cm:tzDataSource Name="dsRequestKindID5" Content="dsRequestKindID5" Width="110" Height="25" Canvas.Left="596.10128617000021" Canvas.Top="6.5500000099999482" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4629968209532716470" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID5}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsRequestSubject5" Content="dsRequestSubject5" Width="110" Height="25" Canvas.Left="78.552238809999835" Canvas.Top="-4.96666666666664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4671777547929868233" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID5}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID5}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="مقدار">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox295" Width="1472" Height="650" Background="#FFDEEFF7" ControlID="4952840046099429640" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable295" Content=":زیرگروه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1386.6133333333332" Canvas.Top="-6.400000003332921" cm:ControlID="5413016973464352860" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID6" Width="313" Height="22" Canvas.Left="1064.6133333333332" Canvas.Top="-3.9166666699996995" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4968127004479232849" cm:DataBinding="dsSubGroupID6" cm:Event="dsRequestKindID6" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzDataSource Name="dsSubGroupID6" Content="dsSubGroupID6" Width="110" Height="25" Canvas.Left="1072.1547110833342" Canvas.Top="4.0833333300003005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5086555903453570941" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzLabel Name="Lable298" Content=":نوع درخواست" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="869.00739550000037" Canvas.Top="-6.4000000033328082" cm:ControlID="5747840055524170153" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID6" Width="313" Height="22" Canvas.Left="547.0073955000006" Canvas.Top="-3.9166666699995858" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5055214696737490076" cm:DataBinding="dsRequestKindID6" cm:Event="dsRequestSubject6" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsRequestKindID6" Content="dsRequestKindID6" Width="110" Height="25" Canvas.Left="592.46795283" Canvas.Top="1.0833333300004133" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5649708080956196811" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable301" Content=": عنوان درخواست" Width="104" Height="23" Canvas.Left="337.6500000000002" Canvas.Top="-4.9166666699994739" cm:ControlID="5483524351267811238" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubject6" Width="321" Height="22" Canvas.Left="7.6500000000003006" Canvas.Top="-3.9166666699994703" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4646490773001678958" cm:DataBinding="dsRequestSubject6" cm:Event="dsReadFieldSubject6" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsRequestSubject6" Content="dsRequestSubject6" Width="110" Height="25" Canvas.Left="42.10223881" Canvas.Top="9.0833333300003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5487764314359942264" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbFieldSubject" Width="313" Height="22" Canvas.Left="1064.6133333333332" Canvas.Top="28.083333330000414" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5004530541336532292" cm:DataBinding="dsReadFieldSubject6" cm:Event="dsReadValue" cm:tzDisplayItem="FieldSubjectTitle" cm:tzValueItem="FieldSubjectID" />
                  <cm:TZButton Name="Button298" Content="جستجو" Width="75" Height="23" ControlID="5736419100476729168" Canvas.Left="7.6500000000003183" Canvas.Top="27.083333330000414" cm:Event="dsReadValue" />
                  <cm:tzDataGrid Name="GridView308" Width="1444.3499999999997" Height="556.43333334" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4627826788658858333" ItemsSource="{Binding ElementName=dsReadValue, Path=DataItems}" Canvas.Left="7.6500000000003183" Canvas.Top="64.08333333" cm:BindingForm="dsReadValue" cm:Event="dsGridViewID" cm:EventForEdit="dsReadValue" cm:Form="167" cm:FormName="مقدار فیلد، فرم پایه میز خدمت" cm:KeyField="FieldValueID" cm:ParamValues="5004530541336532292¢FieldSubjectID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueTitle" DecimalMark="False" HeaderText="مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueID" DecimalMark="False" HeaderText="FieldValueID" IsRowColorField="False" KeyField="True" SortMemberPath="FieldValueID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldManager" DecimalMark="False" HeaderText="مدیر رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldManager">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldManager}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsReadValue" Content="dsReadValue" Width="110" Height="25" ControlID="5406862607317526399" Canvas.Left="676.25739550000083" Canvas.Top="51.083333330000308" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Read_Tbl_CU_Base_FieldValue_FRM167">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbFieldSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable353" Content=":عنوان فیلد" Width="120" Height="23" ControlID="5446944034904846765" Canvas.Left="1386.6133333333332" Canvas.Top="27.083333330000414" />
                  <cm:tzDataSource Name="dsReadFieldSubject6" Content="dsReadFieldSubject6" Width="110" Height="25" Canvas.Left="1011.3166666699996" Canvas.Top="38.0833333300003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5694583863803622089" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject6}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem Header="تعیین اقدام کنندگان" cm:HeaderText="اقدام کنندگان">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox270" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5485182074641235185" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable271" Content=": زیر گروه" ControlID="5342109437082380350" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="23.308333336666635" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupForEghdam" Width="232.67666667000023" Height="22" ControlID="4826009166159449630" Canvas.Left="1070.72271168" Canvas.Top="25.79166667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsForceCombo,dsRequestKindID2" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable276" Content=": نوع درخواست" ControlID="5359039096774237642" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="70.520395396666686" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindForEghdam" Width="232.67666666999909" Height="22" ControlID="5456563802719509205" Canvas.Left="1070.7227116800011" Canvas.Top="72.791666669999927" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKindID2" cm:DataType="Int" cm:Event="dsForceCombo,dsRequestSubject" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable280" Content=":عنوان درخواست" ControlID="5662211107896670059" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="110.30833333666676" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubjectForEghdam" Width="232.67666666999935" Height="22" ControlID="5094466931308842551" Canvas.Left="1070.7227116800007" Canvas.Top="112.79166667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:DataType="Int" cm:Event="dsForceCombo,dsRead,dsCheckExists2" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:TZRadioButton Name="rbnGroup" Content="گروهی" ControlID="5353767825611093820" FontFamily="Tahoma" Canvas.Left="8.0000000000001137" Canvas.Top="24.791666669999927" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnPrivate" Content="شخصی" ControlID="5540986736218024796" Canvas.Left="307.19875195999992" Canvas.Top="24.791666669999927" cm:FCVCol="5667981522562062812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5667981522562062812#" cm:TMCol="5667981522562062812#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnRoundRabin" Content="راندرابین" ControlID="5274263548684808881" FontFamily="Tahoma" Canvas.Left="156.00000000000011" Canvas.Top="24.791666669999927" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZLookUp Name="LookUp290" Width="23.57270694" Height="27" ControlID="5667981522562062812" Canvas.Left="717.92604502000017" Canvas.Top="16.791666669999984" cm:Event="dsInsrtToText,dsSelectFullName">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzLabel Name="Lable310" Content=": جستجوی کاربر" ControlID="5682630187043737089" FontFamily="Tahoma" Canvas.Left="750.49875195999994" Canvas.Top="23.308333336666593" />
                  <cm:tzDataGrid Name="GridView314" Width="1435.42604502" Height="470.75833334" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5047768972367738346" ItemsSource="{Binding ElementName=dsRead, Path=DataItems}" Canvas.Left="5.6239549799999793" Canvas.Top="143.79166666666671" cm:BindingForm="dsRead" cm:Event="dsGridview,dsCheckExists2" cm:EventForAdd="dsCheckExists2" cm:EventForDelete="dsCheckExists2" cm:EventForEdit="dsCheckExists2" cm:KeyField="DetermineEghdamUserID" cm:UserCanExport="True" cm:UserCanInsert="False">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DetermineEghdamUserID" DecimalMark="False" HeaderText="DetermineEghdamUserID" IsRowColorField="False" KeyField="True" SortMemberPath="DetermineEghdamUserID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DetermineEghdamUserID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="موضوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DifferRadio" DecimalMark="False" HeaderText="نوع اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="DifferRadio">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DifferRadio}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="IsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="نام گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZButton Name="Button340" Content="ثبت" Width="68" Height="23" ControlID="5454547599311857170" FontFamily="Tahoma" Canvas.Left="87.000000000000114" Canvas.Top="111.79166667000004" cm:Event="dsInsert,dsRead" cm:Validations="5081699084573161713,5522434525603585355,5586747621371589399,5312539210166549360,5134564919795866319,5485195571572086527" />
                  <cm:TZButton Name="Button341" Content="حذف" Width="70" Height="23" ControlID="4899868185860172477" FontFamily="Tahoma" Canvas.Left="8.0000000000001137" Canvas.Top="111.79166667000004" cm:Event="dsDelete,dsRead" />
                  <cm:tzDataSource Name="dsInsert" Content="dsInsert" Width="110" Height="25" ControlID="5547239877992471335" Canvas.Left="8.0000000000001137" Canvas.Top="303.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_InsertInto_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPrivate}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Private" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRoundRabin}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @RoundRabin" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGroup}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Group" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsActive}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Isactive" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbGroupName}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @GroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="110" Height="25" ControlID="4645150676024804602" Canvas.Left="8.0000000000001137" Canvas.Top="337.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141 {@txtDeleteRow}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp290}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPrivate}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Private" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRoundRabin}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @RoundRabin" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGroup}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Group" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserID" Width="120" Height="21" ControlID="5016914736049017937" Canvas.Left="131.00839825999958" Canvas.Top="273.10833334000006" cm:DataBinding="dsInsrtToText" cm:DataBindingField="Column1" cm:Event="dsForceCombo" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsInsrtToText" Content="dsInsrtToText" Width="110" Height="25" ControlID="4760347381838657308" Canvas.Left="8.0000000000001137" Canvas.Top="269.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp290}" />
                  <cm:tzDataSource Name="dsForceCombo" Content="dsForceCombo" Width="110" Height="25" ControlID="5337117101913305963" Canvas.Left="8.0000000000001119" Canvas.Top="235.10833334000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ForceVariablesToUserEghdam">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubject" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkForceCombo" Content="chkForceCombo" Width="120" Height="20" ControlID="5694591723591438281" FontFamily="Tahoma" Canvas.Left="131.00839825999958" Canvas.Top="240.1083333400002" cm:DataBinding="dsForceCombo" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                  <cm:tzLabel Name="Lable63" Content="*" ControlID="5627434139850470462" FontFamily="Tahoma" Canvas.Left="1366.26604502" Canvas.Top="13.308333336666649" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable64" Content="*" FontFamily="Tahoma" Canvas.Left="1411.5000000000002" Canvas.Top="70.520395396666686" cm:ControlID="5507513799362920190" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable65" Content="*" FontFamily="Tahoma" Canvas.Left="1411.5000000000002" Canvas.Top="110.30833333666678" cm:ControlID="4671192657098280680" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable66" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="844.06541862666666" Canvas.Top="14.791666669999986" cm:ControlID="5551220597187464654" cm:ForeColor="#FFF90404" />
                  <cm:tzDataSource Name="dsGridview" Content="dsGridview" Width="110" Height="25" ControlID="5717000300060544390" Canvas.Left="8.0000000000001137" Canvas.Top="439.10833334000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView314.SelectedRowItem}" />
                  <cm:tzTextBox Name="txtDeleteRow" Width="120" Height="21" ControlID="4990715908260578320" Canvas.Left="131.00839825999958" Canvas.Top="443.10833334000017" cm:DataBinding="dsGridview" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsRead" Content="dsRead" Width="110" Height="25" ControlID="5747119805119259443" Canvas.Left="8.0000000000001066" Canvas.Top="371.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button71" Content="جستجو" Width="147" Height="23" ControlID="4873382935564796619" FontFamily="Tahoma" Canvas.Left="8.00000000000001" Canvas.Top="71.791666669999927" cm:Event="dsRead" />
                  <cm:tzDataSource Name="dsRequestKindID2" Content="dsRequestKindID2" Width="110.00000000000011" Height="25" ControlID="4715466671391730517" Canvas.Left="8" Canvas.Top="512.75833334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkIsActive" Content="فعال" ControlID="5411635696962178764" FontFamily="Tahoma" Canvas.Left="469.92604501999995" Canvas.Top="119.69332663551518" cm:DefaultValue="true" />
                  <cm:tzLabel Name="Lable155" Content=": نام گروه" ControlID="5116137059243486065" FontFamily="Tahoma" Canvas.Left="750.49875196" Canvas.Top="71.791666669999813" />
                  <cm:tzLookUpComboBox Name="cmbGroupName" Width="271.5727069400001" Height="22" ControlID="4818150681943631791" Canvas.Left="469.92604501999995" Canvas.Top="72.791666669999927" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGroupName" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
                  <cm:tzDataSource Name="dsGroupName" Content="dsGroupName" Width="110" Height="25" ControlID="5160304345284955323" Canvas.Left="8.0000000000001137" Canvas.Top="405.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GroupName_FRM141" />
                  <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5336654733944300285" Canvas.Left="8.0000000000001172" Canvas.Top="473.10833334000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="     @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="     @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckExists2" Content="dsCheckExists2" Width="110" Height="25" ControlID="5178484283304823112" Canvas.Left="228.48381070999997" Canvas.Top="60.106735159999971" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckExists_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExistsEghdam" Content="chkCheckExistsEghdam" Width="120" Height="20" ControlID="4714712306533876512" FontFamily="Tahoma" Canvas.Left="228.48381071000006" Canvas.Top="114.79166667000023" cm:DataBinding="dsCheckExists2" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="TextBox220" Width="236" Height="21" ControlID="5176516729340273551" Canvas.Left="469.92604501999995" Canvas.Top="22.791666669999984" cm:DataBinding="dsSelectFullName" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullName" Content="dsSelectFullName" Width="110" Height="25" ControlID="4799228042320276838" Canvas.Left="502.48353156000007" Canvas.Top="22.791666669999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUp290}" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem cm:HeaderText="تعیین تاییدکنندگان درخواست" cm:Len="50">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox167" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5266226986996280006" Canvas.Left="8" Canvas.Top="8" cm:Header="تاییدکنندگان درخواست">
                <Canvas>
                  <cm:tzLabel Name="Lable167" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="391.07395498000022" Canvas.Top="7.7916666599999758" cm:ControlID="4963234490997945622" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable168" Content=":عنوان درخواست" Width="96" Height="23" FontFamily="Tahoma" Canvas.Left="306.00000000000017" Canvas.Top="17.550000000000068" cm:ControlID="4794311198097302307" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubject3" Width="277.83728831333389" Height="22" Canvas.Left="16.45" Canvas.Top="18.55" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4695208060128895821" cm:DataBinding="dsRequestSubject3" cm:DataType="Int" cm:Event="dsForceCombo3,dsRead3,dsCheckValidateNotACc,dsCheckExists" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzLabel Name="Lable170" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="1057.3432039233335" Canvas.Top="7.3436297099999592" cm:ControlID="5664112840923541975" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable171" Content=": نوع درخواست" FontFamily="Tahoma" Canvas.Left="969.55653725666639" Canvas.Top="13.860296376666724" cm:ControlID="5305502393838481622" />
                  <cm:tzLookUpComboBox Name="cmbRequestKind3" Width="321.99999999999989" Height="22" Canvas.Left="637.88261307000016" Canvas.Top="17.79166666" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4651851275301820523" cm:DataBinding="dsUniRequestKind3" cm:DataType="Int" cm:Event="dsForceCombo3,dsRequestSubject3,dsCheckValidateNotACc" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable173" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="1427.07395498" Canvas.Top="7.7916666599999758" cm:ControlID="4907342242869783054" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable174" Content=": زیر گروه" FontFamily="Tahoma" Canvas.Left="1370.2072883133335" Canvas.Top="13.358660513333419" cm:ControlID="5653579526968834073" />
                  <cm:tzLookUpComboBox Name="cmbSubGroup3" Width="232" Height="22" Canvas.Left="1129.2072883133328" Canvas.Top="18.550000000000068" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5168525964139324294" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsUniRequestKind3,dsForceCombo3,dsCheckValidateNotACc" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzTextBox Name="txtPersonelCode" Width="219.71271168666584" Height="21" ControlID="5414923781258442294" Canvas.Left="303.28728831333416" Canvas.Top="166.26786173" cm:DataBinding="dsUsername" cm:DataBindingField="PersonnelCode" cm:DefaultValue="20" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtFullName" Width="322" Height="21" ControlID="5681758030317426284" Canvas.Left="637.88261307" Canvas.Top="55.79166666" cm:DataBindingField="FullName" />
                  <cm:tzLabel Name="Lable31" Content=":نام و نام خانوادگی" Width="NaN" Height="NaN" ControlID="4882734652087162626" FontFamily="Tahoma" Canvas.Left="968.43457611999975" Canvas.Top="52.860296376666625" />
                  <cm:tzLabel Name="Lable1801" Content=":کد پرسنلی" Width="NaN" Height="NaN" ControlID="5758636270575605864" Canvas.Left="531.99999999999966" Canvas.Top="162.7845283966667" cm:IsVisibleItem="False" />
                  <cm:TZRadioButton Name="rbnPersonAcc" Content="اشخاص تایید کننده درخواست" Width="NaN" Height="NaN" ControlID="5408605046420899582" FontFamily="Tahoma" Canvas.Left="1201.2272883133328" Canvas.Top="99.934993300000031" cm:Event="dsForceCombo3,dsCheckExists" cm:FCVCol="5439769809059311180#5490808733585292313#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5113014426144589614#" cm:TMCol="" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnHierarchy" Content="تاییدیه سلسله مراتبی درخواست" Width="NaN" Height="NaN" ControlID="5352495781335708805" Canvas.Left="1195.2372883133328" Canvas.Top="138.42879403000023" cm:Event="dsSelectrbnHierarchy,dsCheckExists" cm:FCVCol="4849458309856855812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkActive3" Content="فعال" Width="NaN" Height="NaN" ControlID="5022571717356221893" FontFamily="Tahoma" Canvas.Left="147.44501964569255" Canvas.Top="137.33045399551543" cm:DefaultValue="true" />
                  <cm:tzDataGrid Name="GridView176" Width="1438" Height="418.28213828" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5597526069357991752" ItemsSource="{Binding ElementName=dsRead3, Path=DataItems}" Canvas.Left="16.45" Canvas.Top="196.26786173" cm:BindingForm="dsRead3" cm:Event="dsGridview3,dsCheckExists" cm:EventForAdd="dsCheckExists" cm:EventForDelete="dsCheckExists" cm:EventForEdit="dsCheckExists" cm:Form="31253" cm:FormName="فرم جستجوی افراد مجاز" cm:KeyField="DetermineRequestAccID" cm:UserCanExport="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DetermineRequestAccID" DecimalMark="False" HeaderText="DetermineRequestAccID" IsRowColorField="False" KeyField="True" SortMemberPath="DetermineRequestAccID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DetermineRequestAccID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="موضوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LocationTitle" DecimalMark="False" HeaderText="محل استقرار" IsRowColorField="False" KeyField="False" SortMemberPath="LocationTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LocationTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalatEntekhab" DecimalMark="False" HeaderText="نوع تایید کنندگان" IsRowColorField="False" KeyField="False" SortMemberPath="HalatEntekhab">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalatEntekhab}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="71" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HierarchyLevel" DecimalMark="False" HeaderText="تا سطوح" IsRowColorField="False" KeyField="False" SortMemberPath="HierarchyLevel">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HierarchyLevel}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="chkActive3" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="chkActive3">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding chkActive3}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZLookUp Name="LookUp133" Width="24.64392419" Height="27" ControlID="5113014426144589614" Canvas.Left="938.67051859333344" Canvas.Top="90.934993300000031" cm:Event="dsUserID3,dsSelectFullNameSec">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse DataGridId="5606949984111759610" DisplayMemberColumn="UserName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzDataSource Name="dsUserID3" Content="dsUserID3" Width="109.99999999999962" Height="25" ControlID="4630812749104244163" Canvas.Left="16.450000000000486" Canvas.Top="572.52867138000011" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp133}" />
                  <cm:tzDataSource Name="dsUniRequestKind3" Content="dsUniRequestKind3" Width="110" Height="25" ControlID="5354202491455567599" Canvas.Left="16.450000000000159" Canvas.Top="448.21460573" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsUsername" Content="dsUsername" Width="110" Height="25" ControlID="5168723378048164709" Canvas.Left="16.450000000000159" Canvas.Top="490.74865591" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetFullnameFromUserID_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button154" Content="حذف" Width="87.0000000000004" Height="23" ControlID="4736618890617257223" FontFamily="Tahoma" Canvas.Left="16.450000000000784" Canvas.Top="172.26786173000022" cm:Event="dsDelete3,dsRead3" />
                  <cm:TZButton Name="Button223" Content="ثبت" Width="77" Height="23" ControlID="5678713095758122645" FontFamily="Tahoma" Canvas.Left="112.45000000000158" Canvas.Top="172.26786173000022" cm:Event="dsInsert3,dsRead3" cm:Validations="5671351916939755458,5470929817002576955,5614079753730481623,4972265920432692656,5663299565898728487,5402851422252158988,5539938603151312102" />
                  <cm:TZButton Name="Button224" Content="جستجو" Width="87.0000000000004" Height="23" ControlID="4898276921775158352" FontFamily="Tahoma" Canvas.Left="16.4500000000005" Canvas.Top="136.10692943000026" cm:Event="dsRead3" />
                  <cm:tzDataSource Name="dsForceCombo3" Content="dsForceCombo3" Width="110" Height="25" ControlID="5578437259237172074" Canvas.Left="16.450000000000387" Canvas.Top="364.4497548999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ForceVariablesToUserHirarchy">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKind3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtUserID3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserID3" Width="120.00000000000046" Height="21" ControlID="5439769809059311180" Canvas.Left="135.44999999999985" Canvas.Top="576.52867138000011" cm:DataBinding="dsUserID3" cm:DataBindingField="Column1" cm:Event="dsUsername,dsForceCombo3" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkForceCombo3" Content="chkForceCombo3" Width="120" Height="20" ControlID="5247095645906577244" FontFamily="Tahoma" Canvas.Left="135.45000000000061" Canvas.Top="369.4497548999999" cm:DataBinding="dsForceCombo3" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsInsert3" Content="dsInsert3" Width="110" Height="25" ControlID="5524510087478913760" Canvas.Left="16.450000000000387" Canvas.Top="321.02058823999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkActive3}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkActive3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @HierarchyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnToLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnToLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOnlyLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyOnlyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtHierarchyOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmation" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtDeleteRow3" Width="120" Height="21" ControlID="5250195443269286936" Canvas.Left="135.45000000000033" Canvas.Top="237.8946078400005" cm:DataBinding="dsGridview3" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsGridview3" Content="dsGridview3" Width="110" Height="25" ControlID="5002854636703324471" Canvas.Left="24.450000000000319" Canvas.Top="207.89460784000079" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView176.SelectedRowItem}" />
                  <cm:tzDataSource Name="dsDelete3" Content="dsDelete3" Width="110" Height="25" ControlID="4688230333647347580" Canvas.Left="16.450000000000387" Canvas.Top="276.93970587999996" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDeleteRow3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtDeleteRow" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsRead3" Content="dsRead3" Width="110" Height="25" ControlID="5123597645216804655" Canvas.Left="16.450000000000387" Canvas.Top="237.89460784000039" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkDisable" Content="chkDisable" Width="81" Height="20" ControlID="5669143527926527564" FontFamily="Tahoma" Canvas.Left="135.45000000000061" Canvas.Top="409.47916665999992" cm:DataBinding="dsDisable" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="5414923781258442294#5681758030317426284#5733345626838227956#5225204988739951888#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="110" Height="25" ControlID="4746838933069988153" Canvas.Left="16.450000000000387" Canvas.Top="404.47916665999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 " />
                  <cm:tzLabel Name="Lable161162" Content=":جستجوی کاربر" Canvas.Left="967.52653725666642" Canvas.Top="96.4516599655152" cm:ControlID="5109008466549891160" />
                  <cm:tzDataSource Name="dsRequestSubject3" Content="dsRequestSubject3" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="16.450000000000156" Canvas.Top="533.02464157000009" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable228" Content=":تا سطح" Width="NaN" Height="NaN" Canvas.Left="747.83429938569134" Canvas.Top="131.72072891333363" cm:ControlID="4700927339412753005" />
                  <cm:tzTextBox Name="txtHierarchyLevel" Width="100.95168631569095" Height="21" Canvas.Left="637.88261307" Canvas.Top="136.26786173" cm:ControlID="4849458309856855812" cm:DataBindingField="PersonnelCode" cm:DataType="Int" />
                  <cm:tzTextBox Name="txtResInsert3" Width="120" Height="21" Canvas.Left="135.45000000000061" Canvas.Top="321.02058823999994" cm:ControlID="4815109074761336372" cm:DataBinding="dsInsert3" cm:DataBindingField="Res" cm:Event="dsRead3,dsCheckExists" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtResDelete3" Width="120" Height="21" ControlID="4713627795527000143" Canvas.Left="135.45000000000039" Canvas.Top="280.93970587999991" cm:DataBinding="dsDelete3" cm:DataBindingField="Res" cm:Event="dsRead3,dsCheckExists" cm:IsVisibleItem="False" />
                  <cm:TZRadioButton Name="rbnNotAcc" Content="بدون تایید" Width="NaN" Height="NaN" Canvas.Left="1283.8237101999991" Canvas.Top="63.343629709999945" cm:ControlID="5730683233644939840" cm:Event="dsCheckValidateNotACc" />
                  <cm:tzLabel Name="Lable240" Content=": محل استقرار" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="303.287288313334" Canvas.Top="55.343629710000016" cm:ControlID="5216677400932200141" />
                  <cm:tzLookUpComboBox Name="cmbLocation" Width="277.83728830999962" Height="22" ControlID="5050022801165709513" Canvas.Left="16.450000000000067" Canvas.Top="55.343629710000016" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsLocation" cm:Event="dsCheckExists" cm:tzDisplayItem="LocationTitle" cm:tzValueItem="LocationID" />
                  <cm:tzLabel Name="Lable250" Content=":فقط سطح" Width="NaN" Height="NaN" Canvas.Left="747.83429938569111" Canvas.Top="165.20406224666681" cm:ControlID="4884316501345463371" />
                  <cm:tzTextBox Name="txtHierarchyOnlyLevel" Width="100.95168631569084" Height="21" ControlID="5651316636483490825" Canvas.Left="637.88261307000016" Canvas.Top="166.26786173000005" cm:DataType="Int" />
                  <cm:TZRadioButton Name="rbnToLevel" Content="تا سطح" ControlID="5642768753811687392" GroupName="123" Canvas.Left="905.044442783333" Canvas.Top="138.42879403000018" cm:DataBinding="dsSelectrbnHierarchy" cm:DataBindingField="Res" cm:DefaultValue="true" cm:FCVCol="4849458309856855812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="4849458309856855812#" cm:TMCol="4849458309856855812#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnOnlyLevel" Content="فقط سطح" Width="NaN" Height="NaN" GroupName="123" Canvas.Left="892.53110944999992" Canvas.Top="171.10692943000015" cm:ControlID="4642743964458069529" cm:FCVCol="5651316636483490825#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5651316636483490825#" cm:TMCol="5651316636483490825#" cm:TVCol="" />
                  <cm:tzDataSource Name="dsSelectrbnHierarchy" Content="dsSelectrbnHierarchy" Width="110" Height="25" ControlID="5564920807403646562" Canvas.Left="275.140621646667" Canvas.Top="317.02058823999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnHierarchy} AS Res" />
                  <cm:TZCheckBox Name="chkHierarchy" Content="TZCheckBox" Width="73" Height="20" ControlID="5207450031826955584" Canvas.Left="1094.2237747999998" Canvas.Top="117.26786173000005" cm:DataBinding="dsSelectrbnHierarchy" cm:DataBindingField="Res" cm:FCVCol="5642768753811687392#4642743964458069529#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5642768753811687392#4642743964458069529#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsCheckValidateNotACc" Content="dsCheckValidateNotACc" Width="110" Height="25" ControlID="4816001715517357093" Canvas.Left="275.140621646667" Canvas.Top="276.93970587999991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckValidateNotAcc_Frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @RbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKind3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckValidateNotAcc" Content="chkCheckValidateNotAcc" Width="120" Height="20" ControlID="4856264153266251646" FontFamily="Tahoma" Canvas.Left="402.99999999999977" Canvas.Top="276.93970588" cm:DataBinding="dsCheckValidateNotACc" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsLocation" Content="dsLocation" Width="110" Height="25" ControlID="5068745864499661644" Canvas.Left="275.140621646667" Canvas.Top="364.4497548999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_Location" />
                  <cm:tzDataSource Name="dsCheckExists" Content="dsCheckExists" Width="110" Height="25" ControlID="5546800206374802365" Canvas.Left="275.14062164666723" Canvas.Top="233.89460784000062" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckExists_DetermineRequestAcc_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAccMain" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchyMain" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmationMain" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExists" Content="chkCheckExists" Width="120" Height="20" ControlID="4868634925841731922" FontFamily="Tahoma" Canvas.Left="402.99999999999983" Canvas.Top="233.89460784000073" cm:DataBinding="dsCheckExists" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="TextBox223" Width="276" Height="21" ControlID="5490808733585292313" Canvas.Left="638.88261307" Canvas.Top="96.934993300000031" cm:DataBinding="dsSelectFullNameSec" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullNameSec" Content="dsSelectFullNameSec" Width="110" Height="25" Canvas.Left="675.48353156000007" Canvas.Top="92.934993300000031" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4923744869626779918" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUp133}" />
                  <cm:TZButton Name="Button232" Content="ویرایش" Width="75" Height="23" ControlID="5551097922681440870" Canvas.Left="199.14062164666717" Canvas.Top="172.26786173000028" cm:Event="dsUpdate3,dsRead3" />
                  <cm:tzDataSource Name="dsUpdate3" Content="dsUpdate3" Width="94.071072093333839" Height="25" ControlID="5083935207425077155" Canvas.Left="208.21621622" Canvas.Top="138.26786173" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDeleteRow3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtDeleteRow3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkActive3}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkActive3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @HierarchyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnToLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnToLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOnlyLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyOnlyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtHierarchyOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmation" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZRadioButton Name="rbnManagerConfirmation" Content="نیاز به تایید مدیر رشته دارد؟" Width="161" Height="20" ControlID="5292917656300919479" FontFamily="Tahoma" Canvas.Left="1207.20728831" Canvas.Top="165.10692943" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="سلسله مراتب">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox284" Width="1466" Height="644.0333333366666" Background="#FFDEEFF7" ControlID="5437504011429785574" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView284" Width="1438" Height="606.55000001" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5291537330656315267" ItemsSource="{Binding ElementName=dsHierarchical, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsHierarchical" cm:Form="168" cm:FormName="فرم درج سلسله مراتب، فرم پایه میز خدمت" cm:IsSearchable="True" cm:KeyField="HierarchicalPublicServiceID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HierarchicalPublicServiceID" DecimalMark="False" HeaderText="HierarchicalPublicServiceID" IsRowColorField="False" KeyField="True" SortMemberPath="HierarchicalPublicServiceID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HierarchicalPublicServiceID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OUName" DecimalMark="False" HeaderText="سرشاخه" IsRowColorField="False" KeyField="False" SortMemberPath="OUName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OUName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="مدیر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PublicSoftwareIsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="PublicSoftwareIsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PublicSoftwareIsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5570647258497720807" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsHierarchical" Content="dsHierarchical" Width="110" Height="25" ControlID="5563001812668047827" Canvas.Left="223.38535031999976" Canvas.Top="122.62213376333328" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_HierarchicalPublicService" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="SLA">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox541" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="4852622748829995715" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView195" Width="1420.07137859" Height="586" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5436980256612900213" ItemsSource="{Binding ElementName=dsGetSLAinfo, Path=DataItems}" Canvas.Left="17.92862141" Canvas.Top="18.08793261" cm:BindingForm="dsGetSLAinfo" cm:Form="31258" cm:KeyField="ID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ID" DecimalMark="False" HeaderText="ID" IsRowColorField="False" KeyField="True" SortMemberPath="ID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SLATitle" DecimalMark="False" HeaderText="عنوان SLA" IsRowColorField="False" KeyField="False" SortMemberPath="SLATitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SLATitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="58" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TimeDuration" DecimalMark="False" HeaderText="مدت زمان" IsRowColorField="False" KeyField="False" SortMemberPath="TimeDuration">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TimeDuration}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="isActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="isActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding isActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5364035431409225017" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetSLAinfo" Content="dsGetSLAinfo" Width="110" Height="25" ControlID="4859288558571001912" Canvas.Left="347.50967788000014" Canvas.Top="103.58406192666655" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_Tbl_Cu_Base_ServiceDeskSLA" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="فایل راهنما">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox180" Width="1466" Height="644.03333334" Background="#FFDEEFF7" BorderBrush="#FFD5DFE5" ControlID="5149115460930364380" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView181" Width="1411" Height="586" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4887571958070513353" ItemsSource="{Binding ElementName=dsGetUplFile, Path=DataItems}" Canvas.Left="20.71666667" Canvas.Top="18.9" cm:BindingForm="dsGetUplFile" cm:Form="31252" cm:FormName="فرم آپلود فایل راهنما" cm:KeyField="ID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ID" DecimalMark="False" HeaderText="ID" IsRowColorField="False" KeyField="True" SortMemberPath="ID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="FileUpload" DataTextField="FileUpload" DecimalMark="False" HeaderText="فایل آپلود شده" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="FileUpload">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding FileUpload}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding FileUpload}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetUplFile" Content="dsGetUplFile" Width="110" Height="25" ControlID="5660339580791327398" Canvas.Left="20.716666670000109" Canvas.Top="74.455694446667252" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_Upload_Tbl_Cu_Base_ServiceDeskHelpFile" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="افراد مجاز">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox283" Width="1451" Height="625.03333334" Background="#FFDEEFF7" ControlID="4653395380082897838" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="16" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="gvAllowAble" Width="1402" Height="516.7026389" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5060880376704261640" ItemsSource="{Binding ElementName=dsSearchAllowUse, Path=DataItems}" Canvas.Left="19.1" Canvas.Top="68.48333333" cm:BindingForm="dsSearchAllowUse" cm:Form="242" cm:FormName="فرم ورود اطلاعات پایه افراد مجاز" cm:KeyField="ServiceDeskAllowAbleUserID" cm:ParamValues="4892227114633198821¢SubGrpID$5677450966544964473¢ReqSubID$5008755893319791604¢ReqKindID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="100" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="100" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AllowAbleFullName" DecimalMark="False" HeaderText="فرد مجاز" IsRowColorField="False" KeyField="False" SortMemberPath="AllowAbleFullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AllowAbleFullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServiceDeskAllowAbleUserID" DecimalMark="False" HeaderText="ServiceDeskAllowAbleUserID" IsRowColorField="False" KeyField="True" SortMemberPath="ServiceDeskAllowAbleUserID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServiceDeskAllowAbleUserID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5201688022952781685" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzLabel Name="Lable285" Content=": زیر گروه" ControlID="4911733815608853818" FontFamily="Tahoma" Canvas.Left="1355.3333333299997" Canvas.Top="17.483333326666298" />
                  <cm:tzLabel Name="Lable289" Content=": نوع درخواست" ControlID="5559354487138500593" FontFamily="Tahoma" Canvas.Left="924.9995979933334" Canvas.Top="18.966666659999646" />
                  <cm:tzLabel Name="Lable297" Content=": عنوان درخواست" ControlID="4939955208615144556" FontFamily="Tahoma" Canvas.Left="285.1" Canvas.Top="17.483333326666298" />
                  <cm:tzLookUpComboBox Name="cmbAllowAbleSubGroupID" Width="257" Height="22" ControlID="4892227114633198821" Canvas.Left="1097.3333333299993" Canvas.Top="19.966666659999632" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleSubGroupID" cm:DataType="Int" cm:Event="dsAllowAbleRequestKindID,dsChekMandetory" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbAllowAbleRequestSubject" Width="257" Height="22" ControlID="5677450966544964473" Canvas.Left="19.100000000000023" Canvas.Top="19.966666659999646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleRequestSubject" cm:DataType="Int" cm:Event="dsChekMandetory,dsSearchAllowUse" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsAllowAbleSubGroupID" Content="dsAllowAbleSubGroupID" Width="120.00000000000006" Height="25" ControlID="4895135855828904450" Canvas.Left="19.1" Canvas.Top="241.83333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_AllowAble-frm141" />
                  <cm:tzDataSource Name="dsAllowAbleRequestKindID" Content="dsAllowAbleRequestKindID" Width="120.00000000000006" Height="25" ControlID="5120208877708642353" Canvas.Left="19.1" Canvas.Top="287.25" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_AllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="      @cmbAllowAbleSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsAllowAbleRequestSubject" Content="dsAllowAbleRequestSubject" Width="120.00000000000006" Height="25" ControlID="5536809436186859784" Canvas.Left="19.1" Canvas.Top="327.21666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_AllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSearchAllowUse" Content="dsSearchAllowUse" Width="120" Height="25" ControlID="4737144159402014031" Canvas.Left="19.100000000000023" Canvas.Top="197.84265398999997" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineAllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="    @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbAllowAbleRequestKindID" Width="257" Height="22" ControlID="5008755893319791604" Canvas.Left="658.99959799333317" Canvas.Top="19.966666659999646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleRequestKindID" cm:DataType="Int" cm:Event="dsAllowAbleRequestSubject,dsChekMandetory" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable198" Content="*" ControlID="4978171034643099621" FontFamily="Tahoma" Foreground="#FFF90909" Canvas.Left="1404.55" Canvas.Top="9.4833333266662976" />
                  <cm:tzLabel Name="Lable199200" Content="*" ControlID="5704047696474905966" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="1020.7862646600001" Canvas.Top="9.4833333266662976" />
                  <cm:tzLabel Name="Lable236" Content="*" ControlID="5745781004520581551" FontFamily="Tahoma" Foreground="#FFFC0202" Canvas.Left="384.42666666666645" Canvas.Top="9.4833333266663011" />
                  <cm:TZCheckBox Name="chMandetoryCheck" Content="MandetoryCheck" Width="123" Height="20" ControlID="5120612283792436266" Canvas.Left="190.10000000000002" Canvas.Top="163.68363063999993" cm:DataBinding="dsChekMandetory" cm:DataBindingField="ForceCheck" cm:Event="dsSelectGridView" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5060880376704261640#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsChekMandetory" Content="dsChekMandetory" Width="120.00000000000003" Height="27" ControlID="4641419177065466059" Canvas.Left="19.1" Canvas.Top="149.68363064" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryAllowAbleItem_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="افراد مشاهده کننده فرآیند" cm:Len="150">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox330" Width="1453" Height="638.86021505" Background="#FFDEEFF7" ControlID="5313355617758754963" FontFamily="Tahoma" Canvas.Left="14.72043011" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable335" Content="*" ControlID="4916283208790817602" Foreground="#FFFC0202" Canvas.Left="1406.9498207899999" Canvas.Top="8" />
                  <cm:tzLabel Name="Lable336" Content=": انتخاب کاربر" ControlID="4898485934884777007" FontFamily="Tahoma" Canvas.Left="1339.8798207899997" Canvas.Top="22.068667856666721" />
                  <cm:TZLookUp Name="LookUpObservUser" Width="26.77747749" Height="27" ControlID="5426245109870041311" Canvas.Left="1312.1023433" Canvas.Top="-4.5166666666666515" cm:Event="dsGetObservUserID,dsActiveButton,dsSelectFullNameThird">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:TZButton Name="ButInsertObservUser" Content="افزودن" Width="112" Height="27" ControlID="4946381329481421186" FontFamily="Tahoma" Canvas.Left="845.82213345999992" Canvas.Top="22.068667860000005" cm:Event="dsGetDate,dsDuplicateCheck,dsInsertObservUser,DuplicateCheckFroTblWorkflowInstanceTrustee,dsInstanceTrustee" />
                  <cm:tzDataGrid Name="GridView473" Width="1394.21021506" Height="519" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4911232160994511100" ItemsSource="{Binding ElementName=dsShowObservUser, Path=DataItems}" Canvas.Left="21.28960573" Canvas.Top="80.52837049" cm:BindingForm="dsShowObservUser" cm:Event="dsSelectWorkflowPermissionId" cm:KeyField="WorkflowPermissionId" cm:UserCanDelete="False" cm:UserCanExport="True" cm:UserCanInsert="False">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowPermissionId" DecimalMark="False" HeaderText="WorkflowPermissionId" IsRowColorField="False" KeyField="True" SortMemberPath="WorkflowPermissionId">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowPermissionId}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="30" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AllowAbleFullNam" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="AllowAbleFullNam">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AllowAbleFullNam}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsInsertObservUser" Content="dsInsertObservUser" Width="155" Height="25" ControlID="5387225543115897479" Canvas.Left="24.133446250000134" Canvas.Top="135.54503716000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_InsertObservUser_FRM141{@txtObservUserID}" />
                  <cm:tzDataSource Name="dsShowObservUser" Content="dsShowObservUser" Width="155.00000000000006" Height="25" ControlID="5263797783461628099" Canvas.Left="24.13344625" Canvas.Top="225.29004532" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_ShowObservUser_FRM141" />
                  <cm:TZButton Name="Button213" Content="جستجو" Width="112.00000000000011" Height="27" ControlID="4779945134842258436" FontFamily="Tahoma" Canvas.Left="975.10234329999844" Canvas.Top="22.068667860000005" cm:Event="dsGetDate,dsShowObservUser" />
                  <cm:TZCheckBox Name="chDuplicateCheck" Content="chDuplicateCheck" Width="120" Height="20" ControlID="4938308613145155780" Canvas.Left="188.13344624999976" Canvas.Top="321.12837049000007" cm:DataBinding="dsDuplicateCheck" cm:DataBindingField="CheckDuplicate" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox357" Content="chDupCheckTrust" Width="120" Height="20" ControlID="5531339490603476350" FontFamily="Tahoma" Canvas.Left="188.13344624999979" Canvas.Top="450.56170383000006" cm:DataBinding="DuplicateCheckFroTblWorkflowInstanceTrustee" cm:DataBindingField="CheckDuplicate" cm:Event="DuplicateCheckFroTblWorkflowInstanceTrustee" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4946381329481421186#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGetObservUserID" Content="dsGetObservUserID" Width="155.00000000000003" Height="25" ControlID="5268685738305612188" Canvas.Left="24.13344625" Canvas.Top="179.87337865" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUpObservUser} as ObservUserID" />
                  <cm:tzTextBox Name="txtObservUserID" Width="120" Height="21" ControlID="5277489616558113226" Canvas.Left="188.13344625000005" Canvas.Top="179.87337865000006" cm:DataBinding="dsGetObservUserID" cm:DataBindingField="ObservUserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsActiveButton" Content="dsActiveButton" Width="155.00000000000006" Height="25" ControlID="4829285922287723554" Canvas.Left="24.13344625" Canvas.Top="268.33533452" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_ObservUserActiveButton_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ObservUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chActiveButton" Content="TZCheckBox" Width="120" Height="20" ControlID="5626694006231985346" Canvas.Left="188.13344624999982" Canvas.Top="268.33533451999995" cm:DataBinding="dsActiveButton" cm:DataBindingField="ActiveButton" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4946381329481421186#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsDuplicateCheck" Content="dsDuplicateCheck" Width="155.00000000000009" Height="25" ControlID="5368203105238181103" Canvas.Left="24.13344625" Canvas.Top="316.12837049" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateObservUserInsert_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ObservUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetDate" Content="dsGetDate" Width="155.00000000000011" Height="25" ControlID="4691376391515028086" Canvas.Left="24.13344625" Canvas.Top="358.59503716" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select getdate()" />
                  <cm:tzDataSource Name="dsInstanceTrustee" Content="dsInstanceTrustee" Width="155.00000000000014" Height="25" ControlID="5612120341010810065" Canvas.Left="24.13344625" Canvas.Top="404.57837049" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="[Sp_Cu_InsertInto_WorkflowPermission] 38,{@txtObservUserID}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="DuplicateCheckFroTblWorkflowInstanceTrustee" Content="DuplicateCheckFroTblWorkflowInstanceTrustee" Width="155.00000000000017" Height="25" ControlID="5181082255490211115" Canvas.Left="24.13344625" Canvas.Top="450.56170383" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateInsertTblWorkflowInstanceTrustee_FRM141{@txtObservUserID}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="CheckBox370" Content="checkMandetory" Width="120" Height="20" ControlID="5251231392626029639" FontFamily="Tahoma" Canvas.Left="188.13344624999982" Canvas.Top="495.86666667" cm:FCVCol="" cm:FECol="" cm:FMCol="5426245109870041311#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:tzTextBox Name="TextBox241" Width="185" Height="21" ControlID="4979301360564482909" Canvas.Left="1111.1023433" Canvas.Top="28.06866786" cm:DataBinding="dsSelectFullNameThird" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullNameThird" Content="dsSelectFullNameThird" Width="110" Height="25" Canvas.Left="1119.4835315600003" Canvas.Top="24.068667860000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5339829527989302378" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUpObservUser}" />
                  <cm:tzDataSource Name="dsDeleteWorkflowPerm" Content="dsDeleteWorkflowPerm" Width="110" Height="25" ControlID="5388663757141722697" Canvas.Left="188.13344625000033" Canvas.Top="20.528370489999933" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_DeleteFrom_TblWorklfowPermission_Frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWorkflowPermissionId}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WorkflowPermissionId" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSelectWorkflowPermissionId" Content="dsSelectWorkflowPermissionId" Width="155.00000000000026" Height="25" ControlID="4728281149282297523" Canvas.Left="24.13344625" Canvas.Top="21.55200119" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@GridView473} AS WorkflowPermissionId" />
                  <cm:tzTextBox Name="txtWorkflowPermissionId" Width="155.00000000000034" Height="21" ControlID="5655706767847882459" Canvas.Left="24.13344625" Canvas.Top="50.52837049" cm:DataBinding="dsSelectWorkflowPermissionId" cm:DataBindingField="WorkflowPermissionId" cm:DataType="BigInt" cm:Event="dsEnableWorkflowPermissionDelete" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableWorkflowPermissionDelete" Content="dsEnableWorkflowPermissionDelete" Width="110" Height="25" ControlID="4663730585564806672" Canvas.Left="188.13344625000013" Canvas.Top="46.528370489999929" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ISNULL({@txtWorkflowPermissionId},0) != 0 SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:TZCheckBox Name="chkVisiableDelete" Content="chkVisiableDelete" Width="120" Height="20" ControlID="5690861887726765855" FontFamily="Tahoma" Canvas.Left="307.13344625000013" Canvas.Top="51.528370489999872" cm:DataBinding="dsEnableWorkflowPermissionDelete" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4658235518549185968#" cm:TMCol="" cm:TVCol="" />
                  <cm:TZButton Name="btnDeleteWorkflowPermission" Content="حذف" Width="112.00000000000011" Height="26.45970263" ControlID="4658235518549185968" Canvas.Left="724.8221334599998" Canvas.Top="24.06866785999982" cm:Event="dsDeleteWorkflowPerm" />
                  <cm:tzTextBox Name="txtDeleteRes" Width="120" Height="21" ControlID="5348728527729747721" Canvas.Left="307.13344625" Canvas.Top="21.528370489999816" cm:DataBinding="dsDeleteWorkflowPerm" cm:DataBindingField="Res" cm:Event="dsShowObservUser" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="اشخاص ممنوعه">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox336" Width="1450" Height="630" Background="#FFDEEFF7" ControlID="4741419625028267920" FontFamily="Tahoma" Canvas.Left="16.67834395" Canvas.Top="14.94267516" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable221" Content=":زیر گروه" ControlID="5162986729854654585" FontFamily="Tahoma" Canvas.Left="1353.8347763599991" Canvas.Top="19.516666666666666" />
                  <cm:tzLabel Name="Lable223" Content=":نوع درخواست" ControlID="5649385629934869768" Canvas.Left="946.7217006099994" Canvas.Top="19.516666666666669" />
                  <cm:tzLabel Name="Lable224" Content=":عنوان درخواست" ControlID="5755229757803642813" Canvas.Left="274.55763723999974" Canvas.Top="19.516666666666662" />
                  <cm:tzLookUpComboBox Name="CmbForbiddenSubGroup" Width="239" Height="22" ControlID="4833035455123790760" Canvas.Left="1105.8347763599991" Canvas.Top="22" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforrbidenSubGrp" cm:Event="dsGetforbiddenRequestKind" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable227" Content="*" ControlID="5137650957383219475" FontFamily="Tahoma" Foreground="#FFF70404" Canvas.Left="1398.5576372399999" Canvas.Top="11.516666666666652" />
                  <cm:tzLabel Name="Lable228229" Content="*" ControlID="4666385922223308487" FontFamily="Tahoma" Foreground="#FFFC0707" Canvas.Left="1021.2083672766659" Canvas.Top="5.9999999999996589" />
                  <cm:tzLookUpComboBox Name="cmbforbiddenRequestKind" Width="239" Height="22" ControlID="5566240721769484543" Canvas.Left="698.72170060999906" Canvas.Top="22.000000000000004" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforbiddenRequestKind" cm:Event="dsGetforbiddenRequestSubject" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLookUpComboBox Name="cmbforbiddenRequestSubject" Width="239" Height="22" ControlID="5301987341456284185" Canvas.Left="26.557637239999735" Canvas.Top="22" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforbiddenRequestSubject" cm:Event="dsFMandetoryCheck" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzLabel Name="Lable231" Content="*" ControlID="5439729079790929957" FontFamily="Tahoma" Foreground="#FFFF0707" Canvas.Left="362.13430390666628" Canvas.Top="5.9999999999995435" />
                  <cm:tzDataGrid Name="forbiddenGridView235" Width="1391" Height="502" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5087833493783800728" ItemsSource="{Binding ElementName=dsGetTreeInfo, Path=DataItems}" Canvas.Left="24.107637239999804" Canvas.Top="81" cm:BindingForm="dsGetTreeInfo" cm:Form="260" cm:FormName="فرم ورود اطلاعات پایه افراد ممنوعه" cm:KeyField="ForbiddenID" cm:ParamValues="4833035455123790760¢fSubGroupID$5566240721769484543¢fResuestKind$5301987341456284185¢fRequestTitle" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="123" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="57" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OUName" DecimalMark="False" HeaderText="OUName" IsRowColorField="False" KeyField="False" SortMemberPath="OUName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OUName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ForbiddenIsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="ForbiddenIsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ForbiddenIsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ForbiddenID" DecimalMark="False" HeaderText="ForbiddenID" IsRowColorField="False" KeyField="True" SortMemberPath="ForbiddenID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ForbiddenID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="4867829483582297328" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetTreeInfo" Content="dsGetTreeInfo" Width="120.54999999999976" Height="25" ControlID="4929310930436950651" Canvas.Left="26.55763724" Canvas.Top="264.88354565" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_ServiceDeskForbiddenUser_frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbforbiddenRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button237" Content="جستجو" Width="123" Height="23" ControlID="4709067211916302377" FontFamily="Tahoma" Canvas.Left="24.107637239999491" Canvas.Top="57.000000000000007" cm:Event="dsgetdate,dsGetTreeInfo" />
                  <cm:tzDataSource Name="dsgetdate" Content="dsgetdate" Width="123.00000000000026" Height="25" ControlID="5359110528118038110" Canvas.Left="24.10763724" Canvas.Top="149.45" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select getdate()" />
                  <cm:tzDataSource Name="dsGetforbiddenRequestSubject" Content="dsGetforbiddenRequestSubject" Width="123.00000000000006" Height="25" ControlID="4992193544339947908" Canvas.Left="24.10763724" Canvas.Top="115.45" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_Forbidden_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="   @CmbForbiddenSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbforbiddenRequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsFMandetoryCheck" Content="dsFMandetoryCheck" Width="122.99999999999986" Height="18" ControlID="4834045988928984767" Canvas.Left="24.10763724" Canvas.Top="189.56687898" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryForbiddenItem_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @CmbForbiddenSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbforbiddenRequestKind" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbforbiddenRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetforbiddenRequestKind" Content="dsGetforbiddenRequestKind" Width="120.54999999999967" Height="25" ControlID="5704299461850457878" Canvas.Left="26.55763724" Canvas.Top="222.63333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_Forbidden_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="   @CmbForbiddenSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetforrbidenSubGrp" Content="dsGetforrbidenSubGrp" Width="120.54999999999976" Height="25" ControlID="4745086393086727963" Canvas.Left="26.55763723999998" Canvas.Top="306.15021232" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_Forbidden-frm141" />
                  <cm:TZCheckBox Name="CheckBox243" Content="chMandetoryCheck" Width="89.4170512299998" Height="20" ControlID="5133165130410791771" FontFamily="Tahoma" Canvas.Left="148.10763723999949" Canvas.Top="311.15021231999992" cm:DataBinding="dsFMandetoryCheck" cm:DataBindingField="ForceCheck" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5087833493783800728#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
        </cm:TZTabControl>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1404/02/16 11:14:39', 'c18e048c-1442-4427-b919-0f99674dfb67', 0, N'', N'{"formID": "141" ,"components": [{"value": "","key": "5626694006231985346","label": "chActiveButton","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "ActiveButton"},{"value": "","key": "4938308613145155780","label": "chDuplicateCheck","controlType": "checkbox","caption": "chDuplicateCheck" ,"DataBindingField" : "CheckDuplicate"},{"value": "","key": "5133165130410791771","label": "CheckBox243","controlType": "checkbox","caption": "chMandetoryCheck" ,"DataBindingField" : "ForceCheck"},{"value": "","key": "5531339490603476350","label": "CheckBox357","controlType": "checkbox","caption": "chDupCheckTrust" ,"DataBindingField" : "CheckDuplicate"},{"value": "","key": "5251231392626029639","label": "CheckBox370","controlType": "checkbox","caption": "checkMandetory" ,"DataBindingField" : ""},{"value": "true","key": "5022571717356221893","label": "chkActive3","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "4868634925841731922","label": "chkCheckExists","controlType": "checkbox","caption": "chkCheckExists" ,"DataBindingField" : "Res"},{"value": "","key": "4714712306533876512","label": "chkCheckExistsEghdam","controlType": "checkbox","caption": "chkCheckExistsEghdam" ,"DataBindingField" : "Res"},{"value": "","key": "4856264153266251646","label": "chkCheckValidateNotAcc","controlType": "checkbox","caption": "chkCheckValidateNotAcc" ,"DataBindingField" : "Res"},{"value": "","key": "5669143527926527564","label": "chkDisable","controlType": "checkbox","caption": "chkDisable" ,"DataBindingField" : "Column1"},{"value": "","key": "4721231163390093653","label": "chkEnable","controlType": "checkbox","caption": "chkEnable" ,"DataBindingField" : "res"},{"value": "","key": "4718280222361325084","label": "chkEnable2","controlType": "checkbox","caption": "chkEnable2" ,"DataBindingField" : "res"},{"value": "","key": "5471496556158595679","label": "chkEnable3","controlType": "checkbox","caption": "chkEnable3" ,"DataBindingField" : "res"},{"value": "","key": "5694591723591438281","label": "chkForceCombo","controlType": "checkbox","caption": "chkForceCombo" ,"DataBindingField" : "res"},{"value": "","key": "5247095645906577244","label": "chkForceCombo3","controlType": "checkbox","caption": "chkForceCombo3" ,"DataBindingField" : "res"},{"value": "","key": "5207450031826955584","label": "chkHierarchy","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "true","key": "5411635696962178764","label": "chkIsActive","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "5690861887726765855","label": "chkVisiableDelete","controlType": "checkbox","caption": "chkVisiableDelete" ,"DataBindingField" : "Res"},{"value": "","key": "5120612283792436266","label": "chMandetoryCheck","controlType": "checkbox","caption": "MandetoryCheck" ,"DataBindingField" : "ForceCheck"},{"key": "5008755893319791604","label": "cmbAllowAbleRequestKindID","value": "", "controlType": "dropdown","options":""},{"key": "5677450966544964473","label": "cmbAllowAbleRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4892227114633198821","label": "cmbAllowAbleSubGroupID","value": "", "controlType": "dropdown","options":""},{"key": "5004530541336532292","label": "cmbFieldSubject","value": "", "controlType": "dropdown","options":""},{"key": "5566240721769484543","label": "cmbforbiddenRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5301987341456284185","label": "cmbforbiddenRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4833035455123790760","label": "CmbForbiddenSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4818150681943631791","label": "cmbGroupName","value": "", "controlType": "dropdown","options":""},{"key": "5050022801165709513","label": "cmbLocation","value": "", "controlType": "dropdown","options":""},{"key": "4651851275301820523","label": "cmbRequestKind3","value": "", "controlType": "dropdown","options":""},{"key": "5456563802719509205","label": "cmbRequestKindForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "5276893744932336389","label": "cmbRequestKindID","value": "", "controlType": "dropdown","options":""},{"key": "5016382732342712582","label": "cmbRequestKindID5","value": "", "controlType": "dropdown","options":""},{"key": "5055214696737490076","label": "cmbRequestKindID6","value": "", "controlType": "dropdown","options":""},{"key": "4941026096929921893","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4695208060128895821","label": "cmbRequestSubject3","value": "", "controlType": "dropdown","options":""},{"key": "4646490773001678958","label": "cmbRequestSubject6","value": "", "controlType": "dropdown","options":""},{"key": "5094466931308842551","label": "cmbRequestSubjectForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "5350339319748265747","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "5168525964139324294","label": "cmbSubGroup3","value": "", "controlType": "dropdown","options":""},{"key": "4826009166159449630","label": "cmbSubGroupForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "4942403356356019292","label": "cmbSubGroupID","value": "", "controlType": "dropdown","options":""},{"key": "4822823333807585022","label": "cmbSubGroupID5","value": "", "controlType": "dropdown","options":""},{"key": "4968127004479232849","label": "cmbSubGroupID6","value": "", "controlType": "dropdown","options":""},{"key":"4829285922287723554" , "dataSourceName":"dsActiveButton" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_ObservUserActiveButton_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5120208877708642353" , "dataSourceName":"dsAllowAbleRequestKindID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_AllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5536809436186859784" , "dataSourceName":"dsAllowAbleRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_AllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4895135855828904450" , "dataSourceName":"dsAllowAbleSubGroupID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_AllowAble-frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5546800206374802365" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckExists_DetermineRequestAcc_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5178484283304823112" , "dataSourceName":"dsCheckExists2" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckExists_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4816001715517357093" , "dataSourceName":"dsCheckValidateNotACc" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidateNotAcc_Frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4641419177065466059" , "dataSourceName":"dsChekMandetory" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryAllowAbleItem_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4645150676024804602" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141 {@txtDeleteRow}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4688230333647347580" , "dataSourceName":"dsDelete3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5388663757141722697" , "dataSourceName":"dsDeleteWorkflowPerm" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_DeleteFrom_TblWorklfowPermission_Frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4746838933069988153" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"select 1 " , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5368203105238181103" , "dataSourceName":"dsDuplicateCheck" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateObservUserInsert_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4793645083043692532" , "dataSourceName":"dsEnable" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenComboIsNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5246080342187869674" , "dataSourceName":"dsEnable2" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenCombosAreNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5092178803662675304" , "dataSourceName":"dsEnable3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenComboIsNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4663730585564806672" , "dataSourceName":"dsEnableWorkflowPermissionDelete" , "controlType": "datasource",  "selectQuery" :"IF ISNULL({@txtWorkflowPermissionId},0) != 0 SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4834045988928984767" , "dataSourceName":"dsFMandetoryCheck" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryForbiddenItem_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5337117101913305963" , "dataSourceName":"dsForceCombo" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ForceVariablesToUserEghdam" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5578437259237172074" , "dataSourceName":"dsForceCombo3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ForceVariablesToUserHirarchy" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5359110528118038110" , "dataSourceName":"dsgetdate" , "controlType": "datasource",  "selectQuery" :"select getdate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4691376391515028086" , "dataSourceName":"dsGetDate" , "controlType": "datasource",  "selectQuery" :"select getdate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5704299461850457878" , "dataSourceName":"dsGetforbiddenRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_Forbidden_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4992193544339947908" , "dataSourceName":"dsGetforbiddenRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_Forbidden_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4745086393086727963" , "dataSourceName":"dsGetforrbidenSubGrp" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_Forbidden-frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5268685738305612188" , "dataSourceName":"dsGetObservUserID" , "controlType": "datasource",  "selectQuery" :"select {@LookUpObservUser} as ObservUserID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4859288558571001912" , "dataSourceName":"dsGetSLAinfo" , "controlType": "datasource",  "selectQuery" :"SP_Cu_Tbl_Cu_Base_ServiceDeskSLA" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4929310930436950651" , "dataSourceName":"dsGetTreeInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_ServiceDeskForbiddenUser_frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5660339580791327398" , "dataSourceName":"dsGetUplFile" , "controlType": "datasource",  "selectQuery" :"SP_Cu_Upload_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5717000300060544390" , "dataSourceName":"dsGridview" , "controlType": "datasource",  "selectQuery" :"select {@GridView314.SelectedRowItem}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5002854636703324471" , "dataSourceName":"dsGridview3" , "controlType": "datasource",  "selectQuery" :"select {@GridView176.SelectedRowItem}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5160304345284955323" , "dataSourceName":"dsGroupName" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GroupName_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5563001812668047827" , "dataSourceName":"dsHierarchical" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_HierarchicalPublicService" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5547239877992471335" , "dataSourceName":"dsInsert" , "controlType": "datasource",  "selectQuery" :"Sp_CU_InsertInto_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5524510087478913760" , "dataSourceName":"dsInsert3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387225543115897479" , "dataSourceName":"dsInsertObservUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_InsertObservUser_FRM141{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4760347381838657308" , "dataSourceName":"dsInsrtToText" , "controlType": "datasource",  "selectQuery" :"select {@LookUp290}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5612120341010810065" , "dataSourceName":"dsInstanceTrustee" , "controlType": "datasource",  "selectQuery" :"[Sp_Cu_InsertInto_WorkflowPermission] 38,{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5068745864499661644" , "dataSourceName":"dsLocation" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_Location" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5747119805119259443" , "dataSourceName":"dsRead" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5123597645216804655" , "dataSourceName":"dsRead3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783005421192912395" , "dataSourceName":"dsReadFieldSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5694583863803622089" , "dataSourceName":"dsReadFieldSubject6" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5304657148491250252" , "dataSourceName":"dsReadRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_RequestKind_FRM153" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5406862607317526399" , "dataSourceName":"dsReadValue" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Read_Tbl_CU_Base_FieldValue_FRM167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4845498683050207478" , "dataSourceName":"dsReasRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_RequestSubject_FRM155" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4865574286142649124" , "dataSourceName":"dsRequestKindID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4715466671391730517" , "dataSourceName":"dsRequestKindID2" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4629968209532716470" , "dataSourceName":"dsRequestKindID5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5649708080956196811" , "dataSourceName":"dsRequestKindID6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5336654733944300285" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4671777547929868233" , "dataSourceName":"dsRequestSubject5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5487764314359942264" , "dataSourceName":"dsRequestSubject6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4737144159402014031" , "dataSourceName":"dsSearchAllowUse" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineAllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4799228042320276838" , "dataSourceName":"dsSelectFullName" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUp290}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4923744869626779918" , "dataSourceName":"dsSelectFullNameSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUp133}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5339829527989302378" , "dataSourceName":"dsSelectFullNameThird" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUpObservUser}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5564920807403646562" , "dataSourceName":"dsSelectrbnHierarchy" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnHierarchy} AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4728281149282297523" , "dataSourceName":"dsSelectWorkflowPermissionId" , "controlType": "datasource",  "selectQuery" :"SELECT {@GridView473} AS WorkflowPermissionId" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5263797783461628099" , "dataSourceName":"dsShowObservUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_ShowObservUser_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4728373506184342381" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4681298825570567329" , "dataSourceName":"dsSubGroupID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4758379092434607172" , "dataSourceName":"dsSubGroupID5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5086555903453570941" , "dataSourceName":"dsSubGroupID6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5244903530493884167" , "dataSourceName":"dsSubGroupRead" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_SubGroups_FRM151" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5354202491455567599" , "dataSourceName":"dsUniRequestKind3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5083935207425077155" , "dataSourceName":"dsUpdate3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4630812749104244163" , "dataSourceName":"dsUserID3" , "controlType": "datasource",  "selectQuery" :"select {@LookUp133}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5168723378048164709" , "dataSourceName":"dsUsername" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFullnameFromUserID_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5181082255490211115" , "dataSourceName":"DuplicateCheckFroTblWorkflowInstanceTrustee" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateInsertTblWorkflowInstanceTrustee_FRM141{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5176516729340273551","label": "TextBox220","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5490808733585292313","label": "TextBox223","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4979301360564482909","label": "TextBox241","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5348728527729747721","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4990715908260578320","label": "txtDeleteRow","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5250195443269286936","label": "txtDeleteRow3","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5681758030317426284","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4849458309856855812","label": "txtHierarchyLevel","controlType": "textbox", "type": "" , "DataBindingField" : "PersonnelCode"},{"value": "","key": "5651316636483490825","label": "txtHierarchyOnlyLevel","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5277489616558113226","label": "txtObservUserID","controlType": "textbox", "type": "" , "DataBindingField" : "ObservUserID"},{"value": "20","key": "5414923781258442294","label": "txtPersonelCode","controlType": "textbox", "type": "" , "DataBindingField" : "PersonnelCode"},{"value": "","key": "4713627795527000143","label": "txtResDelete3","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4815109074761336372","label": "txtResInsert3","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5016914736049017937","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5439769809059311180","label": "txtUserID3","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5655706767847882459","label": "txtWorkflowPermissionId","controlType": "textbox", "type": "" , "DataBindingField" : "WorkflowPermissionId"}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم پایه میزخدمت ',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1561" Height="758.51666667" Background="White">
  <Canvas Width="1534" Height="737">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>4854295578190589708</ID>
        <Name>انتخاب یکی از موارد 4</Name>
        <Condition>({@rbnHirarchy4.Value} ==False) &amp;&amp; ({@rbnPersonAcc4.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد تاییدیه سلسله مراتبی درخواست / اشخاص تایید کننده درخواست را انتخاب نمایید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5322325159627758245</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5137043738733234862</ComponentID>
            <ComponentName>rbnPersonAcc4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5253042623943990403</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5081699084573161713</ID>
        <Name>انتخاب یکی از موارد </Name>
        <Condition>({@rbnRoundRabin.Value} ==False) &amp;&amp; ({@rbnPrivate.Value} ==False) &amp;&amp; ({@rbnGroup.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد شخصی / راندرابین / گروهی را انتخاب کنید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5274263548684808881</ComponentID>
            <ComponentName>rbnRoundRabin</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5317086292795360011</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5540986736218024796</ComponentID>
            <ComponentName>rbnPrivate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5738233341510300132</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5353767825611093820</ComponentID>
            <ComponentName>rbnGroup</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5216656268899333369</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5522434525603585355</ID>
        <Name>انتخاب گروهی اقدام کننده</Name>
        <Condition>({@rbnGroup.Value} ==True) &amp;&amp; ({@cmbGroupName.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا گروه مورد نظر را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5353767825611093820</ComponentID>
            <ComponentName>rbnGroup</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5282830118983293835</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4818150681943631791</ComponentID>
            <ComponentName>cmbGroupName</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5084099890553122172</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4880688901836648820</ID>
        <Name>انتخاب تعداد سطوح اقدام</Name>
        <Condition>("{@txtHierarchyLevel4.Value}" =="''''") &amp;&amp; ({@rbnHirarchy4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تعداد سطوح سلسله مراتب را مشخص کنید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5430364406490735121</ComponentID>
            <ComponentName>txtHierarchyLevel4</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5224251682471362356</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5432333462431545396</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5383745149548614592</ID>
        <Name>کمبوهای اجباری شخصی 4</Name>
        <Condition>({@chkForceCombo4.Value} ==True) &amp;&amp; ({@rbnPersonAcc4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست، عنوان درخواست و کاربر را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5750404642420030986</ComponentID>
            <ComponentName>chkForceCombo4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5224803982925853530</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5137043738733234862</ComponentID>
            <ComponentName>rbnPersonAcc4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5261345019997956377</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5671351916939755458</ID>
        <Name>کمبوهای اجباری سلسله مراتبی 3</Name>
        <Condition>({@chkForceCombo3.Value} ==True) &amp;&amp; ({@rbnHierarchy.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیر گروه، نوع درخواست و عنوان درخواست را انتخاب کنید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5247095645906577244</ComponentID>
            <ComponentName>chkForceCombo3</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5515655169029803158</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnHierarchy</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5380665414205133197</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5470929817002576955</ID>
        <Name>کمبوهای اجباری شخصی 3</Name>
        <Condition>({@chkForceCombo3.Value} ==True) &amp;&amp; ({@rbnPersonAcc.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه،نوع درخواست، عنوان درخواست و کاربر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5247095645906577244</ComponentID>
            <ComponentName>chkForceCombo3</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5217434965872995458</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5408605046420899582</ComponentID>
            <ComponentName>rbnPersonAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4789222553515693474</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5586747621371589399</ID>
        <Name>اجباری اقدام کننده</Name>
        <Condition>({@chkForceCombo.Value} ==True) &amp;&amp; ({@rbnPrivate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیر گروه، نوع درخواست، عنوان درخواست و کاربر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5694591723591438281</ComponentID>
            <ComponentName>chkForceCombo</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4677267438399336083</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5540986736218024796</ComponentID>
            <ComponentName>rbnPrivate</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5734331979258723570</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5743287254942614538</ID>
        <Name>کمبوهای اجباری سلسله مراتبی 4</Name>
        <Condition>({@chkForceCombo4.Value} ==True) &amp;&amp; ({@rbnHirarchy4.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5750404642420030986</ComponentID>
            <ComponentName>chkForceCombo4</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5724588807283934061</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4624082902614603591</ComponentID>
            <ComponentName>rbnHirarchy4</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5484144042050388697</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5312539210166549360</ID>
        <Name>اجباری موارد اقدام کنندگان</Name>
        <Condition>({@chActiveButton.Value} ==-1) || ({@cmbRequestSubjectForEghdam.Value} ==-1) || ({@cmbSubGroupForEghdam.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5456563802719509205</ComponentID>
            <ComponentName>chActiveButton</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5557364710794934989</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5094466931308842551</ComponentID>
            <ComponentName>cmbRequestSubjectForEghdam</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5614387916969747025</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>4826009166159449630</ComponentID>
            <ComponentName>cmbSubGroupForEghdam</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5757160268260354674</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5046876198386289117</ID>
        <Name>اجباری موارد افراد مجاز</Name>
        <Condition>({@cmbAllowAbleSubGroupID.Value} ==-1) || ({@cmbAllowAbleRequestSubject.Value} ==-1) || ({@cmbAllowAbleRequestKindID.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا زیرگروه، نوع درخواست و عنوان درخواست را انتخاب کنید  </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4892227114633198821</ComponentID>
            <ComponentName>cmbAllowAbleSubGroupID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4622487776063432623</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5677450966544964473</ComponentID>
            <ComponentName>cmbAllowAbleRequestSubject</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5626826624182464009</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>Or</ANDOR>
            <ComponentID>5008755893319791604</ComponentID>
            <ComponentName>cmbAllowAbleRequestKindID</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5410487821719908570</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4620333210430668729</ID>
        <Name>محل استقرار</Name>
        <Condition>({@cmbLocation.Value} ==-1)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد محل استقرار اجباری می باشد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5050022801165709513</ComponentID>
            <ComponentName>cmbLocation</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4998945802297267682</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4972265920432692656</ID>
        <Name>اجباری-بدون تایید</Name>
        <Condition>({@chkCheckValidateNotAcc.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد های زیر گروه،نوع درخواست و عنوان درخواست اجباری می باشند</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4856264153266251646</ComponentID>
            <ComponentName>chkCheckValidateNotAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5650922252213217484</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5663299565898728487</ID>
        <Name>اطلاعات فعال</Name>
        <Condition>({@chkCheckExists.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>با عنوان درخواست و محل استقرار درج شده اطلاعات فعالی موجود می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4868634925841731922</ComponentID>
            <ComponentName>chkCheckExists</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4873345838695030313</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5402851422252158988</ID>
        <Name>فقط سطح</Name>
        <Condition>({@rbnOnlyLevel.Value} ==True) &amp;&amp; ({@txtHierarchyOnlyLevel.Value} ==0)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد (فقط سطح) اجباری می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4642743964458069529</ComponentID>
            <ComponentName>rbnOnlyLevel</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5728403456092121351</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5651316636483490825</ComponentID>
            <ComponentName>txtHierarchyOnlyLevel</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4758117329934446380</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5134564919795866319</ID>
        <Name>اجباری راندرابین</Name>
        <Condition>({@rbnRoundRabin.Value} ==True) &amp;&amp; ("{@cmbGroupName.Value}" =="-1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا گروه مورد نظر را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5274263548684808881</ComponentID>
            <ComponentName>rbnRoundRabin</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4756305518083472272</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4818150681943631791</ComponentID>
            <ComponentName>cmbGroupName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5731495421163665896</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5485195571572086527</ID>
        <Name>تکراری اقدام</Name>
        <Condition>({@chkCheckExistsEghdam.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>با عنوان درخواست انتخاب شده اطلاعات فعالی موجود می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4714712306533876512</ComponentID>
            <ComponentName>chkCheckExistsEghdam</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5276704408009819626</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5539938603151312102</ID>
        <Name>انتخاب تعدا سطوح درخواست</Name>
        <Condition>("{@txtHierarchyLevel.Value}" =="''''") &amp;&amp; ({@rbnToLevel.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا تعداد سطوح سلسله مراتب را مشخص کنید</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4849458309856855812</ComponentID>
            <ComponentName>txtHierarchyLevel</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5251277732471984034</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnToLevel</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5069793390454914522</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5614079753730481623</ID>
        <Name>انتخاب یکی لز موارد سلسله مراتب </Name>
        <Condition>({@rbnHierarchy.Value} ==False) &amp;&amp; ({@rbnPersonAcc.Value} ==False) &amp;&amp; ({@rbnNotAcc.Value} ==False) &amp;&amp; ({@rbnManagerConfirmation.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد تاییدیه سلسله مراتبی درخواست / اشخاص تایید کننده درخواست/تایید مدیر را انتخاب نمایید </Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5352495781335708805</ComponentID>
            <ComponentName>rbnHierarchy</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4748440666643130129</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5408605046420899582</ComponentID>
            <ComponentName>rbnPersonAcc</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5389315448043823576</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5730683233644939840</ComponentID>
            <ComponentName>rbnNotAcc</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4962623473610918672</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5292917656300919479</ComponentID>
            <ComponentName>rbnManagerConfirmation</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5022569820182960885</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox28" Width="1516" Height="722" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="4798201668750863841" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TZTabControl Name="TabControl4" Width="1488" Height="686.51666667" ControlID="4871163599880366250" Canvas.Left="8" Canvas.Top="8">
          <cm:TZTabItem HeaderText="زیرگروه">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox23" Width="1466" Height="644.03333334" Background="#FFDEEFF7" BorderBrush="#FFD5DFE5" ControlID="5225750305900421739" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView21" Width="1438" Height="606.55000001" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4654538436425488112" ItemsSource="{Binding ElementName=dsSubGroupRead, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSubGroupRead" cm:EventForAdd="dsSubGroup" cm:EventForEdit="dsSubGroup" cm:Form="151" cm:FormName="زیرگروه،فرم اطلاعات پایه میز خدمت" cm:KeyField="SubGroupID" cm:ParamValues="4892227114633198821¢SubGrpID$5677450966544964473¢ReqSubID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupID" DecimalMark="False" HeaderText="SubGroupID" IsRowColorField="False" KeyField="True" SortMemberPath="SubGroupID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام مدیر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsSubGroupRead" Content="dsSubGroupRead" Width="139" Height="25" ControlID="5244903530493884167" Canvas.Left="171" Canvas.Top="108.03333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_SubGroups_FRM151" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="نوع درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox24" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="4764468026618703409" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLookUpComboBox Name="cmbSubGroup" Width="354.78277405000017" Height="22" ControlID="5350339319748265747" Canvas.Left="1024.13333333" Canvas.Top="17" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsEnable,dsReadRequestKind" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable30" Content=":زیرگروه" ControlID="5325915927758238878" FontFamily="Tahoma" Canvas.Left="1387.9161073799999" Canvas.Top="14.516666666666611" />
                  <cm:tzDataGrid Name="GridView20" Width="1433.5" Height="560" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5661381937141166484" ItemsSource="{Binding ElementName=dsReadRequestKind, Path=DataItems}" Canvas.Left="8" Canvas.Top="48" cm:BindingForm="dsReadRequestKind" cm:EventForAdd="dsRequestKindID" cm:EventForEdit="dsRequestKindID" cm:Form="153" cm:FormName="نوع درخواست، فرم اطلاعات پایه میز خدمت" cm:KeyField="RequestKindID" cm:ParamValues="5350339319748265747¢SubGroupID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="4827349007716321152">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindID" DecimalMark="False" HeaderText="RequestKindID" IsRowColorField="False" KeyField="True" SortMemberPath="RequestKindID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه " IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZButton Name="Button48" Content="جستجو" Width="167" Height="23" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:ControlID="5677927008580536168" cm:Event="dsReadRequestKind" />
                  <cm:tzDataSource Name="dsReadRequestKind" Content="dsReadRequestKind" Width="110" Height="25" ControlID="5304657148491250252" Canvas.Left="325" Canvas.Top="153.99999999666665" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_RequestKind_FRM153">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="4728373506184342381" Canvas.Left="913.13333332999991" Canvas.Top="13.999999999999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzDataSource Name="dsEnable" Content="dsEnable" Width="110" Height="25" ControlID="4793645083043692532" Canvas.Left="468.54340836000006" Canvas.Top="14" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenComboIsNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable" Content="chkEnable" Width="120" Height="20" ControlID="4721231163390093653" FontFamily="Tahoma" Canvas.Left="607.99999999999989" Canvas.Top="19" cm:DataBinding="dsEnable" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5661381937141166484#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="عنوان درخواست">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox26" Width="1466" Height="644.0333333366666" Background="#FFDEEFF7" ControlID="5367413166179197217" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas Width="1476" Height="624.51666667">
                  <cm:tzDataGrid Name="GridView31" Width="1438" Height="572.96666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4880318387681725900" ItemsSource="{Binding ElementName=dsReasRequestSubject, Path=DataItems}" Canvas.Left="8" Canvas.Top="43.55" cm:BindingForm="dsReasRequestSubject" cm:EventForAdd="dsRequestSubject" cm:EventForEdit="dsRequestSubject" cm:Form="155" cm:FormName="عنوان درخواست، فرم اطلاعات پایه میزخدمت" cm:KeyField="RequestSubjectID" cm:ParamValues="4942403356356019292¢SubGroupID$5276893744932336389¢SubRequestKindID" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="4903233949669444429">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectID" DecimalMark="False" HeaderText="RequestSubjectID" IsRowColorField="False" KeyField="True" SortMemberPath="RequestSubjectID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TimeDuration" DecimalMark="False" HeaderText="مدت زمان SLA" IsRowColorField="False" KeyField="False" SortMemberPath="TimeDuration">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TimeDuration}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzLabel Name="Lable26" Content=":نوع درخواست" ControlID="5560379382152212592" FontFamily="Tahoma" Canvas.Left="930" Canvas.Top="8.0666666699999041" />
                  <cm:tzLabel Name="Lable34" Content=":زیرگروه" FontFamily="Tahoma" Canvas.Left="1387.6333333333334" Canvas.Top="8.0666666699999041" cm:ControlID="4783999997367959318" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID" Width="313" Height="22" Canvas.Left="1065" Canvas.Top="10.550000000000011" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4942403356356019292" cm:DataBinding="dsSubGroup" cm:Event="dsReasRequestSubject,dsEnable2,dsRequestKindID" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID" Width="313" Height="22" Canvas.Left="608" Canvas.Top="10.550000003333253" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5276893744932336389" cm:DataBinding="dsRequestKindID" cm:Event="dsReasRequestSubject,dsEnable2" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsReasRequestSubject" Content="dsReasRequestSubject" Width="206" Height="25" ControlID="4845498683050207478" Canvas.Left="401" Canvas.Top="180.51666666000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_RequestSubject_FRM155">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbSubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="   {@cmbRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbRequestKindID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button49" Content="جستجو" Width="178" Height="23" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="9.55000000333325" cm:ControlID="4792355170374852626" cm:Event="dsReasRequestSubject" />
                  <cm:tzDataSource Name="dsRequestKindID" Content="dsRequestKindID" Width="110" Height="25" ControlID="4865574286142649124" Canvas.Left="720.10128617000009" Canvas.Top="17.550000003333253" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsEnable2" Content="dsEnable2" Width="110" Height="25" ControlID="5246080342187869674" Canvas.Left="321.6672025700002" Canvas.Top="7.5500000033332526" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenCombosAreNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKindID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable2" Content="chkEnable2" Width="120" Height="20" ControlID="4718280222361325084" FontFamily="Tahoma" Canvas.Left="476.39389067999991" Canvas.Top="22.550000003333253" cm:DataBinding="dsEnable2" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4880318387681725900#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsSubGroupID" Content="dsSubGroupID" Width="110" Height="25" ControlID="4681298825570567329" Canvas.Left="981.92211838000048" Canvas.Top="-26.000000000000057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="عنوان فیلد">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox2526" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5747898673709125881" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView45" Width="1438" Height="541.99999999999989" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4663391460458464416" ItemsSource="{Binding ElementName=dsReadFieldSubject, Path=DataItems}" Canvas.Left="8" Canvas.Top="72.550000010000076" cm:BindingForm="dsReadFieldSubject" cm:Form="157" cm:FormName="عنوان فیلد، فرم پایه میزخدمت" cm:KeyField="FieldSubjectID" cm:ParamValues="4941026096929921893¢RequestSubjectID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:Validations4Add="5586747621371589399,5081699084573161713,5522434525603585355" cm:Validations4Delete="5586747621371589399,5081699084573161713,5522434525603585355" cm:Validations4Edit="5586747621371589399,5081699084573161713,5522434525603585355" cm:ViewLayoutId="5059001035720893695">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectID" DecimalMark="False" HeaderText="FieldSubjectID" IsRowColorField="False" KeyField="True" SortMemberPath="FieldSubjectID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsNeedCertificate" DecimalMark="False" HeaderText="نیاز به بارگذاری مدرک" IsRowColorField="False" KeyField="False" SortMemberPath="IsNeedCertificate">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsNeedCertificate}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="103" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="InsertOrSelectInfo" DecimalMark="False" HeaderText="درج یا انتخاب مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="InsertOrSelectInfo">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding InsertOrSelectInfo}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="43" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsMandatory" DecimalMark="False" HeaderText="اجباری" IsRowColorField="False" KeyField="False" SortMemberPath="IsMandatory">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsMandatory}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ItemType" DecimalMark="False" HeaderText="نوع ایتم " IsRowColorField="False" KeyField="False" SortMemberPath="ItemType">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ItemType}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ordering" DecimalMark="False" HeaderText="ترتیب" IsRowColorField="False" KeyField="False" SortMemberPath="ordering">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ordering}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5442082000093336424" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="321" Height="22" ControlID="4941026096929921893" Canvas.Left="8" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject5" cm:Event="dsReadFieldSubject,dsEnable3" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsReadFieldSubject" Content="dsReadFieldSubject" Width="110" Height="25" ControlID="4783005421192912395" Canvas.Left="410" Canvas.Top="154.03333333666683" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button43" Content="جستجو" Width="194" Height="23" ControlID="4752233602468350241" FontFamily="Tahoma" Canvas.Left="8.0000000000000853" Canvas.Top="40.550000009999962" cm:Event="dsReadFieldSubject" />
                  <cm:tzDataSource Name="dsEnable3" Content="dsEnable3" Width="110" Height="25" ControlID="5092178803662675304" Canvas.Left="383.20374701999953" Canvas.Top="72.550000010000019" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_EnableGridWhenComboIsNotEmpty">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkEnable3" Content="chkEnable3" Width="120" Height="20" ControlID="5471496556158595679" FontFamily="Tahoma" Canvas.Left="726.20739549999985" Canvas.Top="77.550000010000076" cm:DataBinding="dsEnable3" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4663391460458464416#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzLabel Name="Lable38" Content=": عنوان درخواست" Height="23" ControlID="5314659477399008285" Canvas.Left="338.00000000000006" Canvas.Top="8.55000000999995" />
                  <cm:tzLabel Name="Lable143" Content=":زیرگروه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1397.6333333333334" Canvas.Top="7.066666676666614" cm:ControlID="5020292259776983349" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID5" Width="313" Height="22" Canvas.Left="1075.6333333333334" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4822823333807585022" cm:DataBinding="dsSubGroupID5" cm:Event="dsRequestKindID5" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzDataSource Name="dsSubGroupID5" Content="dsSubGroupID5" Width="110" Height="25" Canvas.Left="1088.95522388" Canvas.Top="6.5500000099999447" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4758379092434607172" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID5" Width="313" Height="22" Canvas.Left="525.20739550000008" Canvas.Top="9.5500000099999482" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5016382732342712582" cm:DataBinding="dsRequestKindID5" cm:Event="dsRequestSubject5" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable146" Content=":نوع درخواست" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="847.20739550000008" Canvas.Top="7.0666666766666282" cm:ControlID="5353773497244044490" />
                  <cm:tzDataSource Name="dsRequestKindID5" Content="dsRequestKindID5" Width="110" Height="25" Canvas.Left="596.10128617000021" Canvas.Top="6.5500000099999482" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4629968209532716470" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID5}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsRequestSubject5" Content="dsRequestSubject5" Width="110" Height="25" Canvas.Left="78.552238809999835" Canvas.Top="-4.96666666666664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4671777547929868233" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID5}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID5}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="مقدار">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox295" Width="1472" Height="650" Background="#FFDEEFF7" ControlID="4952840046099429640" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable295" Content=":زیرگروه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1386.6133333333332" Canvas.Top="-6.400000003332921" cm:ControlID="5413016973464352860" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupID6" Width="313" Height="22" Canvas.Left="1064.6133333333332" Canvas.Top="-3.9166666699996995" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4968127004479232849" cm:DataBinding="dsSubGroupID6" cm:Event="dsRequestKindID6" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzDataSource Name="dsSubGroupID6" Content="dsSubGroupID6" Width="110" Height="25" Canvas.Left="1072.1547110833342" Canvas.Top="4.0833333300003005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5086555903453570941" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141" />
                  <cm:tzLabel Name="Lable298" Content=":نوع درخواست" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="869.00739550000037" Canvas.Top="-6.4000000033328082" cm:ControlID="5747840055524170153" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindID6" Width="313" Height="22" Canvas.Left="547.0073955000006" Canvas.Top="-3.9166666699995858" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5055214696737490076" cm:DataBinding="dsRequestKindID6" cm:Event="dsRequestSubject6" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzDataSource Name="dsRequestKindID6" Content="dsRequestKindID6" Width="110" Height="25" Canvas.Left="592.46795283" Canvas.Top="1.0833333300004133" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5649708080956196811" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable301" Content=": عنوان درخواست" Width="104" Height="23" Canvas.Left="337.6500000000002" Canvas.Top="-4.9166666699994739" cm:ControlID="5483524351267811238" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubject6" Width="321" Height="22" Canvas.Left="7.6500000000003006" Canvas.Top="-3.9166666699994703" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4646490773001678958" cm:DataBinding="dsRequestSubject6" cm:Event="dsReadFieldSubject6" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsRequestSubject6" Content="dsRequestSubject6" Width="110" Height="25" Canvas.Left="42.10223881" Canvas.Top="9.0833333300003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5487764314359942264" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindID6}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbFieldSubject" Width="313" Height="22" Canvas.Left="1064.6133333333332" Canvas.Top="28.083333330000414" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5004530541336532292" cm:DataBinding="dsReadFieldSubject6" cm:Event="dsReadValue" cm:tzDisplayItem="FieldSubjectTitle" cm:tzValueItem="FieldSubjectID" />
                  <cm:TZButton Name="Button298" Content="جستجو" Width="75" Height="23" ControlID="5736419100476729168" Canvas.Left="7.6500000000003183" Canvas.Top="27.083333330000414" cm:Event="dsReadValue" />
                  <cm:tzDataGrid Name="GridView308" Width="1444.3499999999997" Height="556.43333334" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4627826788658858333" ItemsSource="{Binding ElementName=dsReadValue, Path=DataItems}" Canvas.Left="7.6500000000003183" Canvas.Top="64.08333333" cm:BindingForm="dsReadValue" cm:Event="dsGridViewID" cm:EventForEdit="dsReadValue" cm:Form="167" cm:FormName="مقدار فیلد، فرم پایه میز خدمت" cm:KeyField="FieldValueID" cm:ParamValues="5004530541336532292¢FieldSubjectID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldSubjectTitle" DecimalMark="False" HeaderText="عنوان فیلد" IsRowColorField="False" KeyField="False" SortMemberPath="FieldSubjectTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldSubjectTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueTitle" DecimalMark="False" HeaderText="مقدار" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueStatus" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="FieldValueStatus">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueStatus}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldValueID" DecimalMark="False" HeaderText="FieldValueID" IsRowColorField="False" KeyField="True" SortMemberPath="FieldValueID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldValueID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldManager" DecimalMark="False" HeaderText="مدیر رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldManager">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldManager}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsReadValue" Content="dsReadValue" Width="110" Height="25" ControlID="5406862607317526399" Canvas.Left="676.25739550000083" Canvas.Top="51.083333330000308" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Read_Tbl_CU_Base_FieldValue_FRM167">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbFieldSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FieldSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable353" Content=":عنوان فیلد" Width="120" Height="23" ControlID="5446944034904846765" Canvas.Left="1386.6133333333332" Canvas.Top="27.083333330000414" />
                  <cm:tzDataSource Name="dsReadFieldSubject6" Content="dsReadFieldSubject6" Width="110" Height="25" Canvas.Left="1011.3166666699996" Canvas.Top="38.0833333300003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5694583863803622089" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject6}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem Header="تعیین اقدام کنندگان" cm:HeaderText="اقدام کنندگان">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox270" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5485182074641235185" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable271" Content=": زیر گروه" ControlID="5342109437082380350" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="23.308333336666635" />
                  <cm:tzLookUpComboBox Name="cmbSubGroupForEghdam" Width="232.67666667000023" Height="22" ControlID="4826009166159449630" Canvas.Left="1070.72271168" Canvas.Top="25.79166667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsForceCombo,dsRequestKindID2" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable276" Content=": نوع درخواست" ControlID="5359039096774237642" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="70.520395396666686" />
                  <cm:tzLookUpComboBox Name="cmbRequestKindForEghdam" Width="232.67666666999909" Height="22" ControlID="5456563802719509205" Canvas.Left="1070.7227116800011" Canvas.Top="72.791666669999927" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKindID2" cm:DataType="Int" cm:Event="dsForceCombo,dsRequestSubject" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable280" Content=":عنوان درخواست" ControlID="5662211107896670059" FontFamily="Tahoma" Canvas.Left="1309.3993783533335" Canvas.Top="110.30833333666676" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubjectForEghdam" Width="232.67666666999935" Height="22" ControlID="5094466931308842551" Canvas.Left="1070.7227116800007" Canvas.Top="112.79166667" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:DataType="Int" cm:Event="dsForceCombo,dsRead,dsCheckExists2" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:TZRadioButton Name="rbnGroup" Content="گروهی" ControlID="5353767825611093820" FontFamily="Tahoma" Canvas.Left="8.0000000000001137" Canvas.Top="24.791666669999927" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnPrivate" Content="شخصی" ControlID="5540986736218024796" Canvas.Left="307.19875195999992" Canvas.Top="24.791666669999927" cm:FCVCol="5667981522562062812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5667981522562062812#" cm:TMCol="5667981522562062812#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnRoundRabin" Content="راندرابین" ControlID="5274263548684808881" FontFamily="Tahoma" Canvas.Left="156.00000000000011" Canvas.Top="24.791666669999927" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZLookUp Name="LookUp290" Width="23.57270694" Height="27" ControlID="5667981522562062812" Canvas.Left="717.92604502000017" Canvas.Top="16.791666669999984" cm:Event="dsInsrtToText,dsSelectFullName">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzLabel Name="Lable310" Content=": جستجوی کاربر" ControlID="5682630187043737089" FontFamily="Tahoma" Canvas.Left="750.49875195999994" Canvas.Top="23.308333336666593" />
                  <cm:tzDataGrid Name="GridView314" Width="1435.42604502" Height="470.75833334" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5047768972367738346" ItemsSource="{Binding ElementName=dsRead, Path=DataItems}" Canvas.Left="5.6239549799999793" Canvas.Top="143.79166666666671" cm:BindingForm="dsRead" cm:Event="dsGridview,dsCheckExists2" cm:EventForAdd="dsCheckExists2" cm:EventForDelete="dsCheckExists2" cm:EventForEdit="dsCheckExists2" cm:KeyField="DetermineEghdamUserID" cm:UserCanExport="True" cm:UserCanInsert="False">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DetermineEghdamUserID" DecimalMark="False" HeaderText="DetermineEghdamUserID" IsRowColorField="False" KeyField="True" SortMemberPath="DetermineEghdamUserID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DetermineEghdamUserID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="موضوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DifferRadio" DecimalMark="False" HeaderText="نوع اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="DifferRadio">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DifferRadio}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="IsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="نام گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZButton Name="Button340" Content="ثبت" Width="68" Height="23" ControlID="5454547599311857170" FontFamily="Tahoma" Canvas.Left="87.000000000000114" Canvas.Top="111.79166667000004" cm:Event="dsInsert,dsRead" cm:Validations="5081699084573161713,5522434525603585355,5586747621371589399,5312539210166549360,5134564919795866319,5485195571572086527" />
                  <cm:TZButton Name="Button341" Content="حذف" Width="70" Height="23" ControlID="4899868185860172477" FontFamily="Tahoma" Canvas.Left="8.0000000000001137" Canvas.Top="111.79166667000004" cm:Event="dsDelete,dsRead" />
                  <cm:tzDataSource Name="dsInsert" Content="dsInsert" Width="110" Height="25" ControlID="5547239877992471335" Canvas.Left="8.0000000000001137" Canvas.Top="303.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_InsertInto_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPrivate}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Private" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRoundRabin}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @RoundRabin" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGroup}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Group" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkIsActive}" IsOutputParameter="False" ParameterType="bit" SpParamName="   @Isactive" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbGroupName}" IsOutputParameter="False" ParameterType="bigint" SpParamName="   @GroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsDelete" Content="dsDelete" Width="110" Height="25" ControlID="4645150676024804602" Canvas.Left="8.0000000000001137" Canvas.Top="337.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141 {@txtDeleteRow}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@LookUp290}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPrivate}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Private" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRoundRabin}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @RoundRabin" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGroup}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Group" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserID" Width="120" Height="21" ControlID="5016914736049017937" Canvas.Left="131.00839825999958" Canvas.Top="273.10833334000006" cm:DataBinding="dsInsrtToText" cm:DataBindingField="Column1" cm:Event="dsForceCombo" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsInsrtToText" Content="dsInsrtToText" Width="110" Height="25" ControlID="4760347381838657308" Canvas.Left="8.0000000000001137" Canvas.Top="269.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp290}" />
                  <cm:tzDataSource Name="dsForceCombo" Content="dsForceCombo" Width="110" Height="25" ControlID="5337117101913305963" Canvas.Left="8.0000000000001119" Canvas.Top="235.10833334000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ForceVariablesToUserEghdam">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubject" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkForceCombo" Content="chkForceCombo" Width="120" Height="20" ControlID="5694591723591438281" FontFamily="Tahoma" Canvas.Left="131.00839825999958" Canvas.Top="240.1083333400002" cm:DataBinding="dsForceCombo" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                  <cm:tzLabel Name="Lable63" Content="*" ControlID="5627434139850470462" FontFamily="Tahoma" Canvas.Left="1366.26604502" Canvas.Top="13.308333336666649" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable64" Content="*" FontFamily="Tahoma" Canvas.Left="1411.5000000000002" Canvas.Top="70.520395396666686" cm:ControlID="5507513799362920190" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable65" Content="*" FontFamily="Tahoma" Canvas.Left="1411.5000000000002" Canvas.Top="110.30833333666678" cm:ControlID="4671192657098280680" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable66" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="844.06541862666666" Canvas.Top="14.791666669999986" cm:ControlID="5551220597187464654" cm:ForeColor="#FFF90404" />
                  <cm:tzDataSource Name="dsGridview" Content="dsGridview" Width="110" Height="25" ControlID="5717000300060544390" Canvas.Left="8.0000000000001137" Canvas.Top="439.10833334000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView314.SelectedRowItem}" />
                  <cm:tzTextBox Name="txtDeleteRow" Width="120" Height="21" ControlID="4990715908260578320" Canvas.Left="131.00839825999958" Canvas.Top="443.10833334000017" cm:DataBinding="dsGridview" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsRead" Content="dsRead" Width="110" Height="25" ControlID="5747119805119259443" Canvas.Left="8.0000000000001066" Canvas.Top="371.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button71" Content="جستجو" Width="147" Height="23" ControlID="4873382935564796619" FontFamily="Tahoma" Canvas.Left="8.00000000000001" Canvas.Top="71.791666669999927" cm:Event="dsRead" />
                  <cm:tzDataSource Name="dsRequestKindID2" Content="dsRequestKindID2" Width="110.00000000000011" Height="25" ControlID="4715466671391730517" Canvas.Left="8" Canvas.Top="512.75833334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkIsActive" Content="فعال" ControlID="5411635696962178764" FontFamily="Tahoma" Canvas.Left="469.92604501999995" Canvas.Top="119.69332663551518" cm:DefaultValue="true" />
                  <cm:tzLabel Name="Lable155" Content=": نام گروه" ControlID="5116137059243486065" FontFamily="Tahoma" Canvas.Left="750.49875196" Canvas.Top="71.791666669999813" />
                  <cm:tzLookUpComboBox Name="cmbGroupName" Width="271.5727069400001" Height="22" ControlID="4818150681943631791" Canvas.Left="469.92604501999995" Canvas.Top="72.791666669999927" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGroupName" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
                  <cm:tzDataSource Name="dsGroupName" Content="dsGroupName" Width="110" Height="25" ControlID="5160304345284955323" Canvas.Left="8.0000000000001137" Canvas.Top="405.10833334000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GroupName_FRM141" />
                  <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5336654733944300285" Canvas.Left="8.0000000000001172" Canvas.Top="473.10833334000017" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubject_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroupForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="     @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbRequestKindForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="     @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsCheckExists2" Content="dsCheckExists2" Width="110" Height="25" ControlID="5178484283304823112" Canvas.Left="228.48381070999997" Canvas.Top="60.106735159999971" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckExists_Tbl_CU_Base_DetermineEghdamUsers_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubjectForEghdam}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExistsEghdam" Content="chkCheckExistsEghdam" Width="120" Height="20" ControlID="4714712306533876512" FontFamily="Tahoma" Canvas.Left="228.48381071000006" Canvas.Top="114.79166667000023" cm:DataBinding="dsCheckExists2" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="TextBox220" Width="236" Height="21" ControlID="5176516729340273551" Canvas.Left="469.92604501999995" Canvas.Top="22.791666669999984" cm:DataBinding="dsSelectFullName" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullName" Content="dsSelectFullName" Width="110" Height="25" ControlID="4799228042320276838" Canvas.Left="502.48353156000007" Canvas.Top="22.791666669999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUp290}" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem cm:HeaderText="تعیین تاییدکنندگان درخواست" cm:Len="50">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox167" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="5266226986996280006" Canvas.Left="8" Canvas.Top="8" cm:Header="تاییدکنندگان درخواست">
                <Canvas>
                  <cm:tzLabel Name="Lable167" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="391.07395498000022" Canvas.Top="7.7916666599999758" cm:ControlID="4963234490997945622" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable168" Content=":عنوان درخواست" Width="96" Height="23" FontFamily="Tahoma" Canvas.Left="306.00000000000017" Canvas.Top="17.550000000000068" cm:ControlID="4794311198097302307" />
                  <cm:tzLookUpComboBox Name="cmbRequestSubject3" Width="277.83728831333389" Height="22" Canvas.Left="16.45" Canvas.Top="18.55" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4695208060128895821" cm:DataBinding="dsRequestSubject3" cm:DataType="Int" cm:Event="dsForceCombo3,dsRead3,dsCheckValidateNotACc,dsCheckExists" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzLabel Name="Lable170" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="1057.3432039233335" Canvas.Top="7.3436297099999592" cm:ControlID="5664112840923541975" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable171" Content=": نوع درخواست" FontFamily="Tahoma" Canvas.Left="969.55653725666639" Canvas.Top="13.860296376666724" cm:ControlID="5305502393838481622" />
                  <cm:tzLookUpComboBox Name="cmbRequestKind3" Width="321.99999999999989" Height="22" Canvas.Left="637.88261307000016" Canvas.Top="17.79166666" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4651851275301820523" cm:DataBinding="dsUniRequestKind3" cm:DataType="Int" cm:Event="dsForceCombo3,dsRequestSubject3,dsCheckValidateNotACc" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable173" Content="*" Width="18.92604502" Height="23" FontFamily="Tahoma" Canvas.Left="1427.07395498" Canvas.Top="7.7916666599999758" cm:ControlID="4907342242869783054" cm:ForeColor="#FFF90404" />
                  <cm:tzLabel Name="Lable174" Content=": زیر گروه" FontFamily="Tahoma" Canvas.Left="1370.2072883133335" Canvas.Top="13.358660513333419" cm:ControlID="5653579526968834073" />
                  <cm:tzLookUpComboBox Name="cmbSubGroup3" Width="232" Height="22" Canvas.Left="1129.2072883133328" Canvas.Top="18.550000000000068" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5168525964139324294" cm:DataBinding="dsSubGroup" cm:DataType="Int" cm:Event="dsUniRequestKind3,dsForceCombo3,dsCheckValidateNotACc" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzTextBox Name="txtPersonelCode" Width="219.71271168666584" Height="21" ControlID="5414923781258442294" Canvas.Left="303.28728831333416" Canvas.Top="166.26786173" cm:DataBinding="dsUsername" cm:DataBindingField="PersonnelCode" cm:DefaultValue="20" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtFullName" Width="322" Height="21" ControlID="5681758030317426284" Canvas.Left="637.88261307" Canvas.Top="55.79166666" cm:DataBindingField="FullName" />
                  <cm:tzLabel Name="Lable31" Content=":نام و نام خانوادگی" Width="NaN" Height="NaN" ControlID="4882734652087162626" FontFamily="Tahoma" Canvas.Left="968.43457611999975" Canvas.Top="52.860296376666625" />
                  <cm:tzLabel Name="Lable1801" Content=":کد پرسنلی" Width="NaN" Height="NaN" ControlID="5758636270575605864" Canvas.Left="531.99999999999966" Canvas.Top="162.7845283966667" cm:IsVisibleItem="False" />
                  <cm:TZRadioButton Name="rbnPersonAcc" Content="اشخاص تایید کننده درخواست" Width="NaN" Height="NaN" ControlID="5408605046420899582" FontFamily="Tahoma" Canvas.Left="1201.2272883133328" Canvas.Top="99.934993300000031" cm:Event="dsForceCombo3,dsCheckExists" cm:FCVCol="5439769809059311180#5490808733585292313#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5113014426144589614#" cm:TMCol="" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnHierarchy" Content="تاییدیه سلسله مراتبی درخواست" Width="NaN" Height="NaN" ControlID="5352495781335708805" Canvas.Left="1195.2372883133328" Canvas.Top="138.42879403000023" cm:Event="dsSelectrbnHierarchy,dsCheckExists" cm:FCVCol="4849458309856855812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:TZCheckBox Name="chkActive3" Content="فعال" Width="NaN" Height="NaN" ControlID="5022571717356221893" FontFamily="Tahoma" Canvas.Left="147.44501964569255" Canvas.Top="137.33045399551543" cm:DefaultValue="true" />
                  <cm:tzDataGrid Name="GridView176" Width="1438" Height="418.28213828" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5597526069357991752" ItemsSource="{Binding ElementName=dsRead3, Path=DataItems}" Canvas.Left="16.45" Canvas.Top="196.26786173" cm:BindingForm="dsRead3" cm:Event="dsGridview3,dsCheckExists" cm:EventForAdd="dsCheckExists" cm:EventForDelete="dsCheckExists" cm:EventForEdit="dsCheckExists" cm:Form="31253" cm:FormName="فرم جستجوی افراد مجاز" cm:KeyField="DetermineRequestAccID" cm:UserCanExport="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="DetermineRequestAccID" DecimalMark="False" HeaderText="DetermineRequestAccID" IsRowColorField="False" KeyField="True" SortMemberPath="DetermineRequestAccID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding DetermineRequestAccID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="موضوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LocationTitle" DecimalMark="False" HeaderText="محل استقرار" IsRowColorField="False" KeyField="False" SortMemberPath="LocationTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LocationTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalatEntekhab" DecimalMark="False" HeaderText="نوع تایید کنندگان" IsRowColorField="False" KeyField="False" SortMemberPath="HalatEntekhab">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalatEntekhab}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="71" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HierarchyLevel" DecimalMark="False" HeaderText="تا سطوح" IsRowColorField="False" KeyField="False" SortMemberPath="HierarchyLevel">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HierarchyLevel}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="chkActive3" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="chkActive3">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding chkActive3}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:TZLookUp Name="LookUp133" Width="24.64392419" Height="27" ControlID="5113014426144589614" Canvas.Left="938.67051859333344" Canvas.Top="90.934993300000031" cm:Event="dsUserID3,dsSelectFullNameSec">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse DataGridId="5606949984111759610" DisplayMemberColumn="UserName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:tzDataSource Name="dsUserID3" Content="dsUserID3" Width="109.99999999999962" Height="25" ControlID="4630812749104244163" Canvas.Left="16.450000000000486" Canvas.Top="572.52867138000011" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp133}" />
                  <cm:tzDataSource Name="dsUniRequestKind3" Content="dsUniRequestKind3" Width="110" Height="25" ControlID="5354202491455567599" Canvas.Left="16.450000000000159" Canvas.Top="448.21460573" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsUsername" Content="dsUsername" Width="110" Height="25" ControlID="5168723378048164709" Canvas.Left="16.450000000000159" Canvas.Top="490.74865591" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetFullnameFromUserID_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button154" Content="حذف" Width="87.0000000000004" Height="23" ControlID="4736618890617257223" FontFamily="Tahoma" Canvas.Left="16.450000000000784" Canvas.Top="172.26786173000022" cm:Event="dsDelete3,dsRead3" />
                  <cm:TZButton Name="Button223" Content="ثبت" Width="77" Height="23" ControlID="5678713095758122645" FontFamily="Tahoma" Canvas.Left="112.45000000000158" Canvas.Top="172.26786173000022" cm:Event="dsInsert3,dsRead3" cm:Validations="5671351916939755458,5470929817002576955,5614079753730481623,4972265920432692656,5663299565898728487,5402851422252158988,5539938603151312102" />
                  <cm:TZButton Name="Button224" Content="جستجو" Width="87.0000000000004" Height="23" ControlID="4898276921775158352" FontFamily="Tahoma" Canvas.Left="16.4500000000005" Canvas.Top="136.10692943000026" cm:Event="dsRead3" />
                  <cm:tzDataSource Name="dsForceCombo3" Content="dsForceCombo3" Width="110" Height="25" ControlID="5578437259237172074" Canvas.Left="16.450000000000387" Canvas.Top="364.4497548999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ForceVariablesToUserHirarchy">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKind3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtUserID3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtUserID3" Width="120.00000000000046" Height="21" ControlID="5439769809059311180" Canvas.Left="135.44999999999985" Canvas.Top="576.52867138000011" cm:DataBinding="dsUserID3" cm:DataBindingField="Column1" cm:Event="dsUsername,dsForceCombo3" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="chkForceCombo3" Content="chkForceCombo3" Width="120" Height="20" ControlID="5247095645906577244" FontFamily="Tahoma" Canvas.Left="135.45000000000061" Canvas.Top="369.4497548999999" cm:DataBinding="dsForceCombo3" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsInsert3" Content="dsInsert3" Width="110" Height="25" ControlID="5524510087478913760" Canvas.Left="16.450000000000387" Canvas.Top="321.02058823999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkActive3}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkActive3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @HierarchyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnToLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnToLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOnlyLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyOnlyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtHierarchyOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmation" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzTextBox Name="txtDeleteRow3" Width="120" Height="21" ControlID="5250195443269286936" Canvas.Left="135.45000000000033" Canvas.Top="237.8946078400005" cm:DataBinding="dsGridview3" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsGridview3" Content="dsGridview3" Width="110" Height="25" ControlID="5002854636703324471" Canvas.Left="24.450000000000319" Canvas.Top="207.89460784000079" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GridView176.SelectedRowItem}" />
                  <cm:tzDataSource Name="dsDelete3" Content="dsDelete3" Width="110" Height="25" ControlID="4688230333647347580" Canvas.Left="16.450000000000387" Canvas.Top="276.93970587999996" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDeleteRow3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtDeleteRow" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsRead3" Content="dsRead3" Width="110" Height="25" ControlID="5123597645216804655" Canvas.Left="16.450000000000387" Canvas.Top="237.89460784000039" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkDisable" Content="chkDisable" Width="81" Height="20" ControlID="5669143527926527564" FontFamily="Tahoma" Canvas.Left="135.45000000000061" Canvas.Top="409.47916665999992" cm:DataBinding="dsDisable" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="5414923781258442294#5681758030317426284#5733345626838227956#5225204988739951888#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="110" Height="25" ControlID="4746838933069988153" Canvas.Left="16.450000000000387" Canvas.Top="404.47916665999992" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 " />
                  <cm:tzLabel Name="Lable161162" Content=":جستجوی کاربر" Canvas.Left="967.52653725666642" Canvas.Top="96.4516599655152" cm:ControlID="5109008466549891160" />
                  <cm:tzDataSource Name="dsRequestSubject3" Content="dsRequestSubject3" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="16.450000000000156" Canvas.Top="533.02464157000009" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLabel Name="Lable228" Content=":تا سطح" Width="NaN" Height="NaN" Canvas.Left="747.83429938569134" Canvas.Top="131.72072891333363" cm:ControlID="4700927339412753005" />
                  <cm:tzTextBox Name="txtHierarchyLevel" Width="100.95168631569095" Height="21" Canvas.Left="637.88261307" Canvas.Top="136.26786173" cm:ControlID="4849458309856855812" cm:DataBindingField="PersonnelCode" cm:DataType="Int" />
                  <cm:tzTextBox Name="txtResInsert3" Width="120" Height="21" Canvas.Left="135.45000000000061" Canvas.Top="321.02058823999994" cm:ControlID="4815109074761336372" cm:DataBinding="dsInsert3" cm:DataBindingField="Res" cm:Event="dsRead3,dsCheckExists" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="txtResDelete3" Width="120" Height="21" ControlID="4713627795527000143" Canvas.Left="135.45000000000039" Canvas.Top="280.93970587999991" cm:DataBinding="dsDelete3" cm:DataBindingField="Res" cm:Event="dsRead3,dsCheckExists" cm:IsVisibleItem="False" />
                  <cm:TZRadioButton Name="rbnNotAcc" Content="بدون تایید" Width="NaN" Height="NaN" Canvas.Left="1283.8237101999991" Canvas.Top="63.343629709999945" cm:ControlID="5730683233644939840" cm:Event="dsCheckValidateNotACc" />
                  <cm:tzLabel Name="Lable240" Content=": محل استقرار" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="303.287288313334" Canvas.Top="55.343629710000016" cm:ControlID="5216677400932200141" />
                  <cm:tzLookUpComboBox Name="cmbLocation" Width="277.83728830999962" Height="22" ControlID="5050022801165709513" Canvas.Left="16.450000000000067" Canvas.Top="55.343629710000016" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsLocation" cm:Event="dsCheckExists" cm:tzDisplayItem="LocationTitle" cm:tzValueItem="LocationID" />
                  <cm:tzLabel Name="Lable250" Content=":فقط سطح" Width="NaN" Height="NaN" Canvas.Left="747.83429938569111" Canvas.Top="165.20406224666681" cm:ControlID="4884316501345463371" />
                  <cm:tzTextBox Name="txtHierarchyOnlyLevel" Width="100.95168631569084" Height="21" ControlID="5651316636483490825" Canvas.Left="637.88261307000016" Canvas.Top="166.26786173000005" cm:DataType="Int" />
                  <cm:TZRadioButton Name="rbnToLevel" Content="تا سطح" ControlID="5642768753811687392" GroupName="123" Canvas.Left="905.044442783333" Canvas.Top="138.42879403000018" cm:DataBinding="dsSelectrbnHierarchy" cm:DataBindingField="Res" cm:DefaultValue="true" cm:FCVCol="4849458309856855812#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="4849458309856855812#" cm:TMCol="4849458309856855812#" cm:TVCol="" />
                  <cm:TZRadioButton Name="rbnOnlyLevel" Content="فقط سطح" Width="NaN" Height="NaN" GroupName="123" Canvas.Left="892.53110944999992" Canvas.Top="171.10692943000015" cm:ControlID="4642743964458069529" cm:FCVCol="5651316636483490825#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="5651316636483490825#" cm:TMCol="5651316636483490825#" cm:TVCol="" />
                  <cm:tzDataSource Name="dsSelectrbnHierarchy" Content="dsSelectrbnHierarchy" Width="110" Height="25" ControlID="5564920807403646562" Canvas.Left="275.140621646667" Canvas.Top="317.02058823999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnHierarchy} AS Res" />
                  <cm:TZCheckBox Name="chkHierarchy" Content="TZCheckBox" Width="73" Height="20" ControlID="5207450031826955584" Canvas.Left="1094.2237747999998" Canvas.Top="117.26786173000005" cm:DataBinding="dsSelectrbnHierarchy" cm:DataBindingField="Res" cm:FCVCol="5642768753811687392#4642743964458069529#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5642768753811687392#4642743964458069529#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsCheckValidateNotACc" Content="dsCheckValidateNotACc" Width="110" Height="25" ControlID="4816001715517357093" Canvas.Left="275.140621646667" Canvas.Top="276.93970587999991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckValidateNotAcc_Frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @RbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroup3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestKind3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckValidateNotAcc" Content="chkCheckValidateNotAcc" Width="120" Height="20" ControlID="4856264153266251646" FontFamily="Tahoma" Canvas.Left="402.99999999999977" Canvas.Top="276.93970588" cm:DataBinding="dsCheckValidateNotACc" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsLocation" Content="dsLocation" Width="110" Height="25" ControlID="5068745864499661644" Canvas.Left="275.140621646667" Canvas.Top="364.4497548999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_Location" />
                  <cm:tzDataSource Name="dsCheckExists" Content="dsCheckExists" Width="110" Height="25" ControlID="5546800206374802365" Canvas.Left="275.14062164666723" Canvas.Top="233.89460784000062" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckExists_DetermineRequestAcc_New">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbRequestSubject3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAccMain" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchyMain" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmationMain" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chkCheckExists" Content="chkCheckExists" Width="120" Height="20" ControlID="4868634925841731922" FontFamily="Tahoma" Canvas.Left="402.99999999999983" Canvas.Top="233.89460784000073" cm:DataBinding="dsCheckExists" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
                  <cm:tzTextBox Name="TextBox223" Width="276" Height="21" ControlID="5490808733585292313" Canvas.Left="638.88261307" Canvas.Top="96.934993300000031" cm:DataBinding="dsSelectFullNameSec" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullNameSec" Content="dsSelectFullNameSec" Width="110" Height="25" Canvas.Left="675.48353156000007" Canvas.Top="92.934993300000031" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="4923744869626779918" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUp133}" />
                  <cm:TZButton Name="Button232" Content="ویرایش" Width="75" Height="23" ControlID="5551097922681440870" Canvas.Left="199.14062164666717" Canvas.Top="172.26786173000028" cm:Event="dsUpdate3,dsRead3" />
                  <cm:tzDataSource Name="dsUpdate3" Content="dsUpdate3" Width="94.071072093333839" Height="25" ControlID="5083935207425077155" Canvas.Left="208.21621622" Canvas.Top="138.26786173" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDeleteRow3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtDeleteRow3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject3}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUserID3}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnHierarchy}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnHierarchy" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnPersonAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnPersonAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@chkActive3}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @chkActive3" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @HierarchyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnNotAcc}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnNotAcc" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnToLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnToLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOnlyLevel}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtHierarchyOnlyLevel}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtHierarchyOnlyLevel" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbLocation}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbLocation" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnManagerConfirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnManagerConfirmation" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZRadioButton Name="rbnManagerConfirmation" Content="نیاز به تایید مدیر رشته دارد؟" Width="161" Height="20" ControlID="5292917656300919479" FontFamily="Tahoma" Canvas.Left="1207.20728831" Canvas.Top="165.10692943" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="سلسله مراتب">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox284" Width="1466" Height="644.0333333366666" Background="#FFDEEFF7" ControlID="5437504011429785574" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView284" Width="1438" Height="606.55000001" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5291537330656315267" ItemsSource="{Binding ElementName=dsHierarchical, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsHierarchical" cm:Form="168" cm:FormName="فرم درج سلسله مراتب، فرم پایه میز خدمت" cm:IsSearchable="True" cm:KeyField="HierarchicalPublicServiceID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HierarchicalPublicServiceID" DecimalMark="False" HeaderText="HierarchicalPublicServiceID" IsRowColorField="False" KeyField="True" SortMemberPath="HierarchicalPublicServiceID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HierarchicalPublicServiceID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OUName" DecimalMark="False" HeaderText="سرشاخه" IsRowColorField="False" KeyField="False" SortMemberPath="OUName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OUName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="مدیر" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PublicSoftwareIsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="PublicSoftwareIsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PublicSoftwareIsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5570647258497720807" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                </Canvas>
              </cm:TzGroupBox>
              <cm:tzDataSource Name="dsHierarchical" Content="dsHierarchical" Width="110" Height="25" ControlID="5563001812668047827" Canvas.Left="223.38535031999976" Canvas.Top="122.62213376333328" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_HierarchicalPublicService" />
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="SLA">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox541" Width="1466" Height="644.03333334" Background="#FFDEEFF7" ControlID="4852622748829995715" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView195" Width="1420.07137859" Height="586" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5436980256612900213" ItemsSource="{Binding ElementName=dsGetSLAinfo, Path=DataItems}" Canvas.Left="17.92862141" Canvas.Top="18.08793261" cm:BindingForm="dsGetSLAinfo" cm:Form="31258" cm:KeyField="ID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ID" DecimalMark="False" HeaderText="ID" IsRowColorField="False" KeyField="True" SortMemberPath="ID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SLATitle" DecimalMark="False" HeaderText="عنوان SLA" IsRowColorField="False" KeyField="False" SortMemberPath="SLATitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SLATitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="58" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TimeDuration" DecimalMark="False" HeaderText="مدت زمان" IsRowColorField="False" KeyField="False" SortMemberPath="TimeDuration">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TimeDuration}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="isActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="isActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding isActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5364035431409225017" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetSLAinfo" Content="dsGetSLAinfo" Width="110" Height="25" ControlID="4859288558571001912" Canvas.Left="347.50967788000014" Canvas.Top="103.58406192666655" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_Tbl_Cu_Base_ServiceDeskSLA" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="فایل راهنما">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox180" Width="1466" Height="644.03333334" Background="#FFDEEFF7" BorderBrush="#FFD5DFE5" ControlID="5149115460930364380" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="GridView181" Width="1411" Height="586" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4887571958070513353" ItemsSource="{Binding ElementName=dsGetUplFile, Path=DataItems}" Canvas.Left="20.71666667" Canvas.Top="18.9" cm:BindingForm="dsGetUplFile" cm:Form="31252" cm:FormName="فرم آپلود فایل راهنما" cm:KeyField="ID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ID" DecimalMark="False" HeaderText="ID" IsRowColorField="False" KeyField="True" SortMemberPath="ID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="FileUpload" DataTextField="FileUpload" DecimalMark="False" HeaderText="فایل آپلود شده" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="FileUpload">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <HyperlinkButton Content="{Binding FileUpload}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding FileUpload}" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetUplFile" Content="dsGetUplFile" Width="110" Height="25" ControlID="5660339580791327398" Canvas.Left="20.716666670000109" Canvas.Top="74.455694446667252" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_Cu_Upload_Tbl_Cu_Base_ServiceDeskHelpFile" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="افراد مجاز">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox283" Width="1451" Height="625.03333334" Background="#FFDEEFF7" ControlID="4653395380082897838" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="16" cm:Header="">
                <Canvas>
                  <cm:tzDataGrid Name="gvAllowAble" Width="1402" Height="516.7026389" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5060880376704261640" ItemsSource="{Binding ElementName=dsSearchAllowUse, Path=DataItems}" Canvas.Left="19.1" Canvas.Top="68.48333333" cm:BindingForm="dsSearchAllowUse" cm:Form="242" cm:FormName="فرم ورود اطلاعات پایه افراد مجاز" cm:KeyField="ServiceDeskAllowAbleUserID" cm:ParamValues="4892227114633198821¢SubGrpID$5677450966544964473¢ReqSubID$5008755893319791604¢ReqKindID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="100" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="100" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AllowAbleFullName" DecimalMark="False" HeaderText="فرد مجاز" IsRowColorField="False" KeyField="False" SortMemberPath="AllowAbleFullName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AllowAbleFullName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServiceDeskAllowAbleUserID" DecimalMark="False" HeaderText="ServiceDeskAllowAbleUserID" IsRowColorField="False" KeyField="True" SortMemberPath="ServiceDeskAllowAbleUserID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServiceDeskAllowAbleUserID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="5201688022952781685" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzLabel Name="Lable285" Content=": زیر گروه" ControlID="4911733815608853818" FontFamily="Tahoma" Canvas.Left="1355.3333333299997" Canvas.Top="17.483333326666298" />
                  <cm:tzLabel Name="Lable289" Content=": نوع درخواست" ControlID="5559354487138500593" FontFamily="Tahoma" Canvas.Left="924.9995979933334" Canvas.Top="18.966666659999646" />
                  <cm:tzLabel Name="Lable297" Content=": عنوان درخواست" ControlID="4939955208615144556" FontFamily="Tahoma" Canvas.Left="285.1" Canvas.Top="17.483333326666298" />
                  <cm:tzLookUpComboBox Name="cmbAllowAbleSubGroupID" Width="257" Height="22" ControlID="4892227114633198821" Canvas.Left="1097.3333333299993" Canvas.Top="19.966666659999632" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleSubGroupID" cm:DataType="Int" cm:Event="dsAllowAbleRequestKindID,dsChekMandetory" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLookUpComboBox Name="cmbAllowAbleRequestSubject" Width="257" Height="22" ControlID="5677450966544964473" Canvas.Left="19.100000000000023" Canvas.Top="19.966666659999646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleRequestSubject" cm:DataType="Int" cm:Event="dsChekMandetory,dsSearchAllowUse" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzDataSource Name="dsAllowAbleSubGroupID" Content="dsAllowAbleSubGroupID" Width="120.00000000000006" Height="25" ControlID="4895135855828904450" Canvas.Left="19.1" Canvas.Top="241.83333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_AllowAble-frm141" />
                  <cm:tzDataSource Name="dsAllowAbleRequestKindID" Content="dsAllowAbleRequestKindID" Width="120.00000000000006" Height="25" ControlID="5120208877708642353" Canvas.Left="19.1" Canvas.Top="287.25" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_AllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="      @cmbAllowAbleSubGroupID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsAllowAbleRequestSubject" Content="dsAllowAbleRequestSubject" Width="120.00000000000006" Height="25" ControlID="5536809436186859784" Canvas.Left="19.1" Canvas.Top="327.21666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_AllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSearchAllowUse" Content="dsSearchAllowUse" Width="120" Height="25" ControlID="4737144159402014031" Canvas.Left="19.100000000000023" Canvas.Top="197.84265398999997" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_DetermineAllowAble_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="    @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="    {@cmbAllowAbleRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="    @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzLookUpComboBox Name="cmbAllowAbleRequestKindID" Width="257" Height="22" ControlID="5008755893319791604" Canvas.Left="658.99959799333317" Canvas.Top="19.966666659999646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsAllowAbleRequestKindID" cm:DataType="Int" cm:Event="dsAllowAbleRequestSubject,dsChekMandetory" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLabel Name="Lable198" Content="*" ControlID="4978171034643099621" FontFamily="Tahoma" Foreground="#FFF90909" Canvas.Left="1404.55" Canvas.Top="9.4833333266662976" />
                  <cm:tzLabel Name="Lable199200" Content="*" ControlID="5704047696474905966" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="1020.7862646600001" Canvas.Top="9.4833333266662976" />
                  <cm:tzLabel Name="Lable236" Content="*" ControlID="5745781004520581551" FontFamily="Tahoma" Foreground="#FFFC0202" Canvas.Left="384.42666666666645" Canvas.Top="9.4833333266663011" />
                  <cm:TZCheckBox Name="chMandetoryCheck" Content="MandetoryCheck" Width="123" Height="20" ControlID="5120612283792436266" Canvas.Left="190.10000000000002" Canvas.Top="163.68363063999993" cm:DataBinding="dsChekMandetory" cm:DataBindingField="ForceCheck" cm:Event="dsSelectGridView" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5060880376704261640#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsChekMandetory" Content="dsChekMandetory" Width="120.00000000000003" Height="27" ControlID="4641419177065466059" Canvas.Left="19.1" Canvas.Top="149.68363064" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryAllowAbleItem_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleSubGroupID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestKindID}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbAllowAbleRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="   @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="افراد مشاهده کننده فرآیند" cm:Len="150">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox330" Width="1453" Height="638.86021505" Background="#FFDEEFF7" ControlID="5313355617758754963" FontFamily="Tahoma" Canvas.Left="14.72043011" Canvas.Top="8" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable335" Content="*" ControlID="4916283208790817602" Foreground="#FFFC0202" Canvas.Left="1406.9498207899999" Canvas.Top="8" />
                  <cm:tzLabel Name="Lable336" Content=": انتخاب کاربر" ControlID="4898485934884777007" FontFamily="Tahoma" Canvas.Left="1339.8798207899997" Canvas.Top="22.068667856666721" />
                  <cm:TZLookUp Name="LookUpObservUser" Width="26.77747749" Height="27" ControlID="5426245109870041311" Canvas.Left="1312.1023433" Canvas.Top="-4.5166666666666515" cm:Event="dsGetObservUserID,dsActiveButton,dsSelectFullNameThird">
                    <cm:TZLookUp.LoadFormValue>
                      <cm:TZLookupLoadFromBrowse ControlListString="" DataGridId="5606949984111759610" DisplayMemberColumn="FullName" FormID="134" ValueMemberColumn="UserId" />
                    </cm:TZLookUp.LoadFormValue>
                  </cm:TZLookUp>
                  <cm:TZButton Name="ButInsertObservUser" Content="افزودن" Width="112" Height="27" ControlID="4946381329481421186" FontFamily="Tahoma" Canvas.Left="845.82213345999992" Canvas.Top="22.068667860000005" cm:Event="dsGetDate,dsDuplicateCheck,dsInsertObservUser,DuplicateCheckFroTblWorkflowInstanceTrustee,dsInstanceTrustee" />
                  <cm:tzDataGrid Name="GridView473" Width="1394.21021506" Height="519" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4911232160994511100" ItemsSource="{Binding ElementName=dsShowObservUser, Path=DataItems}" Canvas.Left="21.28960573" Canvas.Top="80.52837049" cm:BindingForm="dsShowObservUser" cm:Event="dsSelectWorkflowPermissionId" cm:KeyField="WorkflowPermissionId" cm:UserCanDelete="False" cm:UserCanExport="True" cm:UserCanInsert="False">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowPermissionId" DecimalMark="False" HeaderText="WorkflowPermissionId" IsRowColorField="False" KeyField="True" SortMemberPath="WorkflowPermissionId">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowPermissionId}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="30" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AllowAbleFullNam" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="AllowAbleFullNam">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AllowAbleFullNam}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsInsertObservUser" Content="dsInsertObservUser" Width="155" Height="25" ControlID="5387225543115897479" Canvas.Left="24.133446250000134" Canvas.Top="135.54503716000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_InsertObservUser_FRM141{@txtObservUserID}" />
                  <cm:tzDataSource Name="dsShowObservUser" Content="dsShowObservUser" Width="155.00000000000006" Height="25" ControlID="5263797783461628099" Canvas.Left="24.13344625" Canvas.Top="225.29004532" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_ShowObservUser_FRM141" />
                  <cm:TZButton Name="Button213" Content="جستجو" Width="112.00000000000011" Height="27" ControlID="4779945134842258436" FontFamily="Tahoma" Canvas.Left="975.10234329999844" Canvas.Top="22.068667860000005" cm:Event="dsGetDate,dsShowObservUser" />
                  <cm:TZCheckBox Name="chDuplicateCheck" Content="chDuplicateCheck" Width="120" Height="20" ControlID="4938308613145155780" Canvas.Left="188.13344624999976" Canvas.Top="321.12837049000007" cm:DataBinding="dsDuplicateCheck" cm:DataBindingField="CheckDuplicate" cm:IsVisibleItem="False" />
                  <cm:TZCheckBox Name="CheckBox357" Content="chDupCheckTrust" Width="120" Height="20" ControlID="5531339490603476350" FontFamily="Tahoma" Canvas.Left="188.13344624999979" Canvas.Top="450.56170383000006" cm:DataBinding="DuplicateCheckFroTblWorkflowInstanceTrustee" cm:DataBindingField="CheckDuplicate" cm:Event="DuplicateCheckFroTblWorkflowInstanceTrustee" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4946381329481421186#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsGetObservUserID" Content="dsGetObservUserID" Width="155.00000000000003" Height="25" ControlID="5268685738305612188" Canvas.Left="24.13344625" Canvas.Top="179.87337865" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUpObservUser} as ObservUserID" />
                  <cm:tzTextBox Name="txtObservUserID" Width="120" Height="21" ControlID="5277489616558113226" Canvas.Left="188.13344625000005" Canvas.Top="179.87337865000006" cm:DataBinding="dsGetObservUserID" cm:DataBindingField="ObservUserID" cm:DataType="BigInt" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsActiveButton" Content="dsActiveButton" Width="155.00000000000006" Height="25" ControlID="4829285922287723554" Canvas.Left="24.13344625" Canvas.Top="268.33533452" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_ObservUserActiveButton_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ObservUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="chActiveButton" Content="TZCheckBox" Width="120" Height="20" ControlID="5626694006231985346" Canvas.Left="188.13344624999982" Canvas.Top="268.33533451999995" cm:DataBinding="dsActiveButton" cm:DataBindingField="ActiveButton" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4946381329481421186#" cm:TMCol="" cm:TVCol="" />
                  <cm:tzDataSource Name="dsDuplicateCheck" Content="dsDuplicateCheck" Width="155.00000000000009" Height="25" ControlID="5368203105238181103" Canvas.Left="24.13344625" Canvas.Top="316.12837049" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateObservUserInsert_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @ObservUserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetDate" Content="dsGetDate" Width="155.00000000000011" Height="25" ControlID="4691376391515028086" Canvas.Left="24.13344625" Canvas.Top="358.59503716" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select getdate()" />
                  <cm:tzDataSource Name="dsInstanceTrustee" Content="dsInstanceTrustee" Width="155.00000000000014" Height="25" ControlID="5612120341010810065" Canvas.Left="24.13344625" Canvas.Top="404.57837049" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="[Sp_Cu_InsertInto_WorkflowPermission] 38,{@txtObservUserID}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="DuplicateCheckFroTblWorkflowInstanceTrustee" Content="DuplicateCheckFroTblWorkflowInstanceTrustee" Width="155.00000000000017" Height="25" ControlID="5181082255490211115" Canvas.Left="24.13344625" Canvas.Top="450.56170383" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateInsertTblWorkflowInstanceTrustee_FRM141{@txtObservUserID}">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtObservUserID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZCheckBox Name="CheckBox370" Content="checkMandetory" Width="120" Height="20" ControlID="5251231392626029639" FontFamily="Tahoma" Canvas.Left="188.13344624999982" Canvas.Top="495.86666667" cm:FCVCol="" cm:FECol="" cm:FMCol="5426245109870041311#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                  <cm:tzTextBox Name="TextBox241" Width="185" Height="21" ControlID="4979301360564482909" Canvas.Left="1111.1023433" Canvas.Top="28.06866786" cm:DataBinding="dsSelectFullNameThird" cm:DataBindingField="FullName" cm:IsEnableItem="False" />
                  <cm:tzDataSource Name="dsSelectFullNameThird" Content="dsSelectFullNameThird" Width="110" Height="25" Canvas.Left="1119.4835315600003" Canvas.Top="24.068667860000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ControlID="5339829527989302378" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT FullName From USers.tblprofiles where userid = {@LookUpObservUser}" />
                  <cm:tzDataSource Name="dsDeleteWorkflowPerm" Content="dsDeleteWorkflowPerm" Width="110" Height="25" ControlID="5388663757141722697" Canvas.Left="188.13344625000033" Canvas.Top="20.528370489999933" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_DeleteFrom_TblWorklfowPermission_Frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWorkflowPermissionId}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WorkflowPermissionId" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsSelectWorkflowPermissionId" Content="dsSelectWorkflowPermissionId" Width="155.00000000000026" Height="25" ControlID="4728281149282297523" Canvas.Left="24.13344625" Canvas.Top="21.55200119" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@GridView473} AS WorkflowPermissionId" />
                  <cm:tzTextBox Name="txtWorkflowPermissionId" Width="155.00000000000034" Height="21" ControlID="5655706767847882459" Canvas.Left="24.13344625" Canvas.Top="50.52837049" cm:DataBinding="dsSelectWorkflowPermissionId" cm:DataBindingField="WorkflowPermissionId" cm:DataType="BigInt" cm:Event="dsEnableWorkflowPermissionDelete" cm:IsVisibleItem="False" />
                  <cm:tzDataSource Name="dsEnableWorkflowPermissionDelete" Content="dsEnableWorkflowPermissionDelete" Width="110" Height="25" ControlID="4663730585564806672" Canvas.Left="188.13344625000013" Canvas.Top="46.528370489999929" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="IF ISNULL({@txtWorkflowPermissionId},0) != 0 SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" />
                  <cm:TZCheckBox Name="chkVisiableDelete" Content="chkVisiableDelete" Width="120" Height="20" ControlID="5690861887726765855" FontFamily="Tahoma" Canvas.Left="307.13344625000013" Canvas.Top="51.528370489999872" cm:DataBinding="dsEnableWorkflowPermissionDelete" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4658235518549185968#" cm:TMCol="" cm:TVCol="" />
                  <cm:TZButton Name="btnDeleteWorkflowPermission" Content="حذف" Width="112.00000000000011" Height="26.45970263" ControlID="4658235518549185968" Canvas.Left="724.8221334599998" Canvas.Top="24.06866785999982" cm:Event="dsDeleteWorkflowPerm" />
                  <cm:tzTextBox Name="txtDeleteRes" Width="120" Height="21" ControlID="5348728527729747721" Canvas.Left="307.13344625" Canvas.Top="21.528370489999816" cm:DataBinding="dsDeleteWorkflowPerm" cm:DataBindingField="Res" cm:Event="dsShowObservUser" cm:IsVisibleItem="False" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
          <cm:TZTabItem HeaderText="اشخاص ممنوعه">
            <Canvas>
              <cm:TzGroupBox Name="GroupBox336" Width="1450" Height="630" Background="#FFDEEFF7" ControlID="4741419625028267920" FontFamily="Tahoma" Canvas.Left="16.67834395" Canvas.Top="14.94267516" cm:Header="">
                <Canvas>
                  <cm:tzLabel Name="Lable221" Content=":زیر گروه" ControlID="5162986729854654585" FontFamily="Tahoma" Canvas.Left="1353.8347763599991" Canvas.Top="19.516666666666666" />
                  <cm:tzLabel Name="Lable223" Content=":نوع درخواست" ControlID="5649385629934869768" Canvas.Left="946.7217006099994" Canvas.Top="19.516666666666669" />
                  <cm:tzLabel Name="Lable224" Content=":عنوان درخواست" ControlID="5755229757803642813" Canvas.Left="274.55763723999974" Canvas.Top="19.516666666666662" />
                  <cm:tzLookUpComboBox Name="CmbForbiddenSubGroup" Width="239" Height="22" ControlID="4833035455123790760" Canvas.Left="1105.8347763599991" Canvas.Top="22" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforrbidenSubGrp" cm:Event="dsGetforbiddenRequestKind" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
                  <cm:tzLabel Name="Lable227" Content="*" ControlID="5137650957383219475" FontFamily="Tahoma" Foreground="#FFF70404" Canvas.Left="1398.5576372399999" Canvas.Top="11.516666666666652" />
                  <cm:tzLabel Name="Lable228229" Content="*" ControlID="4666385922223308487" FontFamily="Tahoma" Foreground="#FFFC0707" Canvas.Left="1021.2083672766659" Canvas.Top="5.9999999999996589" />
                  <cm:tzLookUpComboBox Name="cmbforbiddenRequestKind" Width="239" Height="22" ControlID="5566240721769484543" Canvas.Left="698.72170060999906" Canvas.Top="22.000000000000004" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforbiddenRequestKind" cm:Event="dsGetforbiddenRequestSubject" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
                  <cm:tzLookUpComboBox Name="cmbforbiddenRequestSubject" Width="239" Height="22" ControlID="5301987341456284185" Canvas.Left="26.557637239999735" Canvas.Top="22" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetforbiddenRequestSubject" cm:Event="dsFMandetoryCheck" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
                  <cm:tzLabel Name="Lable231" Content="*" ControlID="5439729079790929957" FontFamily="Tahoma" Foreground="#FFFF0707" Canvas.Left="362.13430390666628" Canvas.Top="5.9999999999995435" />
                  <cm:tzDataGrid Name="forbiddenGridView235" Width="1391" Height="502" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5087833493783800728" ItemsSource="{Binding ElementName=dsGetTreeInfo, Path=DataItems}" Canvas.Left="24.107637239999804" Canvas.Top="81" cm:BindingForm="dsGetTreeInfo" cm:Form="260" cm:FormName="فرم ورود اطلاعات پایه افراد ممنوعه" cm:KeyField="ForbiddenID" cm:ParamValues="4833035455123790760¢fSubGroupID$5566240721769484543¢fResuestKind$5301987341456284185¢fRequestTitle" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanExport="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
                    <cm:tzDataGrid.Resources>
                      <cm:MainCommands x:Key="MainCommands" />
                      <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                    </cm:tzDataGrid.Resources>
                    <cm:tzDataGrid.Columns>
                      <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubGroupTitle" DecimalMark="False" HeaderText="زیر گروه" IsRowColorField="False" KeyField="False" SortMemberPath="SubGroupTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubGroupTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestKindTitle" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestKindTitle">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestKindTitle}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="123" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestSubjectName" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="RequestSubjectName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestSubjectName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn Width="57" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OUName" DecimalMark="False" HeaderText="OUName" IsRowColorField="False" KeyField="False" SortMemberPath="OUName">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OUName}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ForbiddenIsActive" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="ForbiddenIsActive">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ForbiddenIsActive}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                      <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ForbiddenID" DecimalMark="False" HeaderText="ForbiddenID" IsRowColorField="False" KeyField="True" SortMemberPath="ForbiddenID">
                        <cm:tzDataGridTemplateColumn.CellTemplate>
                          <cm:TzDataTemplate>
                            <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ForbiddenID}" TextWrapping="Wrap" />
                          </cm:TzDataTemplate>
                        </cm:tzDataGridTemplateColumn.CellTemplate>
                      </cm:tzDataGridTemplateColumn>
                    </cm:tzDataGrid.Columns>
                    <cm:tzDataGrid.PopupValidations>
                      <cm:TzPopupValidation ValidationID="4867829483582297328" />
                    </cm:tzDataGrid.PopupValidations>
                  </cm:tzDataGrid>
                  <cm:tzDataSource Name="dsGetTreeInfo" Content="dsGetTreeInfo" Width="120.54999999999976" Height="25" ControlID="4929310930436950651" Canvas.Left="26.55763724" Canvas.Top="264.88354565" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_ServiceDeskForbiddenUser_frm141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubGroupID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestKindID" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbforbiddenRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @RequestSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:TZButton Name="Button237" Content="جستجو" Width="123" Height="23" ControlID="4709067211916302377" FontFamily="Tahoma" Canvas.Left="24.107637239999491" Canvas.Top="57.000000000000007" cm:Event="dsgetdate,dsGetTreeInfo" />
                  <cm:tzDataSource Name="dsgetdate" Content="dsgetdate" Width="123.00000000000026" Height="25" ControlID="5359110528118038110" Canvas.Left="24.10763724" Canvas.Top="149.45" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select getdate()" />
                  <cm:tzDataSource Name="dsGetforbiddenRequestSubject" Content="dsGetforbiddenRequestSubject" Width="123.00000000000006" Height="25" ControlID="4992193544339947908" Canvas.Left="24.10763724" Canvas.Top="115.45" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_Forbidden_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="   @CmbForbiddenSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="   @cmbforbiddenRequestKind" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsFMandetoryCheck" Content="dsFMandetoryCheck" Width="122.99999999999986" Height="18" ControlID="4834045988928984767" Canvas.Left="24.10763724" Canvas.Top="189.56687898" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryForbiddenItem_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @CmbForbiddenSubGroup" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbforbiddenRequestKind" />
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbforbiddenRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @cmbforbiddenRequestSubject" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetforbiddenRequestKind" Content="dsGetforbiddenRequestKind" Width="120.54999999999967" Height="25" ControlID="5704299461850457878" Canvas.Left="26.55763724" Canvas.Top="222.63333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_Forbidden_FRM141">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbForbiddenSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="   @CmbForbiddenSubGroup" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                  <cm:tzDataSource Name="dsGetforrbidenSubGrp" Content="dsGetforrbidenSubGrp" Width="120.54999999999976" Height="25" ControlID="4745086393086727963" Canvas.Left="26.55763723999998" Canvas.Top="306.15021232" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_Forbidden-frm141" />
                  <cm:TZCheckBox Name="CheckBox243" Content="chMandetoryCheck" Width="89.4170512299998" Height="20" ControlID="5133165130410791771" FontFamily="Tahoma" Canvas.Left="148.10763723999949" Canvas.Top="311.15021231999992" cm:DataBinding="dsFMandetoryCheck" cm:DataBindingField="ForceCheck" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5087833493783800728#" cm:TMCol="" cm:TVCol="" />
                </Canvas>
              </cm:TzGroupBox>
            </Canvas>
          </cm:TZTabItem>
        </cm:TZTabControl>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1404/02/16 11:14:39', GUID = 'c18e048c-1442-4427-b919-0f99674dfb67', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "141" ,"components": [{"value": "","key": "5626694006231985346","label": "chActiveButton","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "ActiveButton"},{"value": "","key": "4938308613145155780","label": "chDuplicateCheck","controlType": "checkbox","caption": "chDuplicateCheck" ,"DataBindingField" : "CheckDuplicate"},{"value": "","key": "5133165130410791771","label": "CheckBox243","controlType": "checkbox","caption": "chMandetoryCheck" ,"DataBindingField" : "ForceCheck"},{"value": "","key": "5531339490603476350","label": "CheckBox357","controlType": "checkbox","caption": "chDupCheckTrust" ,"DataBindingField" : "CheckDuplicate"},{"value": "","key": "5251231392626029639","label": "CheckBox370","controlType": "checkbox","caption": "checkMandetory" ,"DataBindingField" : ""},{"value": "true","key": "5022571717356221893","label": "chkActive3","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "4868634925841731922","label": "chkCheckExists","controlType": "checkbox","caption": "chkCheckExists" ,"DataBindingField" : "Res"},{"value": "","key": "4714712306533876512","label": "chkCheckExistsEghdam","controlType": "checkbox","caption": "chkCheckExistsEghdam" ,"DataBindingField" : "Res"},{"value": "","key": "4856264153266251646","label": "chkCheckValidateNotAcc","controlType": "checkbox","caption": "chkCheckValidateNotAcc" ,"DataBindingField" : "Res"},{"value": "","key": "5669143527926527564","label": "chkDisable","controlType": "checkbox","caption": "chkDisable" ,"DataBindingField" : "Column1"},{"value": "","key": "4721231163390093653","label": "chkEnable","controlType": "checkbox","caption": "chkEnable" ,"DataBindingField" : "res"},{"value": "","key": "4718280222361325084","label": "chkEnable2","controlType": "checkbox","caption": "chkEnable2" ,"DataBindingField" : "res"},{"value": "","key": "5471496556158595679","label": "chkEnable3","controlType": "checkbox","caption": "chkEnable3" ,"DataBindingField" : "res"},{"value": "","key": "5694591723591438281","label": "chkForceCombo","controlType": "checkbox","caption": "chkForceCombo" ,"DataBindingField" : "res"},{"value": "","key": "5247095645906577244","label": "chkForceCombo3","controlType": "checkbox","caption": "chkForceCombo3" ,"DataBindingField" : "res"},{"value": "","key": "5207450031826955584","label": "chkHierarchy","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "true","key": "5411635696962178764","label": "chkIsActive","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "5690861887726765855","label": "chkVisiableDelete","controlType": "checkbox","caption": "chkVisiableDelete" ,"DataBindingField" : "Res"},{"value": "","key": "5120612283792436266","label": "chMandetoryCheck","controlType": "checkbox","caption": "MandetoryCheck" ,"DataBindingField" : "ForceCheck"},{"key": "5008755893319791604","label": "cmbAllowAbleRequestKindID","value": "", "controlType": "dropdown","options":""},{"key": "5677450966544964473","label": "cmbAllowAbleRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4892227114633198821","label": "cmbAllowAbleSubGroupID","value": "", "controlType": "dropdown","options":""},{"key": "5004530541336532292","label": "cmbFieldSubject","value": "", "controlType": "dropdown","options":""},{"key": "5566240721769484543","label": "cmbforbiddenRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5301987341456284185","label": "cmbforbiddenRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4833035455123790760","label": "CmbForbiddenSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4818150681943631791","label": "cmbGroupName","value": "", "controlType": "dropdown","options":""},{"key": "5050022801165709513","label": "cmbLocation","value": "", "controlType": "dropdown","options":""},{"key": "4651851275301820523","label": "cmbRequestKind3","value": "", "controlType": "dropdown","options":""},{"key": "5456563802719509205","label": "cmbRequestKindForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "5276893744932336389","label": "cmbRequestKindID","value": "", "controlType": "dropdown","options":""},{"key": "5016382732342712582","label": "cmbRequestKindID5","value": "", "controlType": "dropdown","options":""},{"key": "5055214696737490076","label": "cmbRequestKindID6","value": "", "controlType": "dropdown","options":""},{"key": "4941026096929921893","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "4695208060128895821","label": "cmbRequestSubject3","value": "", "controlType": "dropdown","options":""},{"key": "4646490773001678958","label": "cmbRequestSubject6","value": "", "controlType": "dropdown","options":""},{"key": "5094466931308842551","label": "cmbRequestSubjectForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "5350339319748265747","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "5168525964139324294","label": "cmbSubGroup3","value": "", "controlType": "dropdown","options":""},{"key": "4826009166159449630","label": "cmbSubGroupForEghdam","value": "", "controlType": "dropdown","options":""},{"key": "4942403356356019292","label": "cmbSubGroupID","value": "", "controlType": "dropdown","options":""},{"key": "4822823333807585022","label": "cmbSubGroupID5","value": "", "controlType": "dropdown","options":""},{"key": "4968127004479232849","label": "cmbSubGroupID6","value": "", "controlType": "dropdown","options":""},{"key":"4829285922287723554" , "dataSourceName":"dsActiveButton" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_ObservUserActiveButton_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5120208877708642353" , "dataSourceName":"dsAllowAbleRequestKindID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_AllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5536809436186859784" , "dataSourceName":"dsAllowAbleRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_AllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4895135855828904450" , "dataSourceName":"dsAllowAbleSubGroupID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_AllowAble-frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5546800206374802365" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckExists_DetermineRequestAcc_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5178484283304823112" , "dataSourceName":"dsCheckExists2" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckExists_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4816001715517357093" , "dataSourceName":"dsCheckValidateNotACc" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidateNotAcc_Frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4641419177065466059" , "dataSourceName":"dsChekMandetory" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryAllowAbleItem_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4645150676024804602" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141 {@txtDeleteRow}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4688230333647347580" , "dataSourceName":"dsDelete3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_DeleteFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5388663757141722697" , "dataSourceName":"dsDeleteWorkflowPerm" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_DeleteFrom_TblWorklfowPermission_Frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4746838933069988153" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"select 1 " , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5368203105238181103" , "dataSourceName":"dsDuplicateCheck" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateObservUserInsert_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4793645083043692532" , "dataSourceName":"dsEnable" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenComboIsNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5246080342187869674" , "dataSourceName":"dsEnable2" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenCombosAreNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5092178803662675304" , "dataSourceName":"dsEnable3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_EnableGridWhenComboIsNotEmpty" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4663730585564806672" , "dataSourceName":"dsEnableWorkflowPermissionDelete" , "controlType": "datasource",  "selectQuery" :"IF ISNULL({@txtWorkflowPermissionId},0) != 0 SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4834045988928984767" , "dataSourceName":"dsFMandetoryCheck" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckMandetoryForbiddenItem_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5337117101913305963" , "dataSourceName":"dsForceCombo" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ForceVariablesToUserEghdam" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5578437259237172074" , "dataSourceName":"dsForceCombo3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ForceVariablesToUserHirarchy" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5359110528118038110" , "dataSourceName":"dsgetdate" , "controlType": "datasource",  "selectQuery" :"select getdate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4691376391515028086" , "dataSourceName":"dsGetDate" , "controlType": "datasource",  "selectQuery" :"select getdate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5704299461850457878" , "dataSourceName":"dsGetforbiddenRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_Forbidden_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4992193544339947908" , "dataSourceName":"dsGetforbiddenRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_Forbidden_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4745086393086727963" , "dataSourceName":"dsGetforrbidenSubGrp" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_Forbidden-frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5268685738305612188" , "dataSourceName":"dsGetObservUserID" , "controlType": "datasource",  "selectQuery" :"select {@LookUpObservUser} as ObservUserID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4859288558571001912" , "dataSourceName":"dsGetSLAinfo" , "controlType": "datasource",  "selectQuery" :"SP_Cu_Tbl_Cu_Base_ServiceDeskSLA" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4929310930436950651" , "dataSourceName":"dsGetTreeInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_ServiceDeskForbiddenUser_frm141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5660339580791327398" , "dataSourceName":"dsGetUplFile" , "controlType": "datasource",  "selectQuery" :"SP_Cu_Upload_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5717000300060544390" , "dataSourceName":"dsGridview" , "controlType": "datasource",  "selectQuery" :"select {@GridView314.SelectedRowItem}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5002854636703324471" , "dataSourceName":"dsGridview3" , "controlType": "datasource",  "selectQuery" :"select {@GridView176.SelectedRowItem}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5160304345284955323" , "dataSourceName":"dsGroupName" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GroupName_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5563001812668047827" , "dataSourceName":"dsHierarchical" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_HierarchicalPublicService" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5547239877992471335" , "dataSourceName":"dsInsert" , "controlType": "datasource",  "selectQuery" :"Sp_CU_InsertInto_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5524510087478913760" , "dataSourceName":"dsInsert3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387225543115897479" , "dataSourceName":"dsInsertObservUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_InsertObservUser_FRM141{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4760347381838657308" , "dataSourceName":"dsInsrtToText" , "controlType": "datasource",  "selectQuery" :"select {@LookUp290}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5612120341010810065" , "dataSourceName":"dsInstanceTrustee" , "controlType": "datasource",  "selectQuery" :"[Sp_Cu_InsertInto_WorkflowPermission] 38,{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5068745864499661644" , "dataSourceName":"dsLocation" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_Location" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5747119805119259443" , "dataSourceName":"dsRead" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineEghdamUsers_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5123597645216804655" , "dataSourceName":"dsRead3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783005421192912395" , "dataSourceName":"dsReadFieldSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5694583863803622089" , "dataSourceName":"dsReadFieldSubject6" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadFrom_Tbl_CU_Base_FieldSubject_FRM157" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5304657148491250252" , "dataSourceName":"dsReadRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_RequestKind_FRM153" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5406862607317526399" , "dataSourceName":"dsReadValue" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Read_Tbl_CU_Base_FieldValue_FRM167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4845498683050207478" , "dataSourceName":"dsReasRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_RequestSubject_FRM155" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4865574286142649124" , "dataSourceName":"dsRequestKindID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4715466671391730517" , "dataSourceName":"dsRequestKindID2" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4629968209532716470" , "dataSourceName":"dsRequestKindID5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5649708080956196811" , "dataSourceName":"dsRequestKindID6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5336654733944300285" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4671777547929868233" , "dataSourceName":"dsRequestSubject5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5487764314359942264" , "dataSourceName":"dsRequestSubject6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubject_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4737144159402014031" , "dataSourceName":"dsSearchAllowUse" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_DetermineAllowAble_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4799228042320276838" , "dataSourceName":"dsSelectFullName" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUp290}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4923744869626779918" , "dataSourceName":"dsSelectFullNameSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUp133}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5339829527989302378" , "dataSourceName":"dsSelectFullNameThird" , "controlType": "datasource",  "selectQuery" :"SELECT FullName From USers.tblprofiles where userid = {@LookUpObservUser}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5564920807403646562" , "dataSourceName":"dsSelectrbnHierarchy" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnHierarchy} AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4728281149282297523" , "dataSourceName":"dsSelectWorkflowPermissionId" , "controlType": "datasource",  "selectQuery" :"SELECT {@GridView473} AS WorkflowPermissionId" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5263797783461628099" , "dataSourceName":"dsShowObservUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_ShowObservUser_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4728373506184342381" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4681298825570567329" , "dataSourceName":"dsSubGroupID" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4758379092434607172" , "dataSourceName":"dsSubGroupID5" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5086555903453570941" , "dataSourceName":"dsSubGroupID6" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5244903530493884167" , "dataSourceName":"dsSubGroupRead" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_SubGroups_FRM151" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5354202491455567599" , "dataSourceName":"dsUniRequestKind3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5083935207425077155" , "dataSourceName":"dsUpdate3" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4630812749104244163" , "dataSourceName":"dsUserID3" , "controlType": "datasource",  "selectQuery" :"select {@LookUp133}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5168723378048164709" , "dataSourceName":"dsUsername" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFullnameFromUserID_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5181082255490211115" , "dataSourceName":"DuplicateCheckFroTblWorkflowInstanceTrustee" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ReadFrom_Tbl_CU_Base_CheckDuplicateInsertTblWorkflowInstanceTrustee_FRM141{@txtObservUserID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5176516729340273551","label": "TextBox220","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5490808733585292313","label": "TextBox223","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4979301360564482909","label": "TextBox241","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5348728527729747721","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4990715908260578320","label": "txtDeleteRow","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5250195443269286936","label": "txtDeleteRow3","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5681758030317426284","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4849458309856855812","label": "txtHierarchyLevel","controlType": "textbox", "type": "" , "DataBindingField" : "PersonnelCode"},{"value": "","key": "5651316636483490825","label": "txtHierarchyOnlyLevel","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5277489616558113226","label": "txtObservUserID","controlType": "textbox", "type": "" , "DataBindingField" : "ObservUserID"},{"value": "20","key": "5414923781258442294","label": "txtPersonelCode","controlType": "textbox", "type": "" , "DataBindingField" : "PersonnelCode"},{"value": "","key": "4713627795527000143","label": "txtResDelete3","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4815109074761336372","label": "txtResInsert3","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5016914736049017937","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5439769809059311180","label": "txtUserID3","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5655706767847882459","label": "txtWorkflowPermissionId","controlType": "textbox", "type": "" , "DataBindingField" : "WorkflowPermissionId"}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 141
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm141') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm141] ( [frm141Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4942403356356019292]  [nvarchar] ( 50) NULL , [Col_5276893744932336389]  [nvarchar] ( 50) NULL , [Col_4941026096929921893]  [nvarchar] ( 50) NULL , [Col_5350339319748265747]  [int] NULL , [Col_4721231163390093653]  [bit] NULL , [Col_4718280222361325084]  [bit] NULL , [Col_5471496556158595679]  [bit] NULL , [Col_4826009166159449630]  [int] NULL , [Col_5456563802719509205]  [int] NULL , [Col_5094466931308842551]  [int] NULL , [Col_5353767825611093820]  [bit] NULL , [Col_5540986736218024796]  [bit] NULL , [Col_5274263548684808881]  [bit] NULL , [Col_5667981522562062812]  [nvarchar] ( 50) NULL , [Col_5016914736049017937]  [nvarchar] ( 50) NULL , [Col_5694591723591438281]  [bit] NULL , [Col_4990715908260578320]  [nvarchar] ( 50) NULL , [Col_5414923781258442294]  [nvarchar] ( 50) NULL , [Col_5681758030317426284]  [nvarchar] ( 50) NULL , [Col_5733345626838227956]  [nvarchar] ( 50) NULL , [Col_5225204988739951888]  [nvarchar] ( 50) NULL , [Col_4695208060128895821]  [int] NULL , [Col_4651851275301820523]  [int] NULL , [Col_5168525964139324294]  [int] NULL , [Col_4749361824538211076]  [int] NULL , [Col_5103909428158039692]  [int] NULL , [Col_5593690232940978000]  [int] NULL , [Col_5408605046420899582]  [bit] NULL , [Col_5352495781335708805]  [bit] NULL , [Col_4624082902614603591]  [bit] NULL , [Col_5137043738733234862]  [bit] NULL , [Col_5022571717356221893]  [bit] NULL , [Col_5703054776624028126]  [bit] NULL , [Col_5439769809059311180]  [nvarchar] ( 50) NULL , [Col_5113014426144589614]  [nvarchar] ( 50) NULL , [Col_5247095645906577244]  [bit] NULL , [Col_5250195443269286936]  [nvarchar] ( 50) NULL , [Col_5218787150543148733]  [nvarchar] ( 50) NULL , [Col_5240467189583789264]  [nvarchar] ( 50) NULL , [Col_5750404642420030986]  [bit] NULL , [Col_5107334998813963841]  [nvarchar] ( 50) NULL , [Col_5669143527926527564]  [bit] NULL , [Col_5411635696962178764]  [bit] NULL , [Col_4818150681943631791]  [nvarchar] ( 50) NULL , [Col_4822823333807585022]  [nvarchar] ( 50) NULL , [Col_5016382732342712582]  [nvarchar] ( 50) NULL , [Col_4968127004479232849]  [nvarchar] ( 50) NULL , [Col_5055214696737490076]  [nvarchar] ( 50) NULL , [Col_4646490773001678958]  [nvarchar] ( 50) NULL , [Col_5004530541336532292]  [nvarchar] ( 50) NULL , [Col_5430364406490735121]  [nvarchar] ( 50) NULL , [Col_4849458309856855812]  [nvarchar] ( 50) NULL , [Col_4820093091361140435]  [nvarchar] ( 50) NULL , [Col_4703900633473864173]  [nvarchar] ( 50) NULL , [Col_4815109074761336372]  [nvarchar] ( 50) NULL , [Col_4713627795527000143]  [nvarchar] ( 50) NULL , [Col_4892227114633198821]  [int] NULL , [Col_5008755893319791604]  [int] NULL , [Col_5677450966544964473]  [int] NULL , [Col_5120612283792436266]  [bit] NULL , [Col_4833035455123790760]  [nvarchar] ( 50) NULL , [Col_5566240721769484543]  [nvarchar] ( 50) NULL , [Col_5301987341456284185]  [nvarchar] ( 50) NULL , [Col_5133165130410791771]  [bit] NULL , [Col_5651316636483490825]  [int] NULL , [Col_5050022801165709513]  [nvarchar] ( 50) NULL , [Col_5730683233644939840]  [bit] NULL , [Col_5642768753811687392]  [bit] NULL , [Col_4642743964458069529]  [bit] NULL , [Col_5207450031826955584]  [bit] NULL , [Col_4856264153266251646]  [bit] NULL , [Col_4868634925841731922]  [bit] NULL , [Col_4714712306533876512]  [bit] NULL , [Col_5277489616558113226]  [bigint] NULL , [Col_4938308613145155780]  [bit] NULL , [Col_5531339490603476350]  [bit] NULL , [Col_5626694006231985346]  [bit] NULL , [Col_5251231392626029639]  [bit] NULL , [Col_5426245109870041311]  [nvarchar] ( 50) NULL , [Col_5176516729340273551]  [nvarchar] ( 50) NULL , [Col_5490808733585292313]  [nvarchar] ( 50) NULL , [Col_4979301360564482909]  [nvarchar] ( 50) NULL , [Col_5655706767847882459]  [bigint] NULL , [Col_5348728527729747721]  [nvarchar] ( 50) NULL , [Col_5690861887726765855]  [bit] NULL , [Col_5292917656300919479]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm141Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'frm141Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD frm141Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4942403356356019292' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4942403356356019292 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5276893744932336389' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5276893744932336389 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4941026096929921893' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4941026096929921893 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5350339319748265747' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5350339319748265747 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4721231163390093653' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4721231163390093653 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4718280222361325084' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4718280222361325084 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5471496556158595679' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5471496556158595679 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4826009166159449630' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4826009166159449630 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5456563802719509205' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5456563802719509205 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5094466931308842551' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5094466931308842551 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5353767825611093820' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5353767825611093820 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5540986736218024796' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5540986736218024796 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5274263548684808881' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5274263548684808881 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5667981522562062812' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5667981522562062812 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5016914736049017937' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5016914736049017937 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5694591723591438281' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5694591723591438281 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4990715908260578320' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4990715908260578320 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5414923781258442294' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5414923781258442294 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5681758030317426284' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5681758030317426284 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5733345626838227956' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5733345626838227956 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5225204988739951888' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5225204988739951888 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4695208060128895821' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4695208060128895821 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4651851275301820523' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4651851275301820523 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5168525964139324294' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5168525964139324294 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4749361824538211076' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4749361824538211076 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5103909428158039692' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5103909428158039692 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5593690232940978000' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5593690232940978000 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5408605046420899582' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5408605046420899582 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5352495781335708805' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5352495781335708805 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4624082902614603591' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4624082902614603591 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5137043738733234862' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5137043738733234862 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5022571717356221893' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5022571717356221893 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5703054776624028126' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5703054776624028126 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5439769809059311180' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5439769809059311180 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5113014426144589614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5113014426144589614 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5247095645906577244' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5247095645906577244 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5250195443269286936' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5250195443269286936 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5218787150543148733' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5218787150543148733 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5240467189583789264' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5240467189583789264 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5750404642420030986' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5750404642420030986 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5107334998813963841' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5107334998813963841 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5669143527926527564' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5669143527926527564 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5411635696962178764' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5411635696962178764 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4818150681943631791' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4818150681943631791 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4822823333807585022' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4822823333807585022 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5016382732342712582' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5016382732342712582 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4968127004479232849' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4968127004479232849 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5055214696737490076' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5055214696737490076 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4646490773001678958' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4646490773001678958 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5004530541336532292' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5004530541336532292 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5430364406490735121' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5430364406490735121 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4849458309856855812' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4849458309856855812 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4820093091361140435' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4820093091361140435 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4703900633473864173' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4703900633473864173 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4815109074761336372' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4815109074761336372 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4713627795527000143' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4713627795527000143 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4892227114633198821' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4892227114633198821 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5008755893319791604' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5008755893319791604 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5677450966544964473' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5677450966544964473 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5120612283792436266' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5120612283792436266 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4833035455123790760' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4833035455123790760 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5566240721769484543' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5566240721769484543 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5301987341456284185' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5301987341456284185 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5133165130410791771' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5133165130410791771 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5651316636483490825' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5651316636483490825 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5050022801165709513' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5050022801165709513 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5730683233644939840' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5730683233644939840 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5642768753811687392' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5642768753811687392 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4642743964458069529' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4642743964458069529 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5207450031826955584' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5207450031826955584 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4856264153266251646' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4856264153266251646 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4868634925841731922' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4868634925841731922 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4714712306533876512' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4714712306533876512 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5277489616558113226' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5277489616558113226 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4938308613145155780' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4938308613145155780 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5531339490603476350' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5531339490603476350 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5626694006231985346' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5626694006231985346 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5251231392626029639' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5251231392626029639 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5426245109870041311' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5426245109870041311 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5176516729340273551' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5176516729340273551 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5490808733585292313' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5490808733585292313 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_4979301360564482909' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_4979301360564482909 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5655706767847882459' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5655706767847882459 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5348728527729747721' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5348728527729747721 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5690861887726765855' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5690861887726765855 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm141' AND COLUMN_NAME = 'Col_5292917656300919479' )  BEGIN ALTER TABLE [dbo].[Tbl_frm141] ADD Col_5292917656300919479 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm141]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm141
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm141] ( @PKFormId as bigint OUTPUT ,  @Col_4942403356356019292 AS nvarchar(50),  @Col_5276893744932336389 AS nvarchar(50),  @Col_4941026096929921893 AS nvarchar(50),  @Col_5350339319748265747 AS int,  @Col_4721231163390093653 AS bit,  @Col_4718280222361325084 AS bit,  @Col_5471496556158595679 AS bit,  @Col_4826009166159449630 AS int,  @Col_5456563802719509205 AS int,  @Col_5094466931308842551 AS int,  @Col_5353767825611093820 AS bit,  @Col_5540986736218024796 AS bit,  @Col_5274263548684808881 AS bit,  @Col_5667981522562062812 AS nvarchar(50),  @Col_5016914736049017937 AS nvarchar(50),  @Col_5694591723591438281 AS bit,  @Col_4990715908260578320 AS nvarchar(50),  @Col_5414923781258442294 AS nvarchar(50),  @Col_5681758030317426284 AS nvarchar(50),  @Col_5733345626838227956 AS nvarchar(50),  @Col_5225204988739951888 AS nvarchar(50),  @Col_4695208060128895821 AS int,  @Col_4651851275301820523 AS int,  @Col_5168525964139324294 AS int,  @Col_4749361824538211076 AS int,  @Col_5103909428158039692 AS int,  @Col_5593690232940978000 AS int,  @Col_5408605046420899582 AS bit,  @Col_5352495781335708805 AS bit,  @Col_4624082902614603591 AS bit,  @Col_5137043738733234862 AS bit,  @Col_5022571717356221893 AS bit,  @Col_5703054776624028126 AS bit,  @Col_5439769809059311180 AS nvarchar(50),  @Col_5113014426144589614 AS nvarchar(50),  @Col_5247095645906577244 AS bit,  @Col_5250195443269286936 AS nvarchar(50),  @Col_5218787150543148733 AS nvarchar(50),  @Col_5240467189583789264 AS nvarchar(50),  @Col_5750404642420030986 AS bit,  @Col_5107334998813963841 AS nvarchar(50),  @Col_5669143527926527564 AS bit,  @Col_5411635696962178764 AS bit,  @Col_4818150681943631791 AS nvarchar(50),  @Col_4822823333807585022 AS nvarchar(50),  @Col_5016382732342712582 AS nvarchar(50),  @Col_4968127004479232849 AS nvarchar(50),  @Col_5055214696737490076 AS nvarchar(50),  @Col_4646490773001678958 AS nvarchar(50),  @Col_5004530541336532292 AS nvarchar(50),  @Col_5430364406490735121 AS nvarchar(50),  @Col_4849458309856855812 AS nvarchar(50),  @Col_4820093091361140435 AS nvarchar(50),  @Col_4703900633473864173 AS nvarchar(50),  @Col_4815109074761336372 AS nvarchar(50),  @Col_4713627795527000143 AS nvarchar(50),  @Col_4892227114633198821 AS int,  @Col_5008755893319791604 AS int,  @Col_5677450966544964473 AS int,  @Col_5120612283792436266 AS bit,  @Col_4833035455123790760 AS nvarchar(50),  @Col_5566240721769484543 AS nvarchar(50),  @Col_5301987341456284185 AS nvarchar(50),  @Col_5133165130410791771 AS bit,  @Col_5651316636483490825 AS int,  @Col_5050022801165709513 AS nvarchar(50),  @Col_5730683233644939840 AS bit,  @Col_5642768753811687392 AS bit,  @Col_4642743964458069529 AS bit,  @Col_5207450031826955584 AS bit,  @Col_4856264153266251646 AS bit,  @Col_4868634925841731922 AS bit,  @Col_4714712306533876512 AS bit,  @Col_5277489616558113226 AS bigint,  @Col_4938308613145155780 AS bit,  @Col_5531339490603476350 AS bit,  @Col_5626694006231985346 AS bit,  @Col_5251231392626029639 AS bit,  @Col_5426245109870041311 AS nvarchar(50),  @Col_5176516729340273551 AS nvarchar(50),  @Col_5490808733585292313 AS nvarchar(50),  @Col_4979301360564482909 AS nvarchar(50),  @Col_5655706767847882459 AS bigint,  @Col_5348728527729747721 AS nvarchar(50),  @Col_5690861887726765855 AS bit,  @Col_5292917656300919479 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm141](Col_4942403356356019292,Col_5276893744932336389,Col_4941026096929921893,Col_5350339319748265747,Col_4721231163390093653,Col_4718280222361325084,Col_5471496556158595679,Col_4826009166159449630,Col_5456563802719509205,Col_5094466931308842551,Col_5353767825611093820,Col_5540986736218024796,Col_5274263548684808881,Col_5667981522562062812,Col_5016914736049017937,Col_5694591723591438281,Col_4990715908260578320,Col_5414923781258442294,Col_5681758030317426284,Col_5733345626838227956,Col_5225204988739951888,Col_4695208060128895821,Col_4651851275301820523,Col_5168525964139324294,Col_4749361824538211076,Col_5103909428158039692,Col_5593690232940978000,Col_5408605046420899582,Col_5352495781335708805,Col_4624082902614603591,Col_5137043738733234862,Col_5022571717356221893,Col_5703054776624028126,Col_5439769809059311180,Col_5113014426144589614,Col_5247095645906577244,Col_5250195443269286936,Col_5218787150543148733,Col_5240467189583789264,Col_5750404642420030986,Col_5107334998813963841,Col_5669143527926527564,Col_5411635696962178764,Col_4818150681943631791,Col_4822823333807585022,Col_5016382732342712582,Col_4968127004479232849,Col_5055214696737490076,Col_4646490773001678958,Col_5004530541336532292,Col_5430364406490735121,Col_4849458309856855812,Col_4820093091361140435,Col_4703900633473864173,Col_4815109074761336372,Col_4713627795527000143,Col_4892227114633198821,Col_5008755893319791604,Col_5677450966544964473,Col_5120612283792436266,Col_4833035455123790760,Col_5566240721769484543,Col_5301987341456284185,Col_5133165130410791771,Col_5651316636483490825,Col_5050022801165709513,Col_5730683233644939840,Col_5642768753811687392,Col_4642743964458069529,Col_5207450031826955584,Col_4856264153266251646,Col_4868634925841731922,Col_4714712306533876512,Col_5277489616558113226,Col_4938308613145155780,Col_5531339490603476350,Col_5626694006231985346,Col_5251231392626029639,Col_5426245109870041311,Col_5176516729340273551,Col_5490808733585292313,Col_4979301360564482909,Col_5655706767847882459,Col_5348728527729747721,Col_5690861887726765855,Col_5292917656300919479) VALUES ( @Col_4942403356356019292,@Col_5276893744932336389,@Col_4941026096929921893,@Col_5350339319748265747,@Col_4721231163390093653,@Col_4718280222361325084,@Col_5471496556158595679,@Col_4826009166159449630,@Col_5456563802719509205,@Col_5094466931308842551,@Col_5353767825611093820,@Col_5540986736218024796,@Col_5274263548684808881,@Col_5667981522562062812,@Col_5016914736049017937,@Col_5694591723591438281,@Col_4990715908260578320,@Col_5414923781258442294,@Col_5681758030317426284,@Col_5733345626838227956,@Col_5225204988739951888,@Col_4695208060128895821,@Col_4651851275301820523,@Col_5168525964139324294,@Col_4749361824538211076,@Col_5103909428158039692,@Col_5593690232940978000,@Col_5408605046420899582,@Col_5352495781335708805,@Col_4624082902614603591,@Col_5137043738733234862,@Col_5022571717356221893,@Col_5703054776624028126,@Col_5439769809059311180,@Col_5113014426144589614,@Col_5247095645906577244,@Col_5250195443269286936,@Col_5218787150543148733,@Col_5240467189583789264,@Col_5750404642420030986,@Col_5107334998813963841,@Col_5669143527926527564,@Col_5411635696962178764,@Col_4818150681943631791,@Col_4822823333807585022,@Col_5016382732342712582,@Col_4968127004479232849,@Col_5055214696737490076,@Col_4646490773001678958,@Col_5004530541336532292,@Col_5430364406490735121,@Col_4849458309856855812,@Col_4820093091361140435,@Col_4703900633473864173,@Col_4815109074761336372,@Col_4713627795527000143,@Col_4892227114633198821,@Col_5008755893319791604,@Col_5677450966544964473,@Col_5120612283792436266,@Col_4833035455123790760,@Col_5566240721769484543,@Col_5301987341456284185,@Col_5133165130410791771,@Col_5651316636483490825,@Col_5050022801165709513,@Col_5730683233644939840,@Col_5642768753811687392,@Col_4642743964458069529,@Col_5207450031826955584,@Col_4856264153266251646,@Col_4868634925841731922,@Col_4714712306533876512,@Col_5277489616558113226,@Col_4938308613145155780,@Col_5531339490603476350,@Col_5626694006231985346,@Col_5251231392626029639,@Col_5426245109870041311,@Col_5176516729340273551,@Col_5490808733585292313,@Col_4979301360564482909,@Col_5655706767847882459,@Col_5348728527729747721,@Col_5690861887726765855,@Col_5292917656300919479 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm141]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm141
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm141] ( @PKFormId as bigint OUTPUT ,  @Col_4942403356356019292 AS nvarchar(50),  @Col_5276893744932336389 AS nvarchar(50),  @Col_4941026096929921893 AS nvarchar(50),  @Col_5350339319748265747 AS int,  @Col_4721231163390093653 AS bit,  @Col_4718280222361325084 AS bit,  @Col_5471496556158595679 AS bit,  @Col_4826009166159449630 AS int,  @Col_5456563802719509205 AS int,  @Col_5094466931308842551 AS int,  @Col_5353767825611093820 AS bit,  @Col_5540986736218024796 AS bit,  @Col_5274263548684808881 AS bit,  @Col_5667981522562062812 AS nvarchar(50),  @Col_5016914736049017937 AS nvarchar(50),  @Col_5694591723591438281 AS bit,  @Col_4990715908260578320 AS nvarchar(50),  @Col_5414923781258442294 AS nvarchar(50),  @Col_5681758030317426284 AS nvarchar(50),  @Col_5733345626838227956 AS nvarchar(50),  @Col_5225204988739951888 AS nvarchar(50),  @Col_4695208060128895821 AS int,  @Col_4651851275301820523 AS int,  @Col_5168525964139324294 AS int,  @Col_4749361824538211076 AS int,  @Col_5103909428158039692 AS int,  @Col_5593690232940978000 AS int,  @Col_5408605046420899582 AS bit,  @Col_5352495781335708805 AS bit,  @Col_4624082902614603591 AS bit,  @Col_5137043738733234862 AS bit,  @Col_5022571717356221893 AS bit,  @Col_5703054776624028126 AS bit,  @Col_5439769809059311180 AS nvarchar(50),  @Col_5113014426144589614 AS nvarchar(50),  @Col_5247095645906577244 AS bit,  @Col_5250195443269286936 AS nvarchar(50),  @Col_5218787150543148733 AS nvarchar(50),  @Col_5240467189583789264 AS nvarchar(50),  @Col_5750404642420030986 AS bit,  @Col_5107334998813963841 AS nvarchar(50),  @Col_5669143527926527564 AS bit,  @Col_5411635696962178764 AS bit,  @Col_4818150681943631791 AS nvarchar(50),  @Col_4822823333807585022 AS nvarchar(50),  @Col_5016382732342712582 AS nvarchar(50),  @Col_4968127004479232849 AS nvarchar(50),  @Col_5055214696737490076 AS nvarchar(50),  @Col_4646490773001678958 AS nvarchar(50),  @Col_5004530541336532292 AS nvarchar(50),  @Col_5430364406490735121 AS nvarchar(50),  @Col_4849458309856855812 AS nvarchar(50),  @Col_4820093091361140435 AS nvarchar(50),  @Col_4703900633473864173 AS nvarchar(50),  @Col_4815109074761336372 AS nvarchar(50),  @Col_4713627795527000143 AS nvarchar(50),  @Col_4892227114633198821 AS int,  @Col_5008755893319791604 AS int,  @Col_5677450966544964473 AS int,  @Col_5120612283792436266 AS bit,  @Col_4833035455123790760 AS nvarchar(50),  @Col_5566240721769484543 AS nvarchar(50),  @Col_5301987341456284185 AS nvarchar(50),  @Col_5133165130410791771 AS bit,  @Col_5651316636483490825 AS int,  @Col_5050022801165709513 AS nvarchar(50),  @Col_5730683233644939840 AS bit,  @Col_5642768753811687392 AS bit,  @Col_4642743964458069529 AS bit,  @Col_5207450031826955584 AS bit,  @Col_4856264153266251646 AS bit,  @Col_4868634925841731922 AS bit,  @Col_4714712306533876512 AS bit,  @Col_5277489616558113226 AS bigint,  @Col_4938308613145155780 AS bit,  @Col_5531339490603476350 AS bit,  @Col_5626694006231985346 AS bit,  @Col_5251231392626029639 AS bit,  @Col_5426245109870041311 AS nvarchar(50),  @Col_5176516729340273551 AS nvarchar(50),  @Col_5490808733585292313 AS nvarchar(50),  @Col_4979301360564482909 AS nvarchar(50),  @Col_5655706767847882459 AS bigint,  @Col_5348728527729747721 AS nvarchar(50),  @Col_5690861887726765855 AS bit,  @Col_5292917656300919479 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm141] SET Col_4942403356356019292 =  @Col_4942403356356019292, Col_5276893744932336389 =  @Col_5276893744932336389, Col_4941026096929921893 =  @Col_4941026096929921893, Col_5350339319748265747 =  @Col_5350339319748265747, Col_4721231163390093653 =  @Col_4721231163390093653, Col_4718280222361325084 =  @Col_4718280222361325084, Col_5471496556158595679 =  @Col_5471496556158595679, Col_4826009166159449630 =  @Col_4826009166159449630, Col_5456563802719509205 =  @Col_5456563802719509205, Col_5094466931308842551 =  @Col_5094466931308842551, Col_5353767825611093820 =  @Col_5353767825611093820, Col_5540986736218024796 =  @Col_5540986736218024796, Col_5274263548684808881 =  @Col_5274263548684808881, Col_5667981522562062812 =  @Col_5667981522562062812, Col_5016914736049017937 =  @Col_5016914736049017937, Col_5694591723591438281 =  @Col_5694591723591438281, Col_4990715908260578320 =  @Col_4990715908260578320, Col_5414923781258442294 =  @Col_5414923781258442294, Col_5681758030317426284 =  @Col_5681758030317426284, Col_5733345626838227956 =  @Col_5733345626838227956, Col_5225204988739951888 =  @Col_5225204988739951888, Col_4695208060128895821 =  @Col_4695208060128895821, Col_4651851275301820523 =  @Col_4651851275301820523, Col_5168525964139324294 =  @Col_5168525964139324294, Col_4749361824538211076 =  @Col_4749361824538211076, Col_5103909428158039692 =  @Col_5103909428158039692, Col_5593690232940978000 =  @Col_5593690232940978000, Col_5408605046420899582 =  @Col_5408605046420899582, Col_5352495781335708805 =  @Col_5352495781335708805, Col_4624082902614603591 =  @Col_4624082902614603591, Col_5137043738733234862 =  @Col_5137043738733234862, Col_5022571717356221893 =  @Col_5022571717356221893, Col_5703054776624028126 =  @Col_5703054776624028126, Col_5439769809059311180 =  @Col_5439769809059311180, Col_5113014426144589614 =  @Col_5113014426144589614, Col_5247095645906577244 =  @Col_5247095645906577244, Col_5250195443269286936 =  @Col_5250195443269286936, Col_5218787150543148733 =  @Col_5218787150543148733, Col_5240467189583789264 =  @Col_5240467189583789264, Col_5750404642420030986 =  @Col_5750404642420030986, Col_5107334998813963841 =  @Col_5107334998813963841, Col_5669143527926527564 =  @Col_5669143527926527564, Col_5411635696962178764 =  @Col_5411635696962178764, Col_4818150681943631791 =  @Col_4818150681943631791, Col_4822823333807585022 =  @Col_4822823333807585022, Col_5016382732342712582 =  @Col_5016382732342712582, Col_4968127004479232849 =  @Col_4968127004479232849, Col_5055214696737490076 =  @Col_5055214696737490076, Col_4646490773001678958 =  @Col_4646490773001678958, Col_5004530541336532292 =  @Col_5004530541336532292, Col_5430364406490735121 =  @Col_5430364406490735121, Col_4849458309856855812 =  @Col_4849458309856855812, Col_4820093091361140435 =  @Col_4820093091361140435, Col_4703900633473864173 =  @Col_4703900633473864173, Col_4815109074761336372 =  @Col_4815109074761336372, Col_4713627795527000143 =  @Col_4713627795527000143, Col_4892227114633198821 =  @Col_4892227114633198821, Col_5008755893319791604 =  @Col_5008755893319791604, Col_5677450966544964473 =  @Col_5677450966544964473, Col_5120612283792436266 =  @Col_5120612283792436266, Col_4833035455123790760 =  @Col_4833035455123790760, Col_5566240721769484543 =  @Col_5566240721769484543, Col_5301987341456284185 =  @Col_5301987341456284185, Col_5133165130410791771 =  @Col_5133165130410791771, Col_5651316636483490825 =  @Col_5651316636483490825, Col_5050022801165709513 =  @Col_5050022801165709513, Col_5730683233644939840 =  @Col_5730683233644939840, Col_5642768753811687392 =  @Col_5642768753811687392, Col_4642743964458069529 =  @Col_4642743964458069529, Col_5207450031826955584 =  @Col_5207450031826955584, Col_4856264153266251646 =  @Col_4856264153266251646, Col_4868634925841731922 =  @Col_4868634925841731922, Col_4714712306533876512 =  @Col_4714712306533876512, Col_5277489616558113226 =  @Col_5277489616558113226, Col_4938308613145155780 =  @Col_4938308613145155780, Col_5531339490603476350 =  @Col_5531339490603476350, Col_5626694006231985346 =  @Col_5626694006231985346, Col_5251231392626029639 =  @Col_5251231392626029639, Col_5426245109870041311 =  @Col_5426245109870041311, Col_5176516729340273551 =  @Col_5176516729340273551, Col_5490808733585292313 =  @Col_5490808733585292313, Col_4979301360564482909 =  @Col_4979301360564482909, Col_5655706767847882459 =  @Col_5655706767847882459, Col_5348728527729747721 =  @Col_5348728527729747721, Col_5690861887726765855 =  @Col_5690861887726765855, Col_5292917656300919479 =  @Col_5292917656300919479 WHERE [frm141Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 167) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (167, N'مقدار فیلد، فرم پایه میز خدمت',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="486" Height="156.51666667" Background="White">
  <Canvas Width="470" Height="134">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5208074764466257689</ID>
        <Name>FieldSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="452" Height="118" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="317.31491901" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="12.685080990000017" Canvas.Top="3.0000000000000071" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldValueTitle" />
        <cm:tzLabel Name="Lable22" Content=": مقدار فیلد" Width="73" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="331" Canvas.Top="10" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="404.99999999999989" Canvas.Top="8.5166666666666657" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="48" Height="20" ControlID="5311532526222471050" Canvas.Left="8" Canvas.Top="75.51666667" cm:Persistable="True" cm:PersistFieldName="FieldValueStatus" />
        <cm:TZCheckBox Name="CheckBox10" Content="TZCheckBox" Width="72.999999999999886" Height="20" ControlID="5498060376822854236" Canvas.Left="348.55" Canvas.Top="42.516666666666652" cm:FCVCol="" cm:FECol="" cm:FMCol="5530358577123631354#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZLookUp Name="LookUp10" Width="24" Height="27" ControlID="5122433899833170712" Canvas.Left="234" Canvas.Top="61.516666666666652" cm:Event="dsGetFieldManager,dsGetFieldManagerID">
          <cm:TZLookUp.LoadFormValue>
            <cm:TZLookupLoadFromBrowse DataGridId="5361372661660910646" DisplayMemberColumn="GroupName" FormID="61368" ValueMemberColumn="GroupId" />
          </cm:TZLookUp.LoadFormValue>
        </cm:TZLookUp>
        <cm:tzLabel Name="Lable11" Content="انتخاب مدیر رشته" Width="120" Height="23" ControlID="4817328853239371902" FontFamily="Tahoma" Canvas.Left="259" Canvas.Top="65.516666666666652" />
        <cm:tzTextBox Name="txtGetFieldManagerID" Width="45" Height="21" ControlID="5029715466567570451" Canvas.Left="66" Canvas.Top="37.51666667" cm:DataBinding="dsGetFieldManagerID" cm:DataBindingField="Column1" cm:DataType="Int" cm:Event="dsGetFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldManager" />
        <cm:tzDataSource Name="dsGetFieldManager" Content="dsGetFieldManager" Width="50" Height="25" ControlID="5014278474740030518" Canvas.Left="120" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getFieldManagerData_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetFieldManagerID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtGetFieldManagerID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:tzDataSource Name="dschkFieldManager" Content="dschkFieldManager" Width="42" Height="25" ControlID="5578118376669451994" Canvas.Left="14" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_FieldSubjectID_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFieldSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtFieldSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkFieldManager" Content="TZCheckBox" Width="25" Height="20" ControlID="5734247887345621330" Canvas.Left="66" Canvas.Top="13" cm:DataBinding="dschkFieldManager" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5122433899833170712#4817328853239371902#5128007556070461169#" />
        <cm:tzTextBox Name="txtFieldManagerName" Width="133" Height="21" ControlID="5128007556070461169" Canvas.Left="92" Canvas.Top="67.51666667" cm:DataBinding="dsGetFieldManager" cm:DataBindingField="FieldManager" cm:IsEnableItem="False" />
        <cm:tzDataSource Name="dsGetFieldManagerID" Content="dsGetFieldManagerID" Width="39" Height="25" ControlID="4622854982852984547" Canvas.Left="17" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp10}" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:tzDataSource Name="dsFieldSubjectID" Content="dsFieldSubjectID" Width="114" Height="25" ControlID="5105092485177545999" Canvas.Left="23" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {$FieldSubjectID} as FieldSubjectID" />
    <cm:tzTextBox Name="txtFieldSubjectID" Width="41.900000000000034" Height="21" ControlID="4936603042106904042" Canvas.Left="138" Canvas.Top="4" cm:DataBinding="dsFieldSubjectID" cm:DataBindingField="FieldSubjectID" cm:DataType="Int" cm:DefaultValue="@@FieldSubjectID" cm:Event="dschkFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldSubjectID" />
  </Canvas>
</cm:TZBaseControl>',1,'1404/02/14 11:23:11', 'e4edc534-f746-436b-8896-e77cac9a64a7', 1, N'', N'{"formID": "167" ,"components": [{"value": "","key": "5498060376822854236","label": "CheckBox10","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5734247887345621330","label": "chkFieldManager","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5311532526222471050","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5578118376669451994" , "dataSourceName":"dschkFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_FieldSubjectID_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5105092485177545999" , "dataSourceName":"dsFieldSubjectID" , "controlType": "datasource",  "selectQuery" :"select {$FieldSubjectID} as FieldSubjectID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5014278474740030518" , "dataSourceName":"dsGetFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_getFieldManagerData_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4622854982852984547" , "dataSourceName":"dsGetFieldManagerID" , "controlType": "datasource",  "selectQuery" :"select {@LookUp10}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5128007556070461169","label": "txtFieldManagerName","controlType": "textbox", "type": "" , "DataBindingField" : "FieldManager"},{"value": "@@FieldSubjectID","key": "4936603042106904042","label": "txtFieldSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : "FieldSubjectID"},{"value": "","key": "5029715466567570451","label": "txtGetFieldManagerID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'مقدار فیلد، فرم پایه میز خدمت',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="486" Height="156.51666667" Background="White">
  <Canvas Width="470" Height="134">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5208074764466257689</ID>
        <Name>FieldSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="452" Height="118" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="317.31491901" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="12.685080990000017" Canvas.Top="3.0000000000000071" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldValueTitle" />
        <cm:tzLabel Name="Lable22" Content=": مقدار فیلد" Width="73" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="331" Canvas.Top="10" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="404.99999999999989" Canvas.Top="8.5166666666666657" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="48" Height="20" ControlID="5311532526222471050" Canvas.Left="8" Canvas.Top="75.51666667" cm:Persistable="True" cm:PersistFieldName="FieldValueStatus" />
        <cm:TZCheckBox Name="CheckBox10" Content="TZCheckBox" Width="72.999999999999886" Height="20" ControlID="5498060376822854236" Canvas.Left="348.55" Canvas.Top="42.516666666666652" cm:FCVCol="" cm:FECol="" cm:FMCol="5530358577123631354#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZLookUp Name="LookUp10" Width="24" Height="27" ControlID="5122433899833170712" Canvas.Left="234" Canvas.Top="61.516666666666652" cm:Event="dsGetFieldManager,dsGetFieldManagerID">
          <cm:TZLookUp.LoadFormValue>
            <cm:TZLookupLoadFromBrowse DataGridId="5361372661660910646" DisplayMemberColumn="GroupName" FormID="61368" ValueMemberColumn="GroupId" />
          </cm:TZLookUp.LoadFormValue>
        </cm:TZLookUp>
        <cm:tzLabel Name="Lable11" Content="انتخاب مدیر رشته" Width="120" Height="23" ControlID="4817328853239371902" FontFamily="Tahoma" Canvas.Left="259" Canvas.Top="65.516666666666652" />
        <cm:tzTextBox Name="txtGetFieldManagerID" Width="45" Height="21" ControlID="5029715466567570451" Canvas.Left="66" Canvas.Top="37.51666667" cm:DataBinding="dsGetFieldManagerID" cm:DataBindingField="Column1" cm:DataType="Int" cm:Event="dsGetFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldManager" />
        <cm:tzDataSource Name="dsGetFieldManager" Content="dsGetFieldManager" Width="50" Height="25" ControlID="5014278474740030518" Canvas.Left="120" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getFieldManagerData_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetFieldManagerID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtGetFieldManagerID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:tzDataSource Name="dschkFieldManager" Content="dschkFieldManager" Width="42" Height="25" ControlID="5578118376669451994" Canvas.Left="14" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_FieldSubjectID_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFieldSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtFieldSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkFieldManager" Content="TZCheckBox" Width="25" Height="20" ControlID="5734247887345621330" Canvas.Left="66" Canvas.Top="13" cm:DataBinding="dschkFieldManager" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5122433899833170712#4817328853239371902#5128007556070461169#" />
        <cm:tzTextBox Name="txtFieldManagerName" Width="133" Height="21" ControlID="5128007556070461169" Canvas.Left="92" Canvas.Top="67.51666667" cm:DataBinding="dsGetFieldManager" cm:DataBindingField="FieldManager" cm:IsEnableItem="False" />
        <cm:tzDataSource Name="dsGetFieldManagerID" Content="dsGetFieldManagerID" Width="39" Height="25" ControlID="4622854982852984547" Canvas.Left="17" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp10}" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:tzDataSource Name="dsFieldSubjectID" Content="dsFieldSubjectID" Width="114" Height="25" ControlID="5105092485177545999" Canvas.Left="23" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {$FieldSubjectID} as FieldSubjectID" />
    <cm:tzTextBox Name="txtFieldSubjectID" Width="41.900000000000034" Height="21" ControlID="4936603042106904042" Canvas.Left="138" Canvas.Top="4" cm:DataBinding="dsFieldSubjectID" cm:DataBindingField="FieldSubjectID" cm:DataType="Int" cm:DefaultValue="@@FieldSubjectID" cm:Event="dschkFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldSubjectID" />
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1404/02/14 11:23:11', GUID = 'e4edc534-f746-436b-8896-e77cac9a64a7', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "167" ,"components": [{"value": "","key": "5498060376822854236","label": "CheckBox10","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5734247887345621330","label": "chkFieldManager","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5311532526222471050","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5578118376669451994" , "dataSourceName":"dschkFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_FieldSubjectID_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5105092485177545999" , "dataSourceName":"dsFieldSubjectID" , "controlType": "datasource",  "selectQuery" :"select {$FieldSubjectID} as FieldSubjectID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5014278474740030518" , "dataSourceName":"dsGetFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_getFieldManagerData_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4622854982852984547" , "dataSourceName":"dsGetFieldManagerID" , "controlType": "datasource",  "selectQuery" :"select {@LookUp10}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5128007556070461169","label": "txtFieldManagerName","controlType": "textbox", "type": "" , "DataBindingField" : "FieldManager"},{"value": "@@FieldSubjectID","key": "4936603042106904042","label": "txtFieldSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : "FieldSubjectID"},{"value": "","key": "5029715466567570451","label": "txtGetFieldManagerID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 167
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm167') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm167] ( [frm167Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5530358577123631354]  [nvarchar] ( 50) NULL , [Col_4936603042106904042]  [int] NULL , [Col_5311532526222471050]  [bit] NULL , [Col_5498060376822854236]  [bit] NULL , [Col_5029715466567570451]  [int] NULL , [Col_5122433899833170712]  [nvarchar] ( 50) NULL , [Col_5734247887345621330]  [bit] NULL , [Col_5128007556070461169]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm167Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'frm167Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD frm167Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5530358577123631354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5530358577123631354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_4936603042106904042' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_4936603042106904042 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5311532526222471050' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5311532526222471050 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5498060376822854236' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5498060376822854236 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5029715466567570451' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5029715466567570451 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5122433899833170712' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5122433899833170712 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5734247887345621330' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5734247887345621330 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5128007556070461169' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5128007556070461169 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm167]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm167
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm167] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_4936603042106904042 AS int,  @Col_5311532526222471050 AS bit,  @Col_5498060376822854236 AS bit,  @Col_5029715466567570451 AS int,  @Col_5122433899833170712 AS nvarchar(50),  @Col_5734247887345621330 AS bit,  @Col_5128007556070461169 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm167](Col_5530358577123631354,Col_4936603042106904042,Col_5311532526222471050,Col_5498060376822854236,Col_5029715466567570451,Col_5122433899833170712,Col_5734247887345621330,Col_5128007556070461169) VALUES ( @Col_5530358577123631354,@Col_4936603042106904042,@Col_5311532526222471050,@Col_5498060376822854236,@Col_5029715466567570451,@Col_5122433899833170712,@Col_5734247887345621330,@Col_5128007556070461169 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm167]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm167
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm167] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_4936603042106904042 AS int,  @Col_5311532526222471050 AS bit,  @Col_5498060376822854236 AS bit,  @Col_5029715466567570451 AS int,  @Col_5122433899833170712 AS nvarchar(50),  @Col_5734247887345621330 AS bit,  @Col_5128007556070461169 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm167] SET Col_5530358577123631354 =  @Col_5530358577123631354, Col_4936603042106904042 =  @Col_4936603042106904042, Col_5311532526222471050 =  @Col_5311532526222471050, Col_5498060376822854236 =  @Col_5498060376822854236, Col_5029715466567570451 =  @Col_5029715466567570451, Col_5122433899833170712 =  @Col_5122433899833170712, Col_5734247887345621330 =  @Col_5734247887345621330, Col_5128007556070461169 =  @Col_5128007556070461169 WHERE [frm167Id] = @PKFormId 
 END 
GO
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
                  <cm:TZCheckBox Name="chkReferenceActing" Content="ارجاع جهت" ControlID="5150378410502021558" FontFamily="Tahoma" Canvas.Left="606.2016931600001" Canvas.Top="50.351659955515288" cm:Event="dsAnswerActing" cm:FCVCol="4936620095668202831#5538917384814042880#5491265726550782421#5506921329922687913#" cm:FECol="4881570594048707352#" cm:FMCol="4881570594048707352#" cm:FVCol="" cm:TabIndex="28" cm:TCVCol="" cm:TECol="4936620095668202831#5538917384814042880#5506921329922687913#" cm:TMCol="4936620095668202831#4888789270628417469#5491265726550782421#5506921329922687913#" cm:TVCol="" />
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
                  <cm:tzDataSource Name="dsSelectrbnAccActions" Content="dsSelectrbnAccActions" Width="110" Height="25" ControlID="5200482427605653075" Canvas.Left="367.84265146999928" Canvas.Top="7.0000000000002274" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnAccActions} AS rbnAccActions" />
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
</cm:TZBaseControl>',1,'1404/02/21 10:46:38', '727b7174-a4e6-41ce-95e8-f91c3ece3ad6', 0, N'', N'{"formID": "243" ,"components": [{"value": "","key": "4975186370815220673","label": "CheckBox167","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "rbnAccActions"},{"value": "","key": "5497800083366103290","label": "CheckBox175","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5716290874951705075","label": "CheckBox178","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5286295664072768338","label": "CheckBox186","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5447522547560323991","label": "CheckBox203","controlType": "checkbox","caption": "chbVisibleItem" ,"DataBindingField" : "flag"},{"value": "","key": "5343950136022904724","label": "CheckBox37","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "SelectInfo"},{"value": "","key": "4872620607267697235","label": "chkAkhzTaidie","controlType": "checkbox","caption": "chkAkhzTaidie" ,"DataBindingField" : "Res"},{"value": "","key": "4655348426068110759","label": "chkAnswerActing","controlType": "checkbox","caption": "chkAnswerActing" ,"DataBindingField" : "Res"},{"value": "","key": "5322494452124026796","label": "chkCheckExistsRefrence","controlType": "checkbox","caption": "chkCheckExistsRefrence" ,"DataBindingField" : "Res"},{"value": "","key": "4875558306346267617","label": "chkCheckRefrenceUser","controlType": "checkbox","caption": "chkCheckRefrenceUser" ,"DataBindingField" : "Res"},{"value": "","key": "4795065758229322170","label": "chkCheckRefrenceUserSec","controlType": "checkbox","caption": "chkCheckRefrenceUserSec" ,"DataBindingField" : "Res"},{"value": "","key": "5036804729879951345","label": "chkCheckWorkflowStatus","controlType": "checkbox","caption": "chkCheckWorkflowStatus" ,"DataBindingField" : "Res"},{"value": "","key": "4688451764383907719","label": "chkCompare","controlType": "checkbox","caption": "chkCompare" ,"DataBindingField" : "res"},{"value": "","key": "5132155074427207127","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Column1"},{"value": "","key": "5192361472626038383","label": "chkEnableDate","controlType": "checkbox","caption": "chkEnableDate" ,"DataBindingField" : "Res"},{"value": "","key": "5314528432430841199","label": "chkIsManagerAvailable","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "FieldManagerNotAvailable"},{"value": "","key": "5220620902125066610","label": "chkMandatoryNotSelectInfo","controlType": "checkbox","caption": "chkMandatoryNotSelectInfo" ,"DataBindingField" : "MandatoryNotSelectInfo"},{"value": "","key": "5115924373474858497","label": "chkMandatoryNotSelectInfoDate","controlType": "checkbox","caption": "chkMandatoryNotSelectInfoDate" ,"DataBindingField" : "MandatoryNotSelectInfoDate"},{"value": "","key": "5666353536888725103","label": "chkMandatorySelectInfo","controlType": "checkbox","caption": "chkMandatorySelectInfo" ,"DataBindingField" : "MandatorySelectInfo"},{"value": "","key": "5659335003033723732","label": "chkMultipleValues","controlType": "checkbox","caption": "chkMultipleValues" ,"DataBindingField" : "rbnMultipleValues"},{"value": "","key": "5168659056268343420","label": "chkMultipleValuesMandatory","controlType": "checkbox","caption": "chkMultipleValuesMandatory" ,"DataBindingField" : "MandatoryrbnMultipleValues"},{"value": "","key": "5443758597500893918","label": "chkNeedCertificate","controlType": "checkbox","caption": "chkNeedCertificate" ,"DataBindingField" : "IsNeedCertificate"},{"value": "","key": "5150378410502021558","label": "chkReferenceActing","controlType": "checkbox","caption": "ارجاع جهت" ,"DataBindingField" : ""},{"value": "","key": "4844487118598404545","label": "chkRequestSubject","controlType": "checkbox","caption": "chkRequestSubject" ,"DataBindingField" : "Res"},{"value": "","key": "5516976854451683700","label": "chkUserCanInsert","controlType": "checkbox","caption": "chkUserCanInsert" ,"DataBindingField" : "Res"},{"value": "","key": "5464357723432469235","label": "chkUserIsBranch","controlType": "checkbox","caption": "chkUserIsBranch" ,"DataBindingField" : "UserIsBranch"},{"value": "","key": "4697873506575570740","label": "chkValidate","controlType": "checkbox","caption": "chkValidate" ,"DataBindingField" : "Res"},{"value": "","key": "5094607077792705164","label": "chkValidatePeymankarDate","controlType": "checkbox","caption": "chkValidatePeymankarDate." ,"DataBindingField" : "Column1"},{"key": "5554970866147992698","label": "cmbFieldValueID","value": "", "controlType": "dropdown","options":""},{"key": "4936620095668202831","label": "cmbReferenceActing","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5259992753776356314","label": "cmbScoreActions","value": "", "controlType": "dropdown","options":""},{"key": "4881570594048707352","label": "cmbStatusActing","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key":"5367634685351392367" , "dataSourceName":"DataSource187" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5477569500181547439" , "dataSourceName":"dsAkhzTaidie" , "controlType": "datasource",  "selectQuery" :"IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689550366720017222" , "dataSourceName":"dsAnswerActing" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckAnswerActing_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4702876376026890291" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5046816167316824995" , "dataSourceName":"dsCheckPeymankarDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckPeymankarDate" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4983588032057303957" , "dataSourceName":"dsCheckRefrenceUser" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4646773501795498378" , "dataSourceName":"dsCheckRefrenceUserSec" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4686304685539765447" , "dataSourceName":"dsCheckRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidate_RequestSubject_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4772282357938744593" , "dataSourceName":"dsCheckValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5122826346641792319" , "dataSourceName":"dsCheckWorkflowStatus" , "controlType": "datasource",  "selectQuery" :"SP_Cu_CheckWorkflowStatus_Frm31240" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5632608860963331703" , "dataSourceName":"dschkIsManagerAvailable" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_IsFieldManagerAvailable" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4796377435123176147" , "dataSourceName":"dsCompare" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5462419856774520597" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_delete_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5662589489734807052" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5466927095367674240" , "dataSourceName":"dsEnableDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_EnableDate_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5559974938702805655" , "dataSourceName":"dsEnableLabel" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5273195586687856254" , "dataSourceName":"dsEnableLabel2" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4793853652190513490" , "dataSourceName":"dsFollowCode" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFollowCode_NewUserDefinition" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4655762560683332289" , "dataSourceName":"dsGetUserDataFirst" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5627434039910385051" , "dataSourceName":"dsGetUserDataForth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Fourth" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4937725416156234603" , "dataSourceName":"dsGetUserDataSecond" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Third" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5729304498189769267" , "dataSourceName":"dsGetUserDataThird" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5369238171599239062" , "dataSourceName":"dsGetValue" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5170551075891586804" , "dataSourceName":"dsGUIDD" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4877631570857336077" , "dataSourceName":"dsInsertData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5085105881132199709" , "dataSourceName":"dsLink" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5110670696080708548" , "dataSourceName":"dsLoad" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760404647498399665" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4974277814964022057" , "dataSourceName":"dsLoadService" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4881392250038900796" , "dataSourceName":"dsMakeEmptry" , "controlType": "datasource",  "selectQuery" :"IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5540375087530757889" , "dataSourceName":"dsMandatoryData" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5114061319767955735" , "dataSourceName":"dsReadActingRef" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5031005639295037783" , "dataSourceName":"dsReadAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5616592185866978428" , "dataSourceName":"dsReadCountAttach" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4823486510891932452" , "dataSourceName":"dsReadData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadData_ServingTableField" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5281261300836226632" , "dataSourceName":"dsReadHistory" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5055561591823269414" , "dataSourceName":"dsScore" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5459657173581711636" , "dataSourceName":"dsSelectchklMultipleValues" , "controlType": "datasource",  "selectQuery" :"SELECT {@chklMultipleValues} AS chklMultipleValues" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233624649659262730" , "dataSourceName":"dsSelectCurrentDate" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5036453969450944063" , "dataSourceName":"dsSelectItems" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvItems} AS ItemID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5200482427605653075" , "dataSourceName":"dsSelectrbnAccActions" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnAccActions} AS rbnAccActions" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233856275930939671" , "dataSourceName":"dsSelectUserRefrence" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5401325953310335326" , "dataSourceName":"dsSelectUserRefrenceNew" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617427278350659249" , "dataSourceName":"dsSelectUserRefrenceSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5667847526345547012" , "dataSourceName":"dsSelectWFID" , "controlType": "datasource",  "selectQuery" :"SELECT (@WorkflowInstanceID) AS WFID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4730083060785538985" , "dataSourceName":"dsUpdateData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5200068161426511415" , "dataSourceName":"dsUserCanInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5017690624055140686" , "dataSourceName":"dsVisibleItem" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_VisibleItemType {@txtItemID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5568970676742359854","label": "TextBox189","controlType": "textbox", "type": "" , "DataBindingField" : "FieldTitle"},{"value": "","key": "5581141407921292751","label": "TextBox199","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5162934944876769201","label": "TextBox213","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4859239441948670019","label": "TextBox285","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5491265726550782421","label": "TextBox81","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5626482120269590337","label": "txtActivityIDFirst","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4825489060297649621","label": "txtActivityIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4843974103575279809","label": "txtActivityIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5347612118525905609","label": "txtActivityIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5761211021147188750","label": "txtAddress","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5626556152912671128","label": "txtDataRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4669232414997773258","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4888789270628417469","label": "txtDescActing","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4999118027321972736","label": "txtDescActions","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704711095539514666","label": "txtDescReference","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5181720467505861532","label": "txtDescSeconder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5263373270007817469","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "5329520347459779938","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4995533338641167379","label": "txtGUIDD","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5591840014643513848","label": "txtInsertRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5243519420555067860","label": "txtItemID","controlType": "textbox", "type": "" , "DataBindingField" : "ItemID"},{"value": "","key": "5485778130039395725","label": "txtLastStatusActing","controlType": "textbox", "type": "" , "DataBindingField" : "StatusActing"},{"value": "","key": "4826610513644201043","label": "txtMessageNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5760154045432193711","label": "txtMultipleValues","controlType": "textbox", "type": "" , "DataBindingField" : "chklMultipleValues"},{"value": "","key": "4850327712077035454","label": "txtOrganizationPost","controlType": "textbox", "type": "" , "DataBindingField" : "Organizationpost"},{"value": "","key": "4797625139975453820","label": "txtOrganizationUnit","controlType": "textbox", "type": "" , "DataBindingField" : "OrganizationUnit"},{"value": "","key": "5474736857145248079","label": "txtOUID","controlType": "textbox", "type": "" , "DataBindingField" : "UnitID"},{"value": "","key": "5281861071186097962","label": "txtPhoneNumber","controlType": "textbox", "type": "" , "DataBindingField" : "telephonenumber"},{"value": "","key": "5506921329922687913","label": "txtReferenceUserActing","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5265233019818142125","label": "txtReferenceUserSeconder","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5206491520355753398","label": "txtRequestDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5035903570341991895","label": "txtServiceLocation","controlType": "textbox", "type": "" , "DataBindingField" : "Servicelocation"},{"value": "","key": "4938308427061897607","label": "txtServiceResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "5758762721732505115","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4882272451934286700","label": "txtUserIDfirst","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4818312992012446291","label": "txtUserIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5639913882214238562","label": "txtUserIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4786962185969475179","label": "txtUserIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5183947771732858935","label": "txtUserName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5662217081009761575","label": "txtValue","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4883524612292746126","data": [{"key": "5209939103483890987","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5329520347459779938","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5035903570341991895","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4838564445226209905","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4647773901884335145","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5266482798981468614","color": "","invisible": false,"mandatory": true,"disable": false }]},{"layoutID": "5247524876530023130","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5626692213297706894","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5315581096260719821","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5057671704762368988","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4636532424394902227","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5035904599795377816","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5580275910207162559","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218958864821998426","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5093058697085053446","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5704711095539514666","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5449393554084875660","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5238898146110492403","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681241468063451828","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5738523675897553270","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5724648397005188929","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4964487483417406645","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5259992753776356314","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4999118027321972736","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',NULL) 
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
                  <cm:TZCheckBox Name="chkReferenceActing" Content="ارجاع جهت" ControlID="5150378410502021558" FontFamily="Tahoma" Canvas.Left="606.2016931600001" Canvas.Top="50.351659955515288" cm:Event="dsAnswerActing" cm:FCVCol="4936620095668202831#5538917384814042880#5491265726550782421#5506921329922687913#" cm:FECol="4881570594048707352#" cm:FMCol="4881570594048707352#" cm:FVCol="" cm:TabIndex="28" cm:TCVCol="" cm:TECol="4936620095668202831#5538917384814042880#5506921329922687913#" cm:TMCol="4936620095668202831#4888789270628417469#5491265726550782421#5506921329922687913#" cm:TVCol="" />
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
                  <cm:tzDataSource Name="dsSelectrbnAccActions" Content="dsSelectrbnAccActions" Width="110" Height="25" ControlID="5200482427605653075" Canvas.Left="367.84265146999928" Canvas.Top="7.0000000000002274" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@rbnAccActions} AS rbnAccActions" />
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
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1404/02/21 10:46:38', GUID = '727b7174-a4e6-41ce-95e8-f91c3ece3ad6', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "243" ,"components": [{"value": "","key": "4975186370815220673","label": "CheckBox167","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "rbnAccActions"},{"value": "","key": "5497800083366103290","label": "CheckBox175","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5716290874951705075","label": "CheckBox178","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5286295664072768338","label": "CheckBox186","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5447522547560323991","label": "CheckBox203","controlType": "checkbox","caption": "chbVisibleItem" ,"DataBindingField" : "flag"},{"value": "","key": "5343950136022904724","label": "CheckBox37","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "SelectInfo"},{"value": "","key": "4872620607267697235","label": "chkAkhzTaidie","controlType": "checkbox","caption": "chkAkhzTaidie" ,"DataBindingField" : "Res"},{"value": "","key": "4655348426068110759","label": "chkAnswerActing","controlType": "checkbox","caption": "chkAnswerActing" ,"DataBindingField" : "Res"},{"value": "","key": "5322494452124026796","label": "chkCheckExistsRefrence","controlType": "checkbox","caption": "chkCheckExistsRefrence" ,"DataBindingField" : "Res"},{"value": "","key": "4875558306346267617","label": "chkCheckRefrenceUser","controlType": "checkbox","caption": "chkCheckRefrenceUser" ,"DataBindingField" : "Res"},{"value": "","key": "4795065758229322170","label": "chkCheckRefrenceUserSec","controlType": "checkbox","caption": "chkCheckRefrenceUserSec" ,"DataBindingField" : "Res"},{"value": "","key": "5036804729879951345","label": "chkCheckWorkflowStatus","controlType": "checkbox","caption": "chkCheckWorkflowStatus" ,"DataBindingField" : "Res"},{"value": "","key": "4688451764383907719","label": "chkCompare","controlType": "checkbox","caption": "chkCompare" ,"DataBindingField" : "res"},{"value": "","key": "5132155074427207127","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Column1"},{"value": "","key": "5192361472626038383","label": "chkEnableDate","controlType": "checkbox","caption": "chkEnableDate" ,"DataBindingField" : "Res"},{"value": "","key": "5314528432430841199","label": "chkIsManagerAvailable","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "FieldManagerNotAvailable"},{"value": "","key": "5220620902125066610","label": "chkMandatoryNotSelectInfo","controlType": "checkbox","caption": "chkMandatoryNotSelectInfo" ,"DataBindingField" : "MandatoryNotSelectInfo"},{"value": "","key": "5115924373474858497","label": "chkMandatoryNotSelectInfoDate","controlType": "checkbox","caption": "chkMandatoryNotSelectInfoDate" ,"DataBindingField" : "MandatoryNotSelectInfoDate"},{"value": "","key": "5666353536888725103","label": "chkMandatorySelectInfo","controlType": "checkbox","caption": "chkMandatorySelectInfo" ,"DataBindingField" : "MandatorySelectInfo"},{"value": "","key": "5659335003033723732","label": "chkMultipleValues","controlType": "checkbox","caption": "chkMultipleValues" ,"DataBindingField" : "rbnMultipleValues"},{"value": "","key": "5168659056268343420","label": "chkMultipleValuesMandatory","controlType": "checkbox","caption": "chkMultipleValuesMandatory" ,"DataBindingField" : "MandatoryrbnMultipleValues"},{"value": "","key": "5443758597500893918","label": "chkNeedCertificate","controlType": "checkbox","caption": "chkNeedCertificate" ,"DataBindingField" : "IsNeedCertificate"},{"value": "","key": "5150378410502021558","label": "chkReferenceActing","controlType": "checkbox","caption": "ارجاع جهت" ,"DataBindingField" : ""},{"value": "","key": "4844487118598404545","label": "chkRequestSubject","controlType": "checkbox","caption": "chkRequestSubject" ,"DataBindingField" : "Res"},{"value": "","key": "5516976854451683700","label": "chkUserCanInsert","controlType": "checkbox","caption": "chkUserCanInsert" ,"DataBindingField" : "Res"},{"value": "","key": "5464357723432469235","label": "chkUserIsBranch","controlType": "checkbox","caption": "chkUserIsBranch" ,"DataBindingField" : "UserIsBranch"},{"value": "","key": "4697873506575570740","label": "chkValidate","controlType": "checkbox","caption": "chkValidate" ,"DataBindingField" : "Res"},{"value": "","key": "5094607077792705164","label": "chkValidatePeymankarDate","controlType": "checkbox","caption": "chkValidatePeymankarDate." ,"DataBindingField" : "Column1"},{"key": "5554970866147992698","label": "cmbFieldValueID","value": "", "controlType": "dropdown","options":""},{"key": "4936620095668202831","label": "cmbReferenceActing","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5259992753776356314","label": "cmbScoreActions","value": "", "controlType": "dropdown","options":""},{"key": "4881570594048707352","label": "cmbStatusActing","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key":"5367634685351392367" , "dataSourceName":"DataSource187" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5477569500181547439" , "dataSourceName":"dsAkhzTaidie" , "controlType": "datasource",  "selectQuery" :"IF ({@cmbReferenceActing} = 1) BEGIN SELECT CAST(1 AS BIT) AS Res END BEGIN SELECT CAST(0 AS BIT) AS Res END" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689550366720017222" , "dataSourceName":"dsAnswerActing" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckAnswerActing_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4702876376026890291" , "dataSourceName":"dsCheckExists" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_Exists_Tbl_Cu_ReferralUserServingTable_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5046816167316824995" , "dataSourceName":"dsCheckPeymankarDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckPeymankarDate" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4983588032057303957" , "dataSourceName":"dsCheckRefrenceUser" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserSeconder} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4646773501795498378" , "dataSourceName":"dsCheckRefrenceUserSec" , "controlType": "datasource",  "selectQuery" :"IF ({@txtReferenceUserActing} = (@UserID)) SELECT CAST(1 as BIT) as Res else SELECT CAST(0 as BIT) as Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4686304685539765447" , "dataSourceName":"dsCheckRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidate_RequestSubject_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4772282357938744593" , "dataSourceName":"dsCheckValidate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidation_RequestSubject_New2 {@txtItemID}, {@cmbFieldValueID},{@txtValue},{@pdDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5122826346641792319" , "dataSourceName":"dsCheckWorkflowStatus" , "controlType": "datasource",  "selectQuery" :"SP_Cu_CheckWorkflowStatus_Frm31240" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5632608860963331703" , "dataSourceName":"dschkIsManagerAvailable" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_IsFieldManagerAvailable" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4796377435123176147" , "dataSourceName":"dsCompare" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Compare_PublicServiceDeskValueField_WITH_FieldSubject_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5462419856774520597" , "dataSourceName":"dsDelete" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_delete_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5662589489734807052" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"IF {@cmbRequestSubject} NOT IN (''-1'','''') AND (@WorkflowInstanceID) in (''-1'','''') SELECT CAST(1 as BIT) ELSE SELECT CAST(0 as BIT)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5466927095367674240" , "dataSourceName":"dsEnableDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_EnableDate_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5559974938702805655" , "dataSourceName":"dsEnableLabel" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 1 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5273195586687856254" , "dataSourceName":"dsEnableLabel2" , "controlType": "datasource",  "selectQuery" :"IF {@txtLastStatusActing} = 2 AND {@chkEnableDate} = CAST(1 AS BIT) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4793853652190513490" , "dataSourceName":"dsFollowCode" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetFollowCode_NewUserDefinition" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4655762560683332289" , "dataSourceName":"dsGetUserDataFirst" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Second" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5627434039910385051" , "dataSourceName":"dsGetUserDataForth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Fourth" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4937725416156234603" , "dataSourceName":"dsGetUserDataSecond" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243_Third" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5729304498189769267" , "dataSourceName":"dsGetUserDataThird" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLoadEghamUserData_Frm243" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5369238171599239062" , "dataSourceName":"dsGetValue" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_FieldValue_New" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5170551075891586804" , "dataSourceName":"dsGUIDD" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetNewGUID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4877631570857336077" , "dataSourceName":"dsInsertData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_InsertInto_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5085105881132199709" , "dataSourceName":"dsLink" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServiceDeskHelpFile" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5110670696080708548" , "dataSourceName":"dsLoad" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_Tbl_Cu_ServingTableField_Log {@txtGUIDD}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760404647498399665" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4974277814964022057" , "dataSourceName":"dsLoadService" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4881392250038900796" , "dataSourceName":"dsMakeEmptry" , "controlType": "datasource",  "selectQuery" :"IF ({@txtDataRes} != convert(nvarchar,GETDATE(),21)) SELECT CAST(1 AS BIT) AS Res ELSE SELECT CAST(0 AS BIT) AS Res" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5540375087530757889" , "dataSourceName":"dsMandatoryData" , "controlType": "datasource",  "selectQuery" :"Sp_CU_ValidateNeedCertificateAndVisibleFieldValue_Frm160" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5114061319767955735" , "dataSourceName":"dsReadActingRef" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ReferenceActing" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5031005639295037783" , "dataSourceName":"dsReadAttachment" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5616592185866978428" , "dataSourceName":"dsReadCountAttach" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseAttachment_Log_Count" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4823486510891932452" , "dataSourceName":"dsReadData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_ReadData_ServingTableField" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5281261300836226632" , "dataSourceName":"dsReadHistory" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5055561591823269414" , "dataSourceName":"dsScore" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_ServingTableScore" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5459657173581711636" , "dataSourceName":"dsSelectchklMultipleValues" , "controlType": "datasource",  "selectQuery" :"SELECT {@chklMultipleValues} AS chklMultipleValues" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233624649659262730" , "dataSourceName":"dsSelectCurrentDate" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.MiladiToShamsi(GETDATE()) AS CurrentDate,        CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS CurrentTime;" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5036453969450944063" , "dataSourceName":"dsSelectItems" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvItems} AS ItemID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5200482427605653075" , "dataSourceName":"dsSelectrbnAccActions" , "controlType": "datasource",  "selectQuery" :"SELECT {@rbnAccActions} AS rbnAccActions" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5233856275930939671" , "dataSourceName":"dsSelectUserRefrence" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp237}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5401325953310335326" , "dataSourceName":"dsSelectUserRefrenceNew" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID ={@LookUp212}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617427278350659249" , "dataSourceName":"dsSelectUserRefrenceSec" , "controlType": "datasource",  "selectQuery" :"SELECT FullName,UserId From Users.TblProfiles Where UserID = {@LookUp159}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5667847526345547012" , "dataSourceName":"dsSelectWFID" , "controlType": "datasource",  "selectQuery" :"SELECT (@WorkflowInstanceID) AS WFID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4730083060785538985" , "dataSourceName":"dsUpdateData" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Update_Tbl_Cu_ServingTableField_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5200068161426511415" , "dataSourceName":"dsUserCanInsert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_UserCantStart_Workflow_ServingTableSecondPhase" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5017690624055140686" , "dataSourceName":"dsVisibleItem" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_VisibleItemType {@txtItemID}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5568970676742359854","label": "TextBox189","controlType": "textbox", "type": "" , "DataBindingField" : "FieldTitle"},{"value": "","key": "5581141407921292751","label": "TextBox199","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5162934944876769201","label": "TextBox213","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4859239441948670019","label": "TextBox285","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5491265726550782421","label": "TextBox81","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "5626482120269590337","label": "txtActivityIDFirst","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4825489060297649621","label": "txtActivityIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "4843974103575279809","label": "txtActivityIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5347612118525905609","label": "txtActivityIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "ActivityID"},{"value": "","key": "5761211021147188750","label": "txtAddress","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5626556152912671128","label": "txtDataRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4669232414997773258","label": "txtDeleteRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "4888789270628417469","label": "txtDescActing","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4999118027321972736","label": "txtDescActions","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704711095539514666","label": "txtDescReference","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5181720467505861532","label": "txtDescSeconder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5263373270007817469","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "5329520347459779938","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : "FullName"},{"value": "","key": "4995533338641167379","label": "txtGUIDD","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5591840014643513848","label": "txtInsertRes","controlType": "textbox", "type": "" , "DataBindingField" : "Res"},{"value": "","key": "5243519420555067860","label": "txtItemID","controlType": "textbox", "type": "" , "DataBindingField" : "ItemID"},{"value": "","key": "5485778130039395725","label": "txtLastStatusActing","controlType": "textbox", "type": "" , "DataBindingField" : "StatusActing"},{"value": "","key": "4826610513644201043","label": "txtMessageNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5760154045432193711","label": "txtMultipleValues","controlType": "textbox", "type": "" , "DataBindingField" : "chklMultipleValues"},{"value": "","key": "4850327712077035454","label": "txtOrganizationPost","controlType": "textbox", "type": "" , "DataBindingField" : "Organizationpost"},{"value": "","key": "4797625139975453820","label": "txtOrganizationUnit","controlType": "textbox", "type": "" , "DataBindingField" : "OrganizationUnit"},{"value": "","key": "5474736857145248079","label": "txtOUID","controlType": "textbox", "type": "" , "DataBindingField" : "UnitID"},{"value": "","key": "5281861071186097962","label": "txtPhoneNumber","controlType": "textbox", "type": "" , "DataBindingField" : "telephonenumber"},{"value": "","key": "5506921329922687913","label": "txtReferenceUserActing","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5265233019818142125","label": "txtReferenceUserSeconder","controlType": "textbox", "type": "" , "DataBindingField" : "UserId"},{"value": "","key": "5206491520355753398","label": "txtRequestDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5035903570341991895","label": "txtServiceLocation","controlType": "textbox", "type": "" , "DataBindingField" : "Servicelocation"},{"value": "","key": "4938308427061897607","label": "txtServiceResult","controlType": "textbox", "type": "" , "DataBindingField" : "Result"},{"value": "$CurrentUserId","key": "5758762721732505115","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4882272451934286700","label": "txtUserIDfirst","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4818312992012446291","label": "txtUserIDForth","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5639913882214238562","label": "txtUserIDSecond","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4786962185969475179","label": "txtUserIDThird","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "5183947771732858935","label": "txtUserName","controlType": "textbox", "type": "" , "DataBindingField" : "UserName"},{"value": "","key": "5662217081009761575","label": "txtValue","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4883524612292746126","data": [{"key": "5209939103483890987","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5329520347459779938","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5035903570341991895","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4838564445226209905","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4647773901884335145","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5266482798981468614","color": "","invisible": false,"mandatory": true,"disable": false }]},{"layoutID": "5247524876530023130","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5626692213297706894","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5315581096260719821","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5057671704762368988","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4636532424394902227","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5035904599795377816","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5580275910207162559","data": [{"key": "5311852255544786792","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5218958864821998426","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5093058697085053446","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5704711095539514666","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5449393554084875660","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]},{"layoutID": "5238898146110492403","data": [{"key": "4966675744931087483","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4756965879036652248","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5739827505747496310","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5534482759343499973","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4717567623316608016","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "4681241468063451828","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5738523675897553270","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5724648397005188929","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4964487483417406645","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "5259992753776356314","color": "","invisible": true,"mandatory": false,"disable": false },{"key": "4999118027321972736","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5150238976164030821","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5616877507763691571","color": "","invisible": false,"mandatory": false,"disable": true }]}]}',DefaultCulture = NULL  WHERE FormId = 243
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
