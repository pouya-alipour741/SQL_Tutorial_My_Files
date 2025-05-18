GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41614) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41614, N'ثبت تماس',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="1018.51666667" Background="White">
  <Canvas Width="964" Height="949">
    <ViewLayouts>
      <ViewLayoutItem Name="کاربر ثبت کننده" ID="4655287268986225047" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5201950943389170313" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5577593720855528687" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5386732490360936388</ID>
        <Name>تلفن تماس</Name>
        <Condition>({@chkContactNoFormat.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تلفن تماس وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5308468903171495064</ComponentID>
            <ComponentName>chkContactNoFormat</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5283107768455217090</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5365099379629551837</ID>
        <Name>کد ملی</Name>
        <Condition>({@chkNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده نامعتبر می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4807938905471490383</ComponentID>
            <ComponentName>chkNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5638784239361599714</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5749821239461959921</ID>
        <Name>پیدا نکردن کاربر</Name>
        <Condition>({@chkIsUserChosen.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا اول با انتخاب کد ملی یا شماره پیگیری کاربر مورد نظر خود را جستجو کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4826655505317185487</ComponentID>
            <ComponentName>chkIsUserChosen</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5669577919736341254</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5380057079521002667</ID>
        <Name>موضوع اصلی</Name>
        <Condition>({@chkIfMainSubjectChosen.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یک موضوع اصلی انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4646105748959852975</ComponentID>
            <ComponentName>chkIfMainSubjectChosen</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5474505123409513108</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5374134374431881089</ID>
        <Name>خالی بودن نتیجه</Name>
        <Condition>({@chkMandatoryResult.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از گزینه های اعلام نتیجه را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5035113106863757641</ComponentID>
            <ComponentName>chkMandatoryResult</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5720009686895631029</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4699245622920177505</ID>
        <Name>شماره پیگیری نامعتبر</Name>
        <Condition>({@chkIsFollowUpCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره پیگیری باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5500694737592138695</ComponentID>
            <ComponentName>chkIsFollowUpCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5195011236387060401</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5150590684869351743</ID>
        <Name>کد ملی نامعتبر</Name>
        <Condition>({@chkIsNationalCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4838887523709586221</ComponentID>
            <ComponentName>chkIsNationalCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4831547997796317944</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TZTabControl Name="TabControl2" Width="928" Height="877" ControlID="4716934453327900403" Canvas.Left="14" Canvas.Top="21.92829219">
      <cm:TZTabItem HeaderText="فرم فرآیند">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox45" Width="906" Height="112" ControlID="4764762994651109172" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="74.51666667" ControlID="5757177772545632440" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.170591738252995*" />
                  <ColumnDefinition Width="0.158825007753431*" />
                  <ColumnDefinition Width="0.167567668730682*" />
                  <ColumnDefinition Width="0.170481889056434*" />
                  <ColumnDefinition Width="0.166110558567808*" />
                  <ColumnDefinition Width="0.16642313763865*" />
                </Grid.ColumnDefinitions>
                <cm:tzLabel Name="Lable8" Content="کد ملی" Width="49" Height="22" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5479656272594281761" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtNationalCode" Width="78.57242583" Height="14.999999999999998" Margin="22.3405162467348,38.9999999999999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5718928631750974967" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="NationalCode" cm:Event="dschkIsNationalCodeNumeric" cm:Len="10" />
                <cm:tzLabel Name="Lable50" Content="شماره پیگیری" Width="81" Height="21.08668684" Margin="0,7.99999999999989,20.6168135032652,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4768561052965949033" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtFollowUpCode" Width="60.47505423000019" Height="21" Margin="32.3902287492704,0,0,14.5166666700002" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4929762884074901527" Grid.Column="4" Grid.Row="0" cm:DataBinding="dschkFollowUpCode" cm:DataBindingField="res" cm:Event="dschkIsFollowUpCodeNumeric" />
                <cm:tzTextBox Name="txtRegUser" Width="72" Height="13.000000000000002" Margin="8,10.9999999999998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4941204978461054497" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="22.999999999999986" Margin="0,0,40.5113168761296,14.5166666700002" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="4937614087618694725" Grid.Column="0" Grid.Row="0" cm:Event="dsLoadInfo" cm:Validations="4699245622920177505,5150590684869351743" />
                <cm:tzDataSource Name="dschkNationalCode" Content="dschkNationalCode" Width="56.745943740000484" Height="25" Margin="0,10.9999999999999,100.990384609999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5348376631426468169" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkNationalCode" Content="TZCheckBox" Width="38" Height="20" Margin="0,0,57.9999999999998,41.51666667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4807938905471490383" Grid.Column="5" Grid.Row="0" cm:DataBinding="dschkNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                <cm:tzTextBox Name="txtCurrentUser" Width="60" Height="12.99999999999954" Margin="0,10.9999999999998,136.093788338642,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4699420598710485446" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsGetCurrentUser" cm:DataBindingField="UserID" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsGetCurrentUser" Content="dsGetCurrentUser" Width="46" Height="25" Margin="93.13411466,0,0,20.51666667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4757561933949131916" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID) UserID" />
                <cm:tzTextBox Name="txtGetPortalUserID" Width="25" Height="21" Margin="145.908725076358,7.99999999999977,125.89878666073,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5157668540547016625" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UserID" cm:Event="dschkIsUserChosen" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="64" Height="25" Margin="24.7843119308191,29,60.89878666073,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5214589721348424865" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_LoadInfo_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dschkIsUserChosen" Content="dschkIsUserChosen" Width="48.999999999999993" Height="25" Margin="74.16839306387,29,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5128459709351283603" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIfUserChosen_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtGetPortalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsUserChosen" Content="TZCheckBox" Width="55" Height="20" Margin="74.1683930638704,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4826655505317185487" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkIsUserChosen" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsNationalCodeNumeric" Content="dschkIsNationalCodeNumeric" Width="47" Height="24.999999999999993" Margin="7.11951484673477,0,91.9999999999998,8" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5682520070876983841" Grid.Column="5" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIsNationalCodeNumeric_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsNationalCodeNumeric" Content="TZCheckBox" Width="39" Height="20" Margin="0,55.0000000000001,37.2065727699999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4838887523709586221" Grid.Column="5" Grid.Row="0" cm:DataBinding="dschkIsNationalCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsFollowUpCodeNumeric" Content="dschkIsFollowUpCodeNumeric" Width="44" Height="25" Margin="119.073327340819,3,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5159191487688914633" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIsFollowUpCodeNumeric_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FollowUpCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsFollowUpCodeNumeric" Content="TZCheckBox" Width="36" Height="20" Margin="0,46.51666667,10.7120439807293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5500694737592138695" Grid.Column="3" Grid.Row="0" cm:DataBinding="dschkIsFollowUpCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox58" Width="911.94924724" Height="522.51666667" ControlID="4976751935589366129" Canvas.Left="2.0507527599999413" Canvas.Top="128.99999999666687" cm:Header="">
            <Canvas>
              <cm:Grid Width="896" Height="491.22355967666658" ControlID="5621268128858234199" Canvas.Left="2.14677811" Canvas.Top="1.80977366">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.158357660916014*" />
                  <ColumnDefinition Width="0.164582456055109*" />
                  <ColumnDefinition Width="0.169022110496181*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.167734319102866*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.096371323582296*" />
                  <RowDefinition Height="0.10402289252238*" />
                  <RowDefinition Height="0.103227121035759*" />
                  <RowDefinition Height="0.102524676255903*" />
                  <RowDefinition Height="0.0970520213207262*" />
                  <RowDefinition Height="0.0990985950438745*" />
                  <RowDefinition Height="0.096626539350221*" />
                  <RowDefinition Height="0.100738306982145*" />
                  <RowDefinition Height="0.0966265393502208*" />
                  <RowDefinition Height="0.103711984556475*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable10" Content="نام" Width="38" Height="23" Margin="0,5.45352415666684,8.00000000000023,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4735299319698525072" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtName" Width="101.03490401000035" Height="21" Margin="0,0,35.5375218200001,8.54727061731705" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5015109671430041049" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FirstName" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable12" Content="نام خانوادگی" Width="66.680628270000057" Height="23" Margin="0,5.45352415666685,10.091844873832,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5329317352985743901" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtLastName" Width="75.500872610000215" Height="21" Margin="0,0,64.7360657338323,8.54727061731705" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4878731099635972323" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="LastName" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable14" Content="شماره تماس" Width="68.000000000000057" Height="23" Margin="0,-0.457538753333155,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5552455479006248384" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:tzTextBox Name="txtContactNo" Width="66.6781850000001" Height="21" Margin="7.62964806929568,0,0,2.79740337418048" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5639456084995486972" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Mobile" cm:Event="dschkContactNoFormat" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable16" Content="موضوعات پرتکرار:" Width="107" Height="23.000000000000007" Margin="35.2899499161679,18.7298656426831,8.00000000000011,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5091018589039932203" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnRegister" Content="ثبت نام" Width="120" Height="20.000000000000007" Margin="12.2190087927313,21.7298656426831,20.2369383438325,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4669561737145455733" GroupName="RepeatedSubjects" Grid.Column="4" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnAffirmation" Content="تاییدیه تحصیلی" Width="120" Height="20.000000000000007" Margin="9.92007681929567,18.7298656426831,22.5358703172682,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5554754662913942396" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="3" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnDegreeApproval" Content="تایید مدرک" Width="120" Height="20.000000000000007" Margin="24.0651683538738,18.7298656426831,7.37864265070436,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5147703354148026239" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="2" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnCommitmentCancelation" Content="لغو تعهد" Width="120" Height="20.000000000000007" Margin="15.9664089892513,18.7298656426831,11.4994716361263,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5277225740029483546" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="1" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnComission" Content="کمیسیون" Width="119.99999999999999" Height="20.000000000000007" Margin="15.5130048600001,18.7298656426831,6.37545932074843,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5085479191938738428" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="0" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzLabel Name="Lable20" Content="موضوعات دیگر" Width="55.845688930000058" Height="23" Margin="0,8.32399656973149,24.9548974300001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4964955926432859829" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbOtherTopics" Width="79.7267369" Height="22" Margin="20.9984996161678,0,0,8.87407892561086" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5023808873728860115" Grid.Column="5" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOtherTopics" cm:Event="dschkClearFrequentTopics,dsMainTopicResult" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                <cm:tzLabel Name="Lable25" Content="لیست تیکت های ثبت شده" Width="134.18963842000039" Height="23" Margin="0,7.60317437136072,21.1476114199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5090331543454500573" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
                <cm:tzLabel Name="Lable27" Content="لیست فرآیندهای ثبت شده" Width="120.80753046000018" Height="23" Margin="0,24.182908498599,15.76489537,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5505996412291611622" FontFamily="Tahoma" Grid.Column="5" Grid.Row="7" />
                <cm:tzDataGrid Name="gvRegisteredWF" Width="809.33148313" Height="60" Margin="0,18.0066079371494,63.2899499199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144064676771733540" ItemsSource="{Binding ElementName=dsWorkflowFromDashboard, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="8" Grid.RowSpan="2" cm:BindingForm="dsWorkflowFromDashboard" cm:Event="dsRelatedWFID" cm:KeyField="key_value">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkFlowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkFlowName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowCode" DecimalMark="False" HeaderText="کد پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFStatus" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFStatus">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFStatus}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Desciption" DecimalMark="False" HeaderText="شرح" IsRowColorField="False" KeyField="False" SortMemberPath="Desciption">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Desciption}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="key_value" DecimalMark="False" HeaderText="key_value" IsRowColorField="False" KeyField="True" SortMemberPath="key_value">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding key_value}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:TZButton Name="btnSearchWF" Content="جستجو" Width="105" Height="23" Margin="0,0,0,14.4914563974748" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5045934540818675603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="7" cm:Event="dsWorkflowFromDashboard" cm:Validations="5749821239461959921" />
                <cm:TZButton Name="btnSearchTicket" Content="جستجو" Width="105.00000000000001" Height="23.000000000000004" Margin="0,20.5718748513609,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5141512261127848650" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:Event="dsTicketsFromQuestionAnswer" cm:Validations="5749821239461959921" />
                <cm:tzDataGrid Name="gvRegisteredTickets" Width="766.58289801999967" Height="62" Margin="0,15.516619833981,49.5647134000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5410151616794185598" ItemsSource="{Binding ElementName=dsTicketsFromQuestionAnswer, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="5" Grid.RowSpan="2" cm:BindingForm="dsTicketsFromQuestionAnswer">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubjectTitle" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubjectTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubjectTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="87" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descript" DecimalMark="False" HeaderText="شرح درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Descript">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descript}" TextWrapping="Wrap" />
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
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="زمان ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="104" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="پاسخ نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzLabel Name="Lable22" Content="شرح" Width="484.59620927" Height="23" Margin="0,0,28.8055050972682,31.8740789268943" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4648431669356448182" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" />
                <cm:tzTextBox Name="txtSubjectDescription" Width="481.86584404999996" Height="75.838511929999981" Margin="0,36.8034931968429,68.0290935172682,36.1023645356221" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="5201950943389170313" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" Grid.RowSpan="3" cm:DataBinding="dsSelectPremadeAnswer" cm:DataBindingField="Response" cm:IsMulitiLine="True" cm:Len="500" />
                <cm:tzLabel Name="Lable41" Content="فرآیند مرتبط" Width="96" Height="22" Margin="0,1.18290849859892,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5461645054891786978" FontFamily="Tahoma" Grid.Column="3" Grid.Row="7" />
                <cm:tzTextBox Name="txtRelatedWF" Width="115.16841194000008" Height="21.000000000000004" Margin="14.7516648792954,0,22.5358703172683,14.4914563974748" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5704821534341723680" Grid.Column="3" Grid.Row="7" cm:DataBinding="dsRelatedWFID" cm:DataBindingField="Column1" cm:IsEnableItem="False" />
                <cm:tzDataSource Name="dsTicketsFromQuestionAnswer" Content="dsTicketsFromQuestionAnswer" Width="110" Height="25.000000000000007" Margin="0,37.1908592209639,122.928202020705,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4917056251901359528" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getTicketsListsFrom_QuestionAnswer_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @portalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable42" Content="پاسخ آماده" Width="119.99999999999999" Height="23.000000000000011" Margin="0,8.32399656844808,20.2369383438325,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5613700394777129349" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbPremadeResponse" Width="120" Height="21.999999999999996" Margin="0,0,20.2369383438325,8.87407892561075" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4709800063438243513" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsPremadeResponses" cm:Event="dsSelectPremadeAnswer" cm:tzDisplayItem="RequestType" cm:tzValueItem="PremadeResponses_ID" />
                <cm:tzDataSource Name="dschkClearFrequentTopics" Content="dschkClearFrequentTopics" Width="46" Height="25" Margin="22.4893635561676,31.9657107964833,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5471135955294073263" Grid.Column="5" Grid.Row="3" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ClearFrequentTopics_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOtherTopics}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOtherTopics" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkClearFrequentTopics" Content="TZCheckBox" Width="45.000000000000014" Height="20" Margin="0,36.9657107964833,128.80058636,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5561996682905433579" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="3" Grid.RowSpan="2" cm:DataBinding="dschkClearFrequentTopics" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4669561737145455733#5554754662913942396#5147703354148026239#5277225740029483546#5085479191938738428#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzDataSource Name="dsOtherTopics" Content="dsOtherTopics" Width="56" Height="25" Margin="0,42.8335149247488,49.5647134000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5530718118038148526" Grid.Column="5" Grid.Row="2" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="sp_cu_GetMainSubject_frm41614" />
                <cm:tzDataSource Name="dsPremadeResponses" Content="dsPremadeResponses" Width="45.974021150000112" Height="25" Margin="75.307833069296,6.32399656844814,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4977130100283707340" Grid.Column="3" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_gvPremadeResponses_frm41606">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMainTopicResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @mainSubject" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtRegUser}" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzTextBox Name="txtMainTopicResult" Width="34" Height="21" Margin="5.2805783427317,0.125921076086286,113.175368793832,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5252272654235027560" Grid.Column="4" Grid.Row="3" cm:DataBinding="dsMainTopicResult" cm:DataBindingField="MainTopicResult" cm:Event="dsPremadeResponses,dschkIfMainSubjectChosen" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsMainTopicResult" Content="dsMainTopicResult" Width="114.66473234999975" Height="25" Margin="144.307833069296,22.1259210760863,45.9393288538322,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5178065844773378524" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getMainTopicResult_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOtherTopics}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOtherTopics" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRegister}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnRegister" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnAffirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnAffirmation" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDegreeApproval}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnDegreeApproval" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnCommitmentCancelation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnCommitmentCancelation" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnComission}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnComission" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsSelectPremadeAnswer" Content="dsSelectPremadeAnswer" Width="53.000000000000028" Height="25" Margin="0,6.32399656844802,68.9282020207047,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5207418306527903405" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbPremadeResponse}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbReadyAnswer" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dschkContactNoFormat" Content="dschkContactNoFormat" Width="64" Height="25" Margin="61.2962522038744,13.7925940035302,26.1475588007038,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4814200733195338273" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_ValidMobileNumber">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtContactNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNum" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkContactNoFormat" Content="TZCheckBox" Width="39.000000000000739" Height="20" Margin="29.5156089838734,0,82.928202020704,8.54727061731711" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5308468903171495064" Grid.Column="2" Grid.Row="0" cm:DataBinding="dschkContactNoFormat" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsWorkflowFromDashboard" Content="dsWorkflowFromDashboard" Width="73" Height="25" Margin="0,9.9935733540953,68.5301464861261,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4669755028355477416" Grid.Column="1" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getWorkFlowListFrom_DashBoard_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @portalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsRelatedWFID" Content="dsRelatedWFID" Width="52.999999999999837" Height="25.000000000000004" Margin="0,9.99357335409547,14.9282020207046,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4869643686872092938" Grid.Column="2" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@gvRegisteredWF}" />
                <cm:tzDataSource Name="dschkIfMainSubjectChosen" Content="dschkIfMainSubjectChosen" Width="46.535534799999709" Height="25" Margin="117.139421129296,5.60317437096381,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4984913755416484071" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec sp_cu_chkIfMainSubjectChosen_frm41614 {@txtMainTopicResult}" />
                <cm:TZCheckBox Name="chkIfMainSubjectChosen" Content="TZCheckBox" Width="27.061569550000172" Height="20" Margin="12.2190087927319,10.6031743709638,113.175368793832,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4646105748959852975" Grid.Column="4" Grid.Row="4" cm:DataBinding="dschkIfMainSubjectChosen" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox59" Width="911.94924724" Height="190" ControlID="5604939951563303688" Canvas.Left="2.0507527599999982" Canvas.Top="652.51666666666665" cm:Header="">
            <Canvas>
              <cm:Grid Width="883.94924724" Height="152.51666666666665" ControlID="4900141141839607149" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.169314163101665*" />
                  <ColumnDefinition Width="0.165173079103264*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.166596984957604*" />
                  <ColumnDefinition Width="0.168569614630938*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.250149965059305*" />
                  <RowDefinition Height="0.250257483918686*" />
                  <RowDefinition Height="0.252438999460677*" />
                  <RowDefinition Height="0.247153551561332*" />
                </Grid.RowDefinitions>
                <cm:TZRadioButton Name="rbnGuidance" Content="راهنمایی" Width="120" Height="20" Margin="21.0069839605543,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4680749092622027115" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnSystemError" Content="خطای سامانه" Width="120" Height="20" Margin="0,8,21.6813937094455,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5219106803957463407" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnUserError" Content="خطای کاربر" Width="120" Height="20" Margin="0,8,16.5920273137178,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5190006649273867614" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnRegisteredRequest" Content="پیگیری روند درخواست ثبت شده" Width="120" Height="20" Margin="11.26865983157,8,14.7359591060739,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5622112977338097565" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:tzLabel Name="Lable34" Content="توضیحات" Width="101" Height="23" Margin="0,8.37042380237168,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5094469259194278180" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:tzTextBox Name="txtResultDescription" Width="634" Height="88" Margin="79.26086957,8.37042380237168,21.6813937094457,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5577593720855528687" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" Grid.RowSpan="3" cm:IsMulitiLine="True" cm:Len="500" />
                <cm:tzDataSource Name="dschkMandatoryResult" Content="dschkMandatoryResult" Width="58" Height="25" Margin="14.52117774,3,77.1439492807872,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5764115556358567550" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkMandatoryResult_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGuidance}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnGuidance" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSystemError}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnSystemError" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnUserError}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnUserError" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRegisteredRequest}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnRegisteredRequest" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkMandatoryResult" Content="TZCheckBox" Width="60" Height="20" Margin="81.52117774,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5035113106863757641" Grid.Column="0" Grid.Row="0" cm:DataBinding="dschkMandatoryResult" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="استعلام سوابق تحصیلی">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox37" Width="906" Height="834.51666666666665" ControlID="5508596512104761493" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="797.0333333333333" ControlID="5067820284656959868" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.162369233692*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.168593042549002*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.167856588181507*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.19832400603776*" />
                  <RowDefinition Height="0.26169576376594*" />
                  <RowDefinition Height="0.290397879791883*" />
                  <RowDefinition Height="0.249582350404417*" />
                </Grid.RowDefinitions>
                <cm:TZButton Name="btnSearchRequest" Content="جستجو" Width="99" Height="23" Margin="0,92.1325719999999,21.259259261576,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4861059585292811700" Grid.Column="0" Grid.Row="0" cm:Event="dsEstelam" />
                <cm:tzDataGrid Name="gvSearchRequest" Width="795" Height="553" Margin="0,18.8395061777041,44.87191158,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5383966629826291922" ItemsSource="{Binding ElementName=dsEstelam, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" Grid.RowSpan="3" cm:BindingForm="dsEstelam">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="63" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FirstName" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="FirstName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FirstName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Last_Name" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="Last_Name">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Last_Name}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityCode" DecimalMark="False" HeaderText="کد دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="53" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Average" DecimalMark="False" HeaderText="میانگین" IsRowColorField="False" KeyField="False" SortMemberPath="Average">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Average}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IdentityCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="IdentityCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IdentityCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StudingModeTitle" DecimalMark="False" HeaderText="نوع دوره" IsRowColorField="False" KeyField="False" SortMemberPath="StudingModeTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StudingModeTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldCode" DecimalMark="False" HeaderText="کد رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="122" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EducationStatusCode" DecimalMark="False" HeaderText="کد وضعیت تحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EducationStatusCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EducationStatusCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="118" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EducationStatusTitle" DecimalMark="False" HeaderText="وضعیت تحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EducationStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EducationStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CodeSehat" DecimalMark="False" HeaderText="کد صحت" IsRowColorField="False" KeyField="False" SortMemberPath="CodeSehat">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CodeSehat}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="115" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTypeCode" DecimalMark="False" HeaderText="کد نوع دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTypeCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTypeCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="58" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldTitle" DecimalMark="False" HeaderText="رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EduEndDate" DecimalMark="False" HeaderText="تاریخ فارغ التحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EduEndDate">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EduEndDate}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="111" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTypeTitle" DecimalMark="False" HeaderText="نوع دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTypeTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTypeTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LevelCode" DecimalMark="False" HeaderText="کد مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="LevelCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LevelCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="105" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StudingModeCode" DecimalMark="False" HeaderText="کد نوع دوره" IsRowColorField="False" KeyField="False" SortMemberPath="StudingModeCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StudingModeCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EduStartDate" DecimalMark="False" HeaderText="تاریخ شروع تحصیل" IsRowColorField="False" KeyField="False" SortMemberPath="EduStartDate">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EduStartDate}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTitle" DecimalMark="False" HeaderText="نام دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LevelTitle" DecimalMark="False" HeaderText="مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="LevelTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LevelTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsEstelam" Content="dsEstelam" Width="109.99999999999999" Height="25" Margin="29.492078002745,103.55105803,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397884644294965982" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Search_TBL_CU_CertificateCodeDatas_Log_CallCentre">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsGetWebData" Content="dsGetWebData" Width="109.99999999999999" Height="25" Margin="0,103.55105803,20.8096984472551,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5559703025829467036" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
                <cm:tzTextBox Name="txtWebNationalCode" Width="76" Height="21" Margin="15.8693138984239,70.132572,54.809698447255,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5562947724389907418" Grid.Column="1" Grid.Row="0" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="سوابق ثبت تماس">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox44" Width="906" Height="834.51666666666665" ControlID="4782156020744355588" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="884.8424821" Height="797.0333333333333" ControlID="5024359322535636463" Canvas.Left="8" Canvas.Top="8">
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.130457838145059*" />
                  <RowDefinition Height="0.869542161854941*" />
                </Grid.RowDefinitions>
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.163193966807775*" />
                  <ColumnDefinition Width="0.158759699958776*" />
                  <ColumnDefinition Width="0.169049680511658*" />
                  <ColumnDefinition Width="0.169049680511658*" />
                  <ColumnDefinition Width="0.169049680511659*" />
                  <ColumnDefinition Width="0.170897291698474*" />
                </Grid.ColumnDefinitions>
                <cm:TZButton Name="btnSearchCallCentre" Content="جستجو" Width="75" Height="23" Margin="0,50.4223548099996,29.0572792339366,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5574484032700017343" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:Event="dsReadCallCentreLog" />
                <cm:tzDataGrid Name="gvSearchCallCentre" Width="824" Height="596" Margin="0,70.011128303783,23.2013696099999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4697275740538435884" ItemsSource="{Binding ElementName=dsReadCallCentreLog, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" cm:BindingForm="dsReadCallCentreLog">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
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
                    <cm:tzDataGridTemplateColumn Width="87" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubjectDescription" DecimalMark="False" HeaderText="شرح درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="SubjectDescription">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubjectDescription}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubjectTitle" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubjectTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubjectTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="نام کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultDescription" DecimalMark="False" HeaderText="پاسخ نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultDescription">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultDescription}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowUpCode" DecimalMark="False" HeaderText="کد پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowUpCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowUpCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsReadCallCentreLog" Content="dsReadCallCentre_log" Width="110.00000000000003" Height="25.000000000000014" Margin="57.3854941,170.054904663783,117.492787522911,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5337967067115566899" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getInfoFromCallCentre_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @PortalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
    </cm:TZTabControl>
  </Canvas>
</cm:TZBaseControl>',1,'2025/05/18 09:55:54', '8b227c76-0912-4a0b-b0e7-7b546882276c', 0, N'', N'{"formID": "41614" ,"components": [{"value": "","key": "5561996682905433579","label": "chkClearFrequentTopics","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5308468903171495064","label": "chkContactNoFormat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4646105748959852975","label": "chkIfMainSubjectChosen","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5500694737592138695","label": "chkIsFollowUpCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4838887523709586221","label": "chkIsNationalCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4826655505317185487","label": "chkIsUserChosen","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5035113106863757641","label": "chkMandatoryResult","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4807938905471490383","label": "chkNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "result"},{"key": "5023808873728860115","label": "cmbOtherTopics","value": "", "controlType": "dropdown","options":""},{"key": "4709800063438243513","label": "cmbPremadeResponse","value": "", "controlType": "dropdown","options":""},{"key":"5471135955294073263" , "dataSourceName":"dschkClearFrequentTopics" , "controlType": "datasource",  "selectQuery" :"sp_cu_ClearFrequentTopics_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4814200733195338273" , "dataSourceName":"dschkContactNoFormat" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_ValidMobileNumber" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4984913755416484071" , "dataSourceName":"dschkIfMainSubjectChosen" , "controlType": "datasource",  "selectQuery" :"exec sp_cu_chkIfMainSubjectChosen_frm41614 {@txtMainTopicResult}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5159191487688914633" , "dataSourceName":"dschkIsFollowUpCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIsFollowUpCodeNumeric_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5682520070876983841" , "dataSourceName":"dschkIsNationalCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIsNationalCodeNumeric_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5128459709351283603" , "dataSourceName":"dschkIsUserChosen" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIfUserChosen_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5764115556358567550" , "dataSourceName":"dschkMandatoryResult" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkMandatoryResult_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5348376631426468169" , "dataSourceName":"dschkNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5397884644294965982" , "dataSourceName":"dsEstelam" , "controlType": "datasource",  "selectQuery" :"SP_CU_Search_TBL_CU_CertificateCodeDatas_Log_CallCentre" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4757561933949131916" , "dataSourceName":"dsGetCurrentUser" , "controlType": "datasource",  "selectQuery" :"select (@UserID) UserID" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5559703025829467036" , "dataSourceName":"dsGetWebData" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5214589721348424865" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"sp_cu_LoadInfo_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5178065844773378524" , "dataSourceName":"dsMainTopicResult" , "controlType": "datasource",  "selectQuery" :"sp_cu_getMainTopicResult_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5530718118038148526" , "dataSourceName":"dsOtherTopics" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetMainSubject_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4977130100283707340" , "dataSourceName":"dsPremadeResponses" , "controlType": "datasource",  "selectQuery" :"sp_cu_gvPremadeResponses_frm41606" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5337967067115566899" , "dataSourceName":"dsReadCallCentreLog" , "controlType": "datasource",  "selectQuery" :"sp_cu_getInfoFromCallCentre_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4869643686872092938" , "dataSourceName":"dsRelatedWFID" , "controlType": "datasource",  "selectQuery" :"select {@gvRegisteredWF}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5207418306527903405" , "dataSourceName":"dsSelectPremadeAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4917056251901359528" , "dataSourceName":"dsTicketsFromQuestionAnswer" , "controlType": "datasource",  "selectQuery" :"sp_cu_getTicketsListsFrom_QuestionAnswer_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4669755028355477416" , "dataSourceName":"dsWorkflowFromDashboard" , "controlType": "datasource",  "selectQuery" :"sp_cu_getWorkFlowListFrom_DashBoard_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5639456084995486972","label": "txtContactNo","controlType": "textbox", "type": "" , "DataBindingField" : "Mobile"},{"value": "","key": "4699420598710485446","label": "txtCurrentUser","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4929762884074901527","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "res"},{"value": "","key": "5157668540547016625","label": "txtGetPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4878731099635972323","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : "LastName"},{"value": "","key": "5252272654235027560","label": "txtMainTopicResult","controlType": "textbox", "type": "" , "DataBindingField" : "MainTopicResult"},{"value": "","key": "5015109671430041049","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : "FirstName"},{"value": "","key": "5718928631750974967","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "$CurrentUserId","key": "4941204978461054497","label": "txtRegUser","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704821534341723680","label": "txtRelatedWF","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5577593720855528687","label": "txtResultDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5201950943389170313","label": "txtSubjectDescription","controlType": "textbox", "type": "" , "DataBindingField" : "Response"},{"value": "","key": "5562947724389907418","label": "txtWebNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4655287268986225047","data": [{"key": "5201950943389170313","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5577593720855528687","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'ثبت تماس',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="1018.51666667" Background="White">
  <Canvas Width="964" Height="949">
    <ViewLayouts>
      <ViewLayoutItem Name="کاربر ثبت کننده" ID="4655287268986225047" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5201950943389170313" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5577593720855528687" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5386732490360936388</ID>
        <Name>تلفن تماس</Name>
        <Condition>({@chkContactNoFormat.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>تلفن تماس وارد شده صحیح نمی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5308468903171495064</ComponentID>
            <ComponentName>chkContactNoFormat</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5283107768455217090</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5365099379629551837</ID>
        <Name>کد ملی</Name>
        <Condition>({@chkNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده نامعتبر می باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4807938905471490383</ComponentID>
            <ComponentName>chkNationalCode</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5638784239361599714</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5749821239461959921</ID>
        <Name>پیدا نکردن کاربر</Name>
        <Condition>({@chkIsUserChosen.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا اول با انتخاب کد ملی یا شماره پیگیری کاربر مورد نظر خود را جستجو کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4826655505317185487</ComponentID>
            <ComponentName>chkIsUserChosen</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5669577919736341254</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5380057079521002667</ID>
        <Name>موضوع اصلی</Name>
        <Condition>({@chkIfMainSubjectChosen.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یک موضوع اصلی انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4646105748959852975</ComponentID>
            <ComponentName>chkIfMainSubjectChosen</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5474505123409513108</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5374134374431881089</ID>
        <Name>خالی بودن نتیجه</Name>
        <Condition>({@chkMandatoryResult.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از گزینه های اعلام نتیجه را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5035113106863757641</ComponentID>
            <ComponentName>chkMandatoryResult</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5720009686895631029</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4699245622920177505</ID>
        <Name>شماره پیگیری نامعتبر</Name>
        <Condition>({@chkIsFollowUpCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>شماره پیگیری باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5500694737592138695</ComponentID>
            <ComponentName>chkIsFollowUpCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5195011236387060401</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5150590684869351743</ID>
        <Name>کد ملی نامعتبر</Name>
        <Condition>({@chkIsNationalCodeNumeric.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد ملی وارد شده باید عددی باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4838887523709586221</ComponentID>
            <ComponentName>chkIsNationalCodeNumeric</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4831547997796317944</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TZTabControl Name="TabControl2" Width="928" Height="877" ControlID="4716934453327900403" Canvas.Left="14" Canvas.Top="21.92829219">
      <cm:TZTabItem HeaderText="فرم فرآیند">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox45" Width="906" Height="112" ControlID="4764762994651109172" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="74.51666667" ControlID="5757177772545632440" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.170591738252995*" />
                  <ColumnDefinition Width="0.158825007753431*" />
                  <ColumnDefinition Width="0.167567668730682*" />
                  <ColumnDefinition Width="0.170481889056434*" />
                  <ColumnDefinition Width="0.166110558567808*" />
                  <ColumnDefinition Width="0.16642313763865*" />
                </Grid.ColumnDefinitions>
                <cm:tzLabel Name="Lable8" Content="کد ملی" Width="49" Height="22" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5479656272594281761" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtNationalCode" Width="78.57242583" Height="14.999999999999998" Margin="22.3405162467348,38.9999999999999,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5718928631750974967" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="NationalCode" cm:Event="dschkIsNationalCodeNumeric" cm:Len="10" />
                <cm:tzLabel Name="Lable50" Content="شماره پیگیری" Width="81" Height="21.08668684" Margin="0,7.99999999999989,20.6168135032652,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4768561052965949033" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtFollowUpCode" Width="60.47505423000019" Height="21" Margin="32.3902287492704,0,0,14.5166666700002" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4929762884074901527" Grid.Column="4" Grid.Row="0" cm:DataBinding="dschkFollowUpCode" cm:DataBindingField="res" cm:Event="dschkIsFollowUpCodeNumeric" />
                <cm:tzTextBox Name="txtRegUser" Width="72" Height="13.000000000000002" Margin="8,10.9999999999998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4941204978461054497" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
                <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="22.999999999999986" Margin="0,0,40.5113168761296,14.5166666700002" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="4937614087618694725" Grid.Column="0" Grid.Row="0" cm:Event="dsLoadInfo" cm:Validations="4699245622920177505,5150590684869351743" />
                <cm:tzDataSource Name="dschkNationalCode" Content="dschkNationalCode" Width="56.745943740000484" Height="25" Margin="0,10.9999999999999,100.990384609999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5348376631426468169" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckNationalCode">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkNationalCode" Content="TZCheckBox" Width="38" Height="20" Margin="0,0,57.9999999999998,41.51666667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4807938905471490383" Grid.Column="5" Grid.Row="0" cm:DataBinding="dschkNationalCode" cm:DataBindingField="result" cm:IsVisibleItem="False" />
                <cm:tzTextBox Name="txtCurrentUser" Width="60" Height="12.99999999999954" Margin="0,10.9999999999998,136.093788338642,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4699420598710485446" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsGetCurrentUser" cm:DataBindingField="UserID" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsGetCurrentUser" Content="dsGetCurrentUser" Width="46" Height="25" Margin="93.13411466,0,0,20.51666667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4757561933949131916" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select (@UserID) UserID" />
                <cm:tzTextBox Name="txtGetPortalUserID" Width="25" Height="21" Margin="145.908725076358,7.99999999999977,125.89878666073,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5157668540547016625" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="UserID" cm:Event="dschkIsUserChosen" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsLoadInfo" Content="dsLoadInfo" Width="64" Height="25" Margin="24.7843119308191,29,60.89878666073,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5214589721348424865" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_LoadInfo_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dschkIsUserChosen" Content="dschkIsUserChosen" Width="48.999999999999993" Height="25" Margin="74.16839306387,29,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5128459709351283603" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIfUserChosen_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtGetPortalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsUserChosen" Content="TZCheckBox" Width="55" Height="20" Margin="74.1683930638704,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4826655505317185487" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkIsUserChosen" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsNationalCodeNumeric" Content="dschkIsNationalCodeNumeric" Width="47" Height="24.999999999999993" Margin="7.11951484673477,0,91.9999999999998,8" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5682520070876983841" Grid.Column="5" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIsNationalCodeNumeric_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsNationalCodeNumeric" Content="TZCheckBox" Width="39" Height="20" Margin="0,55.0000000000001,37.2065727699999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4838887523709586221" Grid.Column="5" Grid.Row="0" cm:DataBinding="dschkIsNationalCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dschkIsFollowUpCodeNumeric" Content="dschkIsFollowUpCodeNumeric" Width="44" Height="25" Margin="119.073327340819,3,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5159191487688914633" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkIsFollowUpCodeNumeric_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @FollowUpCode" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkIsFollowUpCodeNumeric" Content="TZCheckBox" Width="36" Height="20" Margin="0,46.51666667,10.7120439807293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5500694737592138695" Grid.Column="3" Grid.Row="0" cm:DataBinding="dschkIsFollowUpCodeNumeric" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox58" Width="911.94924724" Height="522.51666667" ControlID="4976751935589366129" Canvas.Left="2.0507527599999413" Canvas.Top="128.99999999666687" cm:Header="">
            <Canvas>
              <cm:Grid Width="896" Height="491.22355967666658" ControlID="5621268128858234199" Canvas.Left="2.14677811" Canvas.Top="1.80977366">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.158357660916014*" />
                  <ColumnDefinition Width="0.164582456055109*" />
                  <ColumnDefinition Width="0.169022110496181*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.167734319102866*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.096371323582296*" />
                  <RowDefinition Height="0.10402289252238*" />
                  <RowDefinition Height="0.103227121035759*" />
                  <RowDefinition Height="0.102524676255903*" />
                  <RowDefinition Height="0.0970520213207262*" />
                  <RowDefinition Height="0.0990985950438745*" />
                  <RowDefinition Height="0.096626539350221*" />
                  <RowDefinition Height="0.100738306982145*" />
                  <RowDefinition Height="0.0966265393502208*" />
                  <RowDefinition Height="0.103711984556475*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable10" Content="نام" Width="38" Height="23" Margin="0,5.45352415666684,8.00000000000023,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4735299319698525072" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtName" Width="101.03490401000035" Height="21" Margin="0,0,35.5375218200001,8.54727061731705" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5015109671430041049" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="FirstName" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable12" Content="نام خانوادگی" Width="66.680628270000057" Height="23" Margin="0,5.45352415666685,10.091844873832,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5329317352985743901" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtLastName" Width="75.500872610000215" Height="21" Margin="0,0,64.7360657338323,8.54727061731705" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4878731099635972323" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="LastName" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable14" Content="شماره تماس" Width="68.000000000000057" Height="23" Margin="0,-0.457538753333155,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5552455479006248384" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:tzTextBox Name="txtContactNo" Width="66.6781850000001" Height="21" Margin="7.62964806929568,0,0,2.79740337418048" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5639456084995486972" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsLoadInfo" cm:DataBindingField="Mobile" cm:Event="dschkContactNoFormat" cm:IsEnableItem="False" />
                <cm:tzLabel Name="Lable16" Content="موضوعات پرتکرار:" Width="107" Height="23.000000000000007" Margin="35.2899499161679,18.7298656426831,8.00000000000011,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5091018589039932203" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnRegister" Content="ثبت نام" Width="120" Height="20.000000000000007" Margin="12.2190087927313,21.7298656426831,20.2369383438325,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4669561737145455733" GroupName="RepeatedSubjects" Grid.Column="4" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnAffirmation" Content="تاییدیه تحصیلی" Width="120" Height="20.000000000000007" Margin="9.92007681929567,18.7298656426831,22.5358703172682,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5554754662913942396" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="3" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnDegreeApproval" Content="تایید مدرک" Width="120" Height="20.000000000000007" Margin="24.0651683538738,18.7298656426831,7.37864265070436,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5147703354148026239" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="2" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnCommitmentCancelation" Content="لغو تعهد" Width="120" Height="20.000000000000007" Margin="15.9664089892513,18.7298656426831,11.4994716361263,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5277225740029483546" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="1" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:TZRadioButton Name="rbnComission" Content="کمیسیون" Width="119.99999999999999" Height="20.000000000000007" Margin="15.5130048600001,18.7298656426831,6.37545932074843,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5085479191938738428" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="0" Grid.Row="1" cm:Event="dsMainTopicResult" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="5023808873728860115#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzLabel Name="Lable20" Content="موضوعات دیگر" Width="55.845688930000058" Height="23" Margin="0,8.32399656973149,24.9548974300001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4964955926432859829" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbOtherTopics" Width="79.7267369" Height="22" Margin="20.9984996161678,0,0,8.87407892561086" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5023808873728860115" Grid.Column="5" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOtherTopics" cm:Event="dschkClearFrequentTopics,dsMainTopicResult" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                <cm:tzLabel Name="Lable25" Content="لیست تیکت های ثبت شده" Width="134.18963842000039" Height="23" Margin="0,7.60317437136072,21.1476114199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5090331543454500573" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
                <cm:tzLabel Name="Lable27" Content="لیست فرآیندهای ثبت شده" Width="120.80753046000018" Height="23" Margin="0,24.182908498599,15.76489537,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5505996412291611622" FontFamily="Tahoma" Grid.Column="5" Grid.Row="7" />
                <cm:tzDataGrid Name="gvRegisteredWF" Width="809.33148313" Height="60" Margin="0,18.0066079371494,63.2899499199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144064676771733540" ItemsSource="{Binding ElementName=dsWorkflowFromDashboard, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="8" Grid.RowSpan="2" cm:BindingForm="dsWorkflowFromDashboard" cm:Event="dsRelatedWFID" cm:KeyField="key_value">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkFlowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkFlowName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowCode" DecimalMark="False" HeaderText="کد پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFStatus" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFStatus">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFStatus}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Desciption" DecimalMark="False" HeaderText="شرح" IsRowColorField="False" KeyField="False" SortMemberPath="Desciption">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Desciption}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="key_value" DecimalMark="False" HeaderText="key_value" IsRowColorField="False" KeyField="True" SortMemberPath="key_value">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding key_value}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:TZButton Name="btnSearchWF" Content="جستجو" Width="105" Height="23" Margin="0,0,0,14.4914563974748" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5045934540818675603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="7" cm:Event="dsWorkflowFromDashboard" cm:Validations="5749821239461959921" />
                <cm:TZButton Name="btnSearchTicket" Content="جستجو" Width="105.00000000000001" Height="23.000000000000004" Margin="0,20.5718748513609,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5141512261127848650" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:Event="dsTicketsFromQuestionAnswer" cm:Validations="5749821239461959921" />
                <cm:tzDataGrid Name="gvRegisteredTickets" Width="766.58289801999967" Height="62" Margin="0,15.516619833981,49.5647134000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5410151616794185598" ItemsSource="{Binding ElementName=dsTicketsFromQuestionAnswer, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="5" Grid.RowSpan="2" cm:BindingForm="dsTicketsFromQuestionAnswer">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubjectTitle" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubjectTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubjectTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="87" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descript" DecimalMark="False" HeaderText="شرح درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Descript">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descript}" TextWrapping="Wrap" />
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
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="زمان ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="104" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="پاسخ نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzLabel Name="Lable22" Content="شرح" Width="484.59620927" Height="23" Margin="0,0,28.8055050972682,31.8740789268943" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4648431669356448182" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" />
                <cm:tzTextBox Name="txtSubjectDescription" Width="481.86584404999996" Height="75.838511929999981" Margin="0,36.8034931968429,68.0290935172682,36.1023645356221" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="5201950943389170313" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" Grid.RowSpan="3" cm:DataBinding="dsSelectPremadeAnswer" cm:DataBindingField="Response" cm:IsMulitiLine="True" cm:Len="500" />
                <cm:tzLabel Name="Lable41" Content="فرآیند مرتبط" Width="96" Height="22" Margin="0,1.18290849859892,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5461645054891786978" FontFamily="Tahoma" Grid.Column="3" Grid.Row="7" />
                <cm:tzTextBox Name="txtRelatedWF" Width="115.16841194000008" Height="21.000000000000004" Margin="14.7516648792954,0,22.5358703172683,14.4914563974748" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5704821534341723680" Grid.Column="3" Grid.Row="7" cm:DataBinding="dsRelatedWFID" cm:DataBindingField="Column1" cm:IsEnableItem="False" />
                <cm:tzDataSource Name="dsTicketsFromQuestionAnswer" Content="dsTicketsFromQuestionAnswer" Width="110" Height="25.000000000000007" Margin="0,37.1908592209639,122.928202020705,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4917056251901359528" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getTicketsListsFrom_QuestionAnswer_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @portalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable42" Content="پاسخ آماده" Width="119.99999999999999" Height="23.000000000000011" Margin="0,8.32399656844808,20.2369383438325,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5613700394777129349" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbPremadeResponse" Width="120" Height="21.999999999999996" Margin="0,0,20.2369383438325,8.87407892561075" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4709800063438243513" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsPremadeResponses" cm:Event="dsSelectPremadeAnswer" cm:tzDisplayItem="RequestType" cm:tzValueItem="PremadeResponses_ID" />
                <cm:tzDataSource Name="dschkClearFrequentTopics" Content="dschkClearFrequentTopics" Width="46" Height="25" Margin="22.4893635561676,31.9657107964833,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5471135955294073263" Grid.Column="5" Grid.Row="3" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ClearFrequentTopics_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOtherTopics}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOtherTopics" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkClearFrequentTopics" Content="TZCheckBox" Width="45.000000000000014" Height="20" Margin="0,36.9657107964833,128.80058636,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5561996682905433579" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="3" Grid.RowSpan="2" cm:DataBinding="dschkClearFrequentTopics" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4669561737145455733#5554754662913942396#5147703354148026239#5277225740029483546#5085479191938738428#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                <cm:tzDataSource Name="dsOtherTopics" Content="dsOtherTopics" Width="56" Height="25" Margin="0,42.8335149247488,49.5647134000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5530718118038148526" Grid.Column="5" Grid.Row="2" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="sp_cu_GetMainSubject_frm41614" />
                <cm:tzDataSource Name="dsPremadeResponses" Content="dsPremadeResponses" Width="45.974021150000112" Height="25" Margin="75.307833069296,6.32399656844814,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4977130100283707340" Grid.Column="3" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_gvPremadeResponses_frm41606">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMainTopicResult}" IsOutputParameter="False" ParameterType="int" SpParamName=" @mainSubject" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtRegUser}" IsOutputParameter="False" ParameterType="int" SpParamName=" @userID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzTextBox Name="txtMainTopicResult" Width="34" Height="21" Margin="5.2805783427317,0.125921076086286,113.175368793832,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5252272654235027560" Grid.Column="4" Grid.Row="3" cm:DataBinding="dsMainTopicResult" cm:DataBindingField="MainTopicResult" cm:Event="dsPremadeResponses,dschkIfMainSubjectChosen" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsMainTopicResult" Content="dsMainTopicResult" Width="114.66473234999975" Height="25" Margin="144.307833069296,22.1259210760863,45.9393288538322,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5178065844773378524" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getMainTopicResult_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOtherTopics}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOtherTopics" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRegister}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnRegister" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnAffirmation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnAffirmation" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnDegreeApproval}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnDegreeApproval" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnCommitmentCancelation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnCommitmentCancelation" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnComission}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnComission" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsSelectPremadeAnswer" Content="dsSelectPremadeAnswer" Width="53.000000000000028" Height="25" Margin="0,6.32399656844802,68.9282020207047,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5207418306527903405" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbPremadeResponse}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbReadyAnswer" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dschkContactNoFormat" Content="dschkContactNoFormat" Width="64" Height="25" Margin="61.2962522038744,13.7925940035302,26.1475588007038,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4814200733195338273" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Check_ValidMobileNumber">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtContactNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNum" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkContactNoFormat" Content="TZCheckBox" Width="39.000000000000739" Height="20" Margin="29.5156089838734,0,82.928202020704,8.54727061731711" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5308468903171495064" Grid.Column="2" Grid.Row="0" cm:DataBinding="dschkContactNoFormat" cm:DataBindingField="Result" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsWorkflowFromDashboard" Content="dsWorkflowFromDashboard" Width="73" Height="25" Margin="0,9.9935733540953,68.5301464861261,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4669755028355477416" Grid.Column="1" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getWorkFlowListFrom_DashBoard_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @portalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsRelatedWFID" Content="dsRelatedWFID" Width="52.999999999999837" Height="25.000000000000004" Margin="0,9.99357335409547,14.9282020207046,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4869643686872092938" Grid.Column="2" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@gvRegisteredWF}" />
                <cm:tzDataSource Name="dschkIfMainSubjectChosen" Content="dschkIfMainSubjectChosen" Width="46.535534799999709" Height="25" Margin="117.139421129296,5.60317437096381,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4984913755416484071" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec sp_cu_chkIfMainSubjectChosen_frm41614 {@txtMainTopicResult}" />
                <cm:TZCheckBox Name="chkIfMainSubjectChosen" Content="TZCheckBox" Width="27.061569550000172" Height="20" Margin="12.2190087927319,10.6031743709638,113.175368793832,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4646105748959852975" Grid.Column="4" Grid.Row="4" cm:DataBinding="dschkIfMainSubjectChosen" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox59" Width="911.94924724" Height="190" ControlID="5604939951563303688" Canvas.Left="2.0507527599999982" Canvas.Top="652.51666666666665" cm:Header="">
            <Canvas>
              <cm:Grid Width="883.94924724" Height="152.51666666666665" ControlID="4900141141839607149" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.169314163101665*" />
                  <ColumnDefinition Width="0.165173079103264*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.166596984957604*" />
                  <ColumnDefinition Width="0.168569614630938*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.250149965059305*" />
                  <RowDefinition Height="0.250257483918686*" />
                  <RowDefinition Height="0.252438999460677*" />
                  <RowDefinition Height="0.247153551561332*" />
                </Grid.RowDefinitions>
                <cm:TZRadioButton Name="rbnGuidance" Content="راهنمایی" Width="120" Height="20" Margin="21.0069839605543,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4680749092622027115" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnSystemError" Content="خطای سامانه" Width="120" Height="20" Margin="0,8,21.6813937094455,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5219106803957463407" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnUserError" Content="خطای کاربر" Width="120" Height="20" Margin="0,8,16.5920273137178,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5190006649273867614" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:TZRadioButton Name="rbnRegisteredRequest" Content="پیگیری روند درخواست ثبت شده" Width="120" Height="20" Margin="11.26865983157,8,14.7359591060739,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5622112977338097565" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:Event="dschkMandatoryResult" />
                <cm:tzLabel Name="Lable34" Content="توضیحات" Width="101" Height="23" Margin="0,8.37042380237168,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5094469259194278180" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:tzTextBox Name="txtResultDescription" Width="634" Height="88" Margin="79.26086957,8.37042380237168,21.6813937094457,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5577593720855528687" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" Grid.RowSpan="3" cm:IsMulitiLine="True" cm:Len="500" />
                <cm:tzDataSource Name="dschkMandatoryResult" Content="dschkMandatoryResult" Width="58" Height="25" Margin="14.52117774,3,77.1439492807872,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5764115556358567550" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkMandatoryResult_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnGuidance}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnGuidance" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnSystemError}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnSystemError" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnUserError}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnUserError" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnRegisteredRequest}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnRegisteredRequest" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:TZCheckBox Name="chkMandatoryResult" Content="TZCheckBox" Width="60" Height="20" Margin="81.52117774,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5035113106863757641" Grid.Column="0" Grid.Row="0" cm:DataBinding="dschkMandatoryResult" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="استعلام سوابق تحصیلی">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox37" Width="906" Height="834.51666666666665" ControlID="5508596512104761493" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="797.0333333333333" ControlID="5067820284656959868" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.162369233692*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.168593042549002*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.167856588181507*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.19832400603776*" />
                  <RowDefinition Height="0.26169576376594*" />
                  <RowDefinition Height="0.290397879791883*" />
                  <RowDefinition Height="0.249582350404417*" />
                </Grid.RowDefinitions>
                <cm:TZButton Name="btnSearchRequest" Content="جستجو" Width="99" Height="23" Margin="0,92.1325719999999,21.259259261576,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4861059585292811700" Grid.Column="0" Grid.Row="0" cm:Event="dsEstelam" />
                <cm:tzDataGrid Name="gvSearchRequest" Width="795" Height="553" Margin="0,18.8395061777041,44.87191158,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5383966629826291922" ItemsSource="{Binding ElementName=dsEstelam, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" Grid.RowSpan="3" cm:BindingForm="dsEstelam">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="63" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FirstName" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="FirstName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FirstName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Last_Name" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="Last_Name">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Last_Name}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityCode" DecimalMark="False" HeaderText="کد دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="53" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Average" DecimalMark="False" HeaderText="میانگین" IsRowColorField="False" KeyField="False" SortMemberPath="Average">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Average}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IdentityCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="IdentityCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IdentityCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StudingModeTitle" DecimalMark="False" HeaderText="نوع دوره" IsRowColorField="False" KeyField="False" SortMemberPath="StudingModeTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StudingModeTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldCode" DecimalMark="False" HeaderText="کد رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="122" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EducationStatusCode" DecimalMark="False" HeaderText="کد وضعیت تحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EducationStatusCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EducationStatusCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="118" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EducationStatusTitle" DecimalMark="False" HeaderText="وضعیت تحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EducationStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EducationStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CodeSehat" DecimalMark="False" HeaderText="کد صحت" IsRowColorField="False" KeyField="False" SortMemberPath="CodeSehat">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CodeSehat}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="115" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTypeCode" DecimalMark="False" HeaderText="کد نوع دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTypeCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTypeCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="58" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FieldTitle" DecimalMark="False" HeaderText="رشته" IsRowColorField="False" KeyField="False" SortMemberPath="FieldTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FieldTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EduEndDate" DecimalMark="False" HeaderText="تاریخ فارغ التحصیلی" IsRowColorField="False" KeyField="False" SortMemberPath="EduEndDate">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EduEndDate}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="111" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTypeTitle" DecimalMark="False" HeaderText="نوع دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTypeTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTypeTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LevelCode" DecimalMark="False" HeaderText="کد مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="LevelCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LevelCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="105" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StudingModeCode" DecimalMark="False" HeaderText="کد نوع دوره" IsRowColorField="False" KeyField="False" SortMemberPath="StudingModeCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StudingModeCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EduStartDate" DecimalMark="False" HeaderText="تاریخ شروع تحصیل" IsRowColorField="False" KeyField="False" SortMemberPath="EduStartDate">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EduStartDate}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UniversityTitle" DecimalMark="False" HeaderText="نام دانشگاه" IsRowColorField="False" KeyField="False" SortMemberPath="UniversityTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UniversityTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LevelTitle" DecimalMark="False" HeaderText="مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="LevelTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LevelTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsEstelam" Content="dsEstelam" Width="109.99999999999999" Height="25" Margin="29.492078002745,103.55105803,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397884644294965982" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Search_TBL_CU_CertificateCodeDatas_Log_CallCentre">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsGetWebData" Content="dsGetWebData" Width="109.99999999999999" Height="25" Margin="0,103.55105803,20.8096984472551,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5559703025829467036" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
                <cm:tzTextBox Name="txtWebNationalCode" Width="76" Height="21" Margin="15.8693138984239,70.132572,54.809698447255,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5562947724389907418" Grid.Column="1" Grid.Row="0" cm:IsVisibleItem="False" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="سوابق ثبت تماس">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox44" Width="906" Height="834.51666666666665" ControlID="4782156020744355588" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="884.8424821" Height="797.0333333333333" ControlID="5024359322535636463" Canvas.Left="8" Canvas.Top="8">
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.130457838145059*" />
                  <RowDefinition Height="0.869542161854941*" />
                </Grid.RowDefinitions>
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.163193966807775*" />
                  <ColumnDefinition Width="0.158759699958776*" />
                  <ColumnDefinition Width="0.169049680511658*" />
                  <ColumnDefinition Width="0.169049680511658*" />
                  <ColumnDefinition Width="0.169049680511659*" />
                  <ColumnDefinition Width="0.170897291698474*" />
                </Grid.ColumnDefinitions>
                <cm:TZButton Name="btnSearchCallCentre" Content="جستجو" Width="75" Height="23" Margin="0,50.4223548099996,29.0572792339366,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5574484032700017343" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:Event="dsReadCallCentreLog" />
                <cm:tzDataGrid Name="gvSearchCallCentre" Width="824" Height="596" Margin="0,70.011128303783,23.2013696099999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4697275740538435884" ItemsSource="{Binding ElementName=dsReadCallCentreLog, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" cm:BindingForm="dsReadCallCentreLog">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
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
                    <cm:tzDataGridTemplateColumn Width="87" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubjectDescription" DecimalMark="False" HeaderText="شرح درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="SubjectDescription">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubjectDescription}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubjectTitle" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubjectTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubjectTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="نام کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultDescription" DecimalMark="False" HeaderText="پاسخ نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultDescription">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultDescription}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowUpCode" DecimalMark="False" HeaderText="کد پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowUpCode">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowUpCode}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsReadCallCentreLog" Content="dsReadCallCentre_log" Width="110.00000000000003" Height="25.000000000000014" Margin="57.3854941,170.054904663783,117.492787522911,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5337967067115566899" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getInfoFromCallCentre_frm41614">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetPortalUserID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @PortalUserID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
    </cm:TZTabControl>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/05/18 09:55:54', GUID = '8b227c76-0912-4a0b-b0e7-7b546882276c', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41614" ,"components": [{"value": "","key": "5561996682905433579","label": "chkClearFrequentTopics","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5308468903171495064","label": "chkContactNoFormat","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Result"},{"value": "","key": "4646105748959852975","label": "chkIfMainSubjectChosen","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5500694737592138695","label": "chkIsFollowUpCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4838887523709586221","label": "chkIsNationalCodeNumeric","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4826655505317185487","label": "chkIsUserChosen","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5035113106863757641","label": "chkMandatoryResult","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4807938905471490383","label": "chkNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "result"},{"key": "5023808873728860115","label": "cmbOtherTopics","value": "", "controlType": "dropdown","options":""},{"key": "4709800063438243513","label": "cmbPremadeResponse","value": "", "controlType": "dropdown","options":""},{"key":"5471135955294073263" , "dataSourceName":"dschkClearFrequentTopics" , "controlType": "datasource",  "selectQuery" :"sp_cu_ClearFrequentTopics_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4814200733195338273" , "dataSourceName":"dschkContactNoFormat" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Check_ValidMobileNumber" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4984913755416484071" , "dataSourceName":"dschkIfMainSubjectChosen" , "controlType": "datasource",  "selectQuery" :"exec sp_cu_chkIfMainSubjectChosen_frm41614 {@txtMainTopicResult}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5159191487688914633" , "dataSourceName":"dschkIsFollowUpCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIsFollowUpCodeNumeric_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5682520070876983841" , "dataSourceName":"dschkIsNationalCodeNumeric" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIsNationalCodeNumeric_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5128459709351283603" , "dataSourceName":"dschkIsUserChosen" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkIfUserChosen_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5764115556358567550" , "dataSourceName":"dschkMandatoryResult" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkMandatoryResult_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5348376631426468169" , "dataSourceName":"dschkNationalCode" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckNationalCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5397884644294965982" , "dataSourceName":"dsEstelam" , "controlType": "datasource",  "selectQuery" :"SP_CU_Search_TBL_CU_CertificateCodeDatas_Log_CallCentre" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4757561933949131916" , "dataSourceName":"dsGetCurrentUser" , "controlType": "datasource",  "selectQuery" :"select (@UserID) UserID" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5559703025829467036" , "dataSourceName":"dsGetWebData" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5214589721348424865" , "dataSourceName":"dsLoadInfo" , "controlType": "datasource",  "selectQuery" :"sp_cu_LoadInfo_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5178065844773378524" , "dataSourceName":"dsMainTopicResult" , "controlType": "datasource",  "selectQuery" :"sp_cu_getMainTopicResult_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5530718118038148526" , "dataSourceName":"dsOtherTopics" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetMainSubject_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4977130100283707340" , "dataSourceName":"dsPremadeResponses" , "controlType": "datasource",  "selectQuery" :"sp_cu_gvPremadeResponses_frm41606" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5337967067115566899" , "dataSourceName":"dsReadCallCentreLog" , "controlType": "datasource",  "selectQuery" :"sp_cu_getInfoFromCallCentre_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4869643686872092938" , "dataSourceName":"dsRelatedWFID" , "controlType": "datasource",  "selectQuery" :"select {@gvRegisteredWF}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5207418306527903405" , "dataSourceName":"dsSelectPremadeAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4917056251901359528" , "dataSourceName":"dsTicketsFromQuestionAnswer" , "controlType": "datasource",  "selectQuery" :"sp_cu_getTicketsListsFrom_QuestionAnswer_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4669755028355477416" , "dataSourceName":"dsWorkflowFromDashboard" , "controlType": "datasource",  "selectQuery" :"sp_cu_getWorkFlowListFrom_DashBoard_frm41614" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5639456084995486972","label": "txtContactNo","controlType": "textbox", "type": "" , "DataBindingField" : "Mobile"},{"value": "","key": "4699420598710485446","label": "txtCurrentUser","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4929762884074901527","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : "res"},{"value": "","key": "5157668540547016625","label": "txtGetPortalUserID","controlType": "textbox", "type": "" , "DataBindingField" : "UserID"},{"value": "","key": "4878731099635972323","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : "LastName"},{"value": "","key": "5252272654235027560","label": "txtMainTopicResult","controlType": "textbox", "type": "" , "DataBindingField" : "MainTopicResult"},{"value": "","key": "5015109671430041049","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : "FirstName"},{"value": "","key": "5718928631750974967","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : "NationalCode"},{"value": "$CurrentUserId","key": "4941204978461054497","label": "txtRegUser","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704821534341723680","label": "txtRelatedWF","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5577593720855528687","label": "txtResultDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5201950943389170313","label": "txtSubjectDescription","controlType": "textbox", "type": "" , "DataBindingField" : "Response"},{"value": "","key": "5562947724389907418","label": "txtWebNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "4655287268986225047","data": [{"key": "5201950943389170313","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5577593720855528687","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',DefaultCulture = NULL  WHERE FormId = 41614
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41614') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41614] ( [frm41614Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5718928631750974967]  [nvarchar] ( 10) NULL , [Col_5015109671430041049]  [nvarchar] ( 50) NULL , [Col_4878731099635972323]  [nvarchar] ( 50) NULL , [Col_5639456084995486972]  [nvarchar] ( 50) NULL , [Col_5201950943389170313]  [nvarchar] ( 500) NULL , [Col_5704821534341723680]  [nvarchar] ( 50) NULL , [Col_5577593720855528687]  [nvarchar] ( 500) NULL , [Col_5023808873728860115]  [nvarchar] ( 50) NULL , [Col_4669561737145455733]  [bit] NULL , [Col_5554754662913942396]  [bit] NULL , [Col_5147703354148026239]  [bit] NULL , [Col_5277225740029483546]  [bit] NULL , [Col_5085479191938738428]  [bit] NULL , [Col_4680749092622027115]  [bit] NULL , [Col_5219106803957463407]  [bit] NULL , [Col_5190006649273867614]  [bit] NULL , [Col_5622112977338097565]  [bit] NULL , [Col_4709800063438243513]  [nvarchar] ( 50) NULL , [Col_4929762884074901527]  [nvarchar] ( 50) NULL , [Col_5561996682905433579]  [bit] NULL , [Col_4941204978461054497]  [nvarchar] ( 50) NULL , [Col_5252272654235027560]  [nvarchar] ( 50) NULL , [Col_5308468903171495064]  [bit] NULL , [Col_4807938905471490383]  [bit] NULL , [Col_4699420598710485446]  [nvarchar] ( 50) NULL , [Col_5157668540547016625]  [nvarchar] ( 50) NULL , [Col_4826655505317185487]  [bit] NULL , [Col_5562947724389907418]  [nvarchar] ( 50) NULL , [Col_4646105748959852975]  [bit] NULL , [Col_5035113106863757641]  [bit] NULL , [Col_4838887523709586221]  [bit] NULL , [Col_5500694737592138695]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm41614Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'frm41614Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD frm41614Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5718928631750974967' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5718928631750974967 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5015109671430041049' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5015109671430041049 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4878731099635972323' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4878731099635972323 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5639456084995486972' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5639456084995486972 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5201950943389170313' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5201950943389170313 nvarchar (500) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5704821534341723680' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5704821534341723680 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5577593720855528687' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5577593720855528687 nvarchar (500) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5023808873728860115' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5023808873728860115 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4669561737145455733' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4669561737145455733 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5554754662913942396' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5554754662913942396 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5147703354148026239' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5147703354148026239 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5277225740029483546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5277225740029483546 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5085479191938738428' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5085479191938738428 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4680749092622027115' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4680749092622027115 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5219106803957463407' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5219106803957463407 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5190006649273867614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5190006649273867614 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5622112977338097565' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5622112977338097565 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4709800063438243513' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4709800063438243513 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4929762884074901527' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4929762884074901527 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5561996682905433579' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5561996682905433579 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4941204978461054497' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4941204978461054497 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5252272654235027560' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5252272654235027560 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5308468903171495064' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5308468903171495064 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4807938905471490383' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4807938905471490383 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4699420598710485446' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4699420598710485446 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5157668540547016625' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5157668540547016625 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4826655505317185487' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4826655505317185487 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5562947724389907418' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5562947724389907418 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4646105748959852975' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4646105748959852975 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5035113106863757641' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5035113106863757641 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_4838887523709586221' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_4838887523709586221 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41614' AND COLUMN_NAME = 'Col_5500694737592138695' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41614] ADD Col_5500694737592138695 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41614]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41614
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41614] ( @PKFormId as bigint OUTPUT ,  @Col_5718928631750974967 AS nvarchar(10),  @Col_5015109671430041049 AS nvarchar(50),  @Col_4878731099635972323 AS nvarchar(50),  @Col_5639456084995486972 AS nvarchar(50),  @Col_5201950943389170313 AS nvarchar(500),  @Col_5704821534341723680 AS nvarchar(50),  @Col_5577593720855528687 AS nvarchar(500),  @Col_5023808873728860115 AS nvarchar(50),  @Col_4669561737145455733 AS bit,  @Col_5554754662913942396 AS bit,  @Col_5147703354148026239 AS bit,  @Col_5277225740029483546 AS bit,  @Col_5085479191938738428 AS bit,  @Col_4680749092622027115 AS bit,  @Col_5219106803957463407 AS bit,  @Col_5190006649273867614 AS bit,  @Col_5622112977338097565 AS bit,  @Col_4709800063438243513 AS nvarchar(50),  @Col_4929762884074901527 AS nvarchar(50),  @Col_5561996682905433579 AS bit,  @Col_4941204978461054497 AS nvarchar(50),  @Col_5252272654235027560 AS nvarchar(50),  @Col_5308468903171495064 AS bit,  @Col_4807938905471490383 AS bit,  @Col_4699420598710485446 AS nvarchar(50),  @Col_5157668540547016625 AS nvarchar(50),  @Col_4826655505317185487 AS bit,  @Col_5562947724389907418 AS nvarchar(50),  @Col_4646105748959852975 AS bit,  @Col_5035113106863757641 AS bit,  @Col_4838887523709586221 AS bit,  @Col_5500694737592138695 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41614](Col_5718928631750974967,Col_5015109671430041049,Col_4878731099635972323,Col_5639456084995486972,Col_5201950943389170313,Col_5704821534341723680,Col_5577593720855528687,Col_5023808873728860115,Col_4669561737145455733,Col_5554754662913942396,Col_5147703354148026239,Col_5277225740029483546,Col_5085479191938738428,Col_4680749092622027115,Col_5219106803957463407,Col_5190006649273867614,Col_5622112977338097565,Col_4709800063438243513,Col_4929762884074901527,Col_5561996682905433579,Col_4941204978461054497,Col_5252272654235027560,Col_5308468903171495064,Col_4807938905471490383,Col_4699420598710485446,Col_5157668540547016625,Col_4826655505317185487,Col_5562947724389907418,Col_4646105748959852975,Col_5035113106863757641,Col_4838887523709586221,Col_5500694737592138695) VALUES ( @Col_5718928631750974967,@Col_5015109671430041049,@Col_4878731099635972323,@Col_5639456084995486972,@Col_5201950943389170313,@Col_5704821534341723680,@Col_5577593720855528687,@Col_5023808873728860115,@Col_4669561737145455733,@Col_5554754662913942396,@Col_5147703354148026239,@Col_5277225740029483546,@Col_5085479191938738428,@Col_4680749092622027115,@Col_5219106803957463407,@Col_5190006649273867614,@Col_5622112977338097565,@Col_4709800063438243513,@Col_4929762884074901527,@Col_5561996682905433579,@Col_4941204978461054497,@Col_5252272654235027560,@Col_5308468903171495064,@Col_4807938905471490383,@Col_4699420598710485446,@Col_5157668540547016625,@Col_4826655505317185487,@Col_5562947724389907418,@Col_4646105748959852975,@Col_5035113106863757641,@Col_4838887523709586221,@Col_5500694737592138695 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41614]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41614
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41614] ( @PKFormId as bigint OUTPUT ,  @Col_5718928631750974967 AS nvarchar(10),  @Col_5015109671430041049 AS nvarchar(50),  @Col_4878731099635972323 AS nvarchar(50),  @Col_5639456084995486972 AS nvarchar(50),  @Col_5201950943389170313 AS nvarchar(500),  @Col_5704821534341723680 AS nvarchar(50),  @Col_5577593720855528687 AS nvarchar(500),  @Col_5023808873728860115 AS nvarchar(50),  @Col_4669561737145455733 AS bit,  @Col_5554754662913942396 AS bit,  @Col_5147703354148026239 AS bit,  @Col_5277225740029483546 AS bit,  @Col_5085479191938738428 AS bit,  @Col_4680749092622027115 AS bit,  @Col_5219106803957463407 AS bit,  @Col_5190006649273867614 AS bit,  @Col_5622112977338097565 AS bit,  @Col_4709800063438243513 AS nvarchar(50),  @Col_4929762884074901527 AS nvarchar(50),  @Col_5561996682905433579 AS bit,  @Col_4941204978461054497 AS nvarchar(50),  @Col_5252272654235027560 AS nvarchar(50),  @Col_5308468903171495064 AS bit,  @Col_4807938905471490383 AS bit,  @Col_4699420598710485446 AS nvarchar(50),  @Col_5157668540547016625 AS nvarchar(50),  @Col_4826655505317185487 AS bit,  @Col_5562947724389907418 AS nvarchar(50),  @Col_4646105748959852975 AS bit,  @Col_5035113106863757641 AS bit,  @Col_4838887523709586221 AS bit,  @Col_5500694737592138695 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41614] SET Col_5718928631750974967 =  @Col_5718928631750974967, Col_5015109671430041049 =  @Col_5015109671430041049, Col_4878731099635972323 =  @Col_4878731099635972323, Col_5639456084995486972 =  @Col_5639456084995486972, Col_5201950943389170313 =  @Col_5201950943389170313, Col_5704821534341723680 =  @Col_5704821534341723680, Col_5577593720855528687 =  @Col_5577593720855528687, Col_5023808873728860115 =  @Col_5023808873728860115, Col_4669561737145455733 =  @Col_4669561737145455733, Col_5554754662913942396 =  @Col_5554754662913942396, Col_5147703354148026239 =  @Col_5147703354148026239, Col_5277225740029483546 =  @Col_5277225740029483546, Col_5085479191938738428 =  @Col_5085479191938738428, Col_4680749092622027115 =  @Col_4680749092622027115, Col_5219106803957463407 =  @Col_5219106803957463407, Col_5190006649273867614 =  @Col_5190006649273867614, Col_5622112977338097565 =  @Col_5622112977338097565, Col_4709800063438243513 =  @Col_4709800063438243513, Col_4929762884074901527 =  @Col_4929762884074901527, Col_5561996682905433579 =  @Col_5561996682905433579, Col_4941204978461054497 =  @Col_4941204978461054497, Col_5252272654235027560 =  @Col_5252272654235027560, Col_5308468903171495064 =  @Col_5308468903171495064, Col_4807938905471490383 =  @Col_4807938905471490383, Col_4699420598710485446 =  @Col_4699420598710485446, Col_5157668540547016625 =  @Col_5157668540547016625, Col_4826655505317185487 =  @Col_4826655505317185487, Col_5562947724389907418 =  @Col_5562947724389907418, Col_4646105748959852975 =  @Col_4646105748959852975, Col_5035113106863757641 =  @Col_5035113106863757641, Col_4838887523709586221 =  @Col_4838887523709586221, Col_5500694737592138695 =  @Col_5500694737592138695 WHERE [frm41614Id] = @PKFormId 
 END 
GO
