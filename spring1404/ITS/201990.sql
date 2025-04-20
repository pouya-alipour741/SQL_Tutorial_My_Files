GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 201990) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (201990, N'Shahin-TicketVeiw',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1338" Height="1211.72333333" Background="White">
  <Canvas Width="1255" Height="1079">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5050956195802644306</ID>
        <Name>اعتبارسنجی برای تاریخ</Name>
        <Condition>({@chbMandatoryForDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار تاریخ وارد شده معتبر نمیباشد.                                                                                                             تاریخ شروع نباید از تاریخ پایان بزرگتر و تاریخ پایان نباید از تاریخ شروع کوچکتر باشد.  امکان ثبت تاریخ بزرگتر ار روز جاری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4703328241842357957</ComponentID>
            <ComponentName>chbMandatoryForDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4668412289418309231</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox58" Width="1222.37762238" Height="597" ControlID="5071541115535471123" Canvas.Left="17" Canvas.Top="15.62237762" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1187" Height="559.51666667" ControlID="5535138743383313602" Canvas.Left="15.37762238" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.16064538490945*" />
            <ColumnDefinition Width="0.16523215943421*" />
            <ColumnDefinition Width="0.166694390933629*" />
            <ColumnDefinition Width="0.17108108543188*" />
            <ColumnDefinition Width="0.166694390933629*" />
            <ColumnDefinition Width="0.169652588357202*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.25491178393004*" />
            <RowDefinition Height="0.247262526993861*" />
            <RowDefinition Height="0.250506237878579*" />
            <RowDefinition Height="0.24731945119752*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,15.6947237966663,14.7596784533337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="15.259719623332,58.4423873466666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" Margin="0,8,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5126414657779673565" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="163.81666667" Height="20" Margin="101.464227175857,8,135.658596600002,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5459814118812540729" FontFamily="Tahoma" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
          <cm:PDatePicker Name="CurrDate" Width="120" Height="20" Margin="162.801059584075,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4950588884094236537" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="151.7916319166666" Height="20" Margin="2.0094276674086,8,44.0651824541424,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4703328241842357957" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" Margin="42.4200009191489,3,6.99057233259146,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5311538154545928717" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
          <cm:tzLabel Name="Lable26" Content=":مشتری" Width="52.773333333333333" Height="24.483333333333334" Margin="0,42,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="174.04010829" Height="22" Margin="0,75.48333333,16.6585966000011,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="9.43431210488188,49.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
          <cm:tzLabel Name="Lable55" Content=":نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,42.0000000000001,5.91855022511766,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="191.81666666999982" Height="22" Margin="5.33803151252414,67.4833333333334,5.91855022511766,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="13.5013648491906,49.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
          <cm:tzLabel Name="Lable44" Content=":گروه ثبت کننده " Width="98.22666667" Height="24.48333333" Margin="0,42.0000000033334,6.91441277747538,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="168.79163192" Height="22" Margin="0,75.48333333,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" Margin="1.5223157140756,80.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
          <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="82.176666666666677" Height="24.483333333333334" Margin="0,42.0000000000001,14.6893453959247,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="42.4200009191488,84.4833333300002,33.7105723292584,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable30" Content=":کد " Width="30.303333333333335" Height="24.483333333333334" Margin="0,58.9999999966669,17.0835184241844,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="165.60255346333275" Height="22.000000000000004" Margin="8,0,0,28.144058309439" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable43" Content=":زیرسرویس" Width="67.610000000000014" Height="24.483333333333334" Margin="0,23.1186561572271,14.7596784533339,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="171.35822430666698" Height="22" Margin="0,75.3299022505608,14.7596784500001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" Margin="8.00794392666478,56.6019894905606,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,23.1186561572272,12.0152632666689,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="176.41666666333447" Height="22" Margin="0,66.6263197105608,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909725041652514354" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153.00000000000003" Height="24.999999999999993" Margin="9.43431210488188,49.3299022505608,35.4319299333357,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5012879529886775460" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
          <cm:tzLabel Name="Lable25" Content=":Ticket وضعیت" Width="84.933333333333337" Height="24.483333333333334" Margin="0,31.1186561572273,5.91855022511754,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="120" Height="22" Margin="46.0745994791912,75.3299022505608,36.9986489284504,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="25.3861000491906,0,0,56.7455154054454" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
          <cm:tzLabel Name="Lable27" Content=":نوع تیکت" Width="59.146666666666668" Height="24.483333333333334" Margin="0,31.1186561572273,27.3927636141424,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5288146048034297512" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="Cmbrequst" Width="168.79163191999996" Height="22" Margin="0,75.3299022505608,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4998721771557464900" Grid.Column="2" Grid.Row="1" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
          <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" Margin="14.3268117574086,56.6019894905606,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5536746931098071987" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
          <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="123.326222295816,41.1429863772273,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="168.81666667" Height="22" Margin="0,75.3299022505608,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5610629158270476969" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="4.32622229581614,63.6263197105607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
          <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,18.9876154245543,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="36.4144025466654,0,44.9632198333334,34.08933247331" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="5" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" Margin="0,20.4709487578876,21.8223575833346,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="0,0,26.9158155333339,34.0893324733099" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="4" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور از" Width="87.63666666666667" Height="24.483333333333334" Margin="0,18.9876154245542,5.91855022511731,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" Margin="0,11.1383127845551,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" Margin="56.5180315158575,0,0,34.0893324733099" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="3" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" Margin="45.307677170742,0,0,34.0893324733098" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable51" Content=":نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,6.99057233259151,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5014580280989272697" />
          <cm:tzLookUpComboBox Name="cmbResultStatus" Width="168.81666667000002" Height="22" Margin="0,77.6616811245547,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="1" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25" Margin="4.32622229581614,60.0730827245546,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5276806715386994728" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
          <cm:tzLabel Name="Lable53" Content=":نتیجه ارجاع" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,9.95617015751753,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" cm:ControlID="5143055274979120562" />
          <cm:tzLookUpComboBox Name="cmbResultRefer" Width="153.38598506999938" Height="22" Margin="14.3805247800001,77.6616811245548,22.9195620375177,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" Grid.Column="0" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5669998775928739483" cm:DataBinding="dsResulStatusRefer" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25" Margin="14.3805247800002,60.0730827245548,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278696751676114572" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" Margin="46.0745994791912,68.8762919600233,43.1114929684504,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
          <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114" Height="23.000000000000007" Margin="39.8010595840752,68.8762919600232,44.0651824541424,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4710686342849233362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox59" Width="1222.37762238" Height="337" ControlID="5259129674540383107" FontFamily="Tahoma" Canvas.Left="17" Canvas.Top="631.21875291" cm:Header="">
      <Canvas>
        <cm:Grid Width="1189" Height="299.51666667" ControlID="5059407049525411242" Canvas.Left="13.37762238" Canvas.Top="8">
          <cm:tzDataGrid Name="grvSM" Width="1042.0000000000002" Height="241.48138561000002" Margin="93.6426279000001,28.82802548,53.3573720999998,29.20725558" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROW_NUMBER" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROW_NUMBER">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROW_NUMBER}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketNo}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketType">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketType}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerName" DecimalMark="False" HeaderText="مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerCode" DecimalMark="False" HeaderText="کد مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubServiceName" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubServiceName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubServiceName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTitle" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemTitle">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTitle}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredGroup" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ACTION" DecimalMark="False" HeaderText="اقدامات" IsRowColorField="False" KeyField="False" SortMemberPath="ACTION">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ACTION}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatus" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatusRefer" DecimalMark="False" HeaderText="نتیجه ارجاع" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatusRefer">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatusRefer}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="109.99999999999997" Height="24.999999999999972" Margin="121.4961311,200.14699071,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/04/20 15:07:34', 'e2e140ed-de38-4f0b-af2d-574db3a47549', 0, N'', N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "5669998775928739483","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'Shahin-TicketVeiw',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1338" Height="1211.72333333" Background="White">
  <Canvas Width="1255" Height="1079">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5050956195802644306</ID>
        <Name>اعتبارسنجی برای تاریخ</Name>
        <Condition>({@chbMandatoryForDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار تاریخ وارد شده معتبر نمیباشد.                                                                                                             تاریخ شروع نباید از تاریخ پایان بزرگتر و تاریخ پایان نباید از تاریخ شروع کوچکتر باشد.  امکان ثبت تاریخ بزرگتر ار روز جاری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4703328241842357957</ComponentID>
            <ComponentName>chbMandatoryForDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4668412289418309231</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox58" Width="1222.37762238" Height="597" ControlID="5071541115535471123" Canvas.Left="17" Canvas.Top="15.62237762" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1187" Height="559.51666667" ControlID="5535138743383313602" Canvas.Left="15.37762238" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.16064538490945*" />
            <ColumnDefinition Width="0.16523215943421*" />
            <ColumnDefinition Width="0.166694390933629*" />
            <ColumnDefinition Width="0.17108108543188*" />
            <ColumnDefinition Width="0.166694390933629*" />
            <ColumnDefinition Width="0.169652588357202*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.25491178393004*" />
            <RowDefinition Height="0.247262526993861*" />
            <RowDefinition Height="0.250506237878579*" />
            <RowDefinition Height="0.24731945119752*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,15.6947237966663,14.7596784533337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="15.259719623332,58.4423873466666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" Margin="0,8,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5126414657779673565" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="163.81666667" Height="20" Margin="101.464227175857,8,135.658596600002,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5459814118812540729" FontFamily="Tahoma" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
          <cm:PDatePicker Name="CurrDate" Width="120" Height="20" Margin="162.801059584075,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4950588884094236537" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="151.7916319166666" Height="20" Margin="2.0094276674086,8,44.0651824541424,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4703328241842357957" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" Margin="42.4200009191489,3,6.99057233259146,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5311538154545928717" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
          <cm:tzLabel Name="Lable26" Content=":مشتری" Width="52.773333333333333" Height="24.483333333333334" Margin="0,42,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="174.04010829" Height="22" Margin="0,75.48333333,16.6585966000011,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="9.43431210488188,49.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
          <cm:tzLabel Name="Lable55" Content=":نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,42.0000000000001,5.91855022511766,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="191.81666666999982" Height="22" Margin="5.33803151252414,67.4833333333334,5.91855022511766,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="13.5013648491906,49.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
          <cm:tzLabel Name="Lable44" Content=":گروه ثبت کننده " Width="98.22666667" Height="24.48333333" Margin="0,42.0000000033334,6.91441277747538,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="168.79163192" Height="22" Margin="0,75.48333333,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" Margin="1.5223157140756,80.4833333300001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
          <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="82.176666666666677" Height="24.483333333333334" Margin="0,42.0000000000001,14.6893453959247,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="42.4200009191488,84.4833333300002,33.7105723292584,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable30" Content=":کد " Width="30.303333333333335" Height="24.483333333333334" Margin="0,58.9999999966669,17.0835184241844,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="165.60255346333275" Height="22.000000000000004" Margin="8,0,0,28.144058309439" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable43" Content=":زیرسرویس" Width="67.610000000000014" Height="24.483333333333334" Margin="0,23.1186561572271,14.7596784533339,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="171.35822430666698" Height="22" Margin="0,75.3299022505608,14.7596784500001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" Margin="8.00794392666478,56.6019894905606,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,23.1186561572272,12.0152632666689,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="176.41666666333447" Height="22" Margin="0,66.6263197105608,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909725041652514354" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153.00000000000003" Height="24.999999999999993" Margin="9.43431210488188,49.3299022505608,35.4319299333357,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5012879529886775460" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
          <cm:tzLabel Name="Lable25" Content=":Ticket وضعیت" Width="84.933333333333337" Height="24.483333333333334" Margin="0,31.1186561572273,5.91855022511754,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="120" Height="22" Margin="46.0745994791912,75.3299022505608,36.9986489284504,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="25.3861000491906,0,0,56.7455154054454" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
          <cm:tzLabel Name="Lable27" Content=":نوع تیکت" Width="59.146666666666668" Height="24.483333333333334" Margin="0,31.1186561572273,27.3927636141424,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5288146048034297512" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="Cmbrequst" Width="168.79163191999996" Height="22" Margin="0,75.3299022505608,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4998721771557464900" Grid.Column="2" Grid.Row="1" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
          <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" Margin="14.3268117574086,56.6019894905606,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5536746931098071987" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
          <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="123.326222295816,41.1429863772273,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="168.81666667" Height="22" Margin="0,75.3299022505608,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5610629158270476969" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="4.32622229581614,63.6263197105607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
          <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,18.9876154245543,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="36.4144025466654,0,44.9632198333334,34.08933247331" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="5" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" Margin="0,20.4709487578876,21.8223575833346,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="0,0,26.9158155333339,34.0893324733099" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="4" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور از" Width="87.63666666666667" Height="24.483333333333334" Margin="0,18.9876154245542,5.91855022511731,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" Margin="0,11.1383127845551,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" Margin="56.5180315158575,0,0,34.0893324733099" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="3" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" Margin="45.307677170742,0,0,34.0893324733098" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable51" Content=":نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,6.99057233259151,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5014580280989272697" />
          <cm:tzLookUpComboBox Name="cmbResultStatus" Width="168.81666667000002" Height="22" Margin="0,77.6616811245547,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="1" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25" Margin="4.32622229581614,60.0730827245546,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5276806715386994728" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
          <cm:tzLabel Name="Lable53" Content=":نتیجه ارجاع" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,9.95617015751753,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" cm:ControlID="5143055274979120562" />
          <cm:tzLookUpComboBox Name="cmbResultRefer" Width="153.38598506999938" Height="22" Margin="14.3805247800001,77.6616811245548,22.9195620375177,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" Grid.Column="0" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5669998775928739483" cm:DataBinding="dsResulStatusRefer" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25" Margin="14.3805247800002,60.0730827245548,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278696751676114572" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" Margin="46.0745994791912,68.8762919600233,43.1114929684504,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
          <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114" Height="23.000000000000007" Margin="39.8010595840752,68.8762919600232,44.0651824541424,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4710686342849233362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox59" Width="1222.37762238" Height="337" ControlID="5259129674540383107" FontFamily="Tahoma" Canvas.Left="17" Canvas.Top="631.21875291" cm:Header="">
      <Canvas>
        <cm:Grid Width="1189" Height="299.51666667" ControlID="5059407049525411242" Canvas.Left="13.37762238" Canvas.Top="8">
          <cm:tzDataGrid Name="grvSM" Width="1042.0000000000002" Height="241.48138561000002" Margin="93.6426279000001,28.82802548,53.3573720999998,29.20725558" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROW_NUMBER" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROW_NUMBER">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROW_NUMBER}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketNo}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketType">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketType}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerName" DecimalMark="False" HeaderText="مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerCode" DecimalMark="False" HeaderText="کد مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubServiceName" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubServiceName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubServiceName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTitle" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemTitle">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTitle}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredGroup" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ACTION" DecimalMark="False" HeaderText="اقدامات" IsRowColorField="False" KeyField="False" SortMemberPath="ACTION">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ACTION}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatus" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatusRefer" DecimalMark="False" HeaderText="نتیجه ارجاع" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatusRefer">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatusRefer}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="109.99999999999997" Height="24.999999999999972" Margin="121.4961311,200.14699071,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/20 15:07:34', GUID = 'e2e140ed-de38-4f0b-af2d-574db3a47549', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "5669998775928739483","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201990
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm201990') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm201990] ( [frm201990Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [bigint] NULL , [Col_5081194363345449817]  [nvarchar] ( 50) NULL , [Col_5053119443844496676]  [int] NULL , [Col_5206205529288027938]  [nvarchar] ( 50) NULL , [Col_4866769076819097450]  [nvarchar] ( 50) NULL , [Col_5172994599657882546]  [nvarchar] ( 50) NULL , [Col_5610629158270476969]  [nvarchar] ( 50) NULL , [Col_4909725041652514354]  [nvarchar] ( 50) NULL , [Col_4854957732111386219]  [nvarchar] ( 50) NULL , [Col_5634760713754507600]  [nvarchar] ( 50) NULL , [Col_4998721771557464900]  [int] NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_4688435891586898475]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4995912702823116106]  [nvarchar] ( 5) NULL , [Col_4703328241842357957]  [bit] NULL , [Col_4950588884094236537]  [nvarchar] ( 10) NULL , [Col_4884950633172409629]  [int] NULL , [Col_5669998775928739483]  [int] NULL , [Col_5459814118812540729]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm201990Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'frm201990Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD frm201990Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4720739133189081212' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4720739133189081212 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5081194363345449817' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5081194363345449817 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5053119443844496676' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5053119443844496676 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5206205529288027938' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5206205529288027938 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4866769076819097450' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4866769076819097450 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5172994599657882546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5172994599657882546 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5610629158270476969' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5610629158270476969 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4909725041652514354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4909725041652514354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4854957732111386219' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4854957732111386219 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5634760713754507600' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5634760713754507600 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4998721771557464900' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4998721771557464900 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4895068962898797083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4895068962898797083 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4688435891586898475' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4688435891586898475 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5474774259234621899' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5474774259234621899 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4995912702823116106' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4995912702823116106 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4703328241842357957' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4703328241842357957 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4950588884094236537' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4950588884094236537 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4884950633172409629' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4884950633172409629 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5669998775928739483' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5669998775928739483 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5459814118812540729' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5459814118812540729 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5669998775928739483 AS int,  @Col_5459814118812540729 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm201990](Col_4720739133189081212,Col_5081194363345449817,Col_5053119443844496676,Col_5206205529288027938,Col_4866769076819097450,Col_5172994599657882546,Col_5610629158270476969,Col_4909725041652514354,Col_4854957732111386219,Col_5634760713754507600,Col_4998721771557464900,Col_4895068962898797083,Col_4688435891586898475,Col_5474774259234621899,Col_4995912702823116106,Col_4703328241842357957,Col_4950588884094236537,Col_4884950633172409629,Col_5669998775928739483,Col_5459814118812540729) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_5053119443844496676,@Col_5206205529288027938,@Col_4866769076819097450,@Col_5172994599657882546,@Col_5610629158270476969,@Col_4909725041652514354,@Col_4854957732111386219,@Col_5634760713754507600,@Col_4998721771557464900,@Col_4895068962898797083,@Col_4688435891586898475,@Col_5474774259234621899,@Col_4995912702823116106,@Col_4703328241842357957,@Col_4950588884094236537,@Col_4884950633172409629,@Col_5669998775928739483,@Col_5459814118812540729 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5669998775928739483 AS int,  @Col_5459814118812540729 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm201990] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_5053119443844496676 =  @Col_5053119443844496676, Col_5206205529288027938 =  @Col_5206205529288027938, Col_4866769076819097450 =  @Col_4866769076819097450, Col_5172994599657882546 =  @Col_5172994599657882546, Col_5610629158270476969 =  @Col_5610629158270476969, Col_4909725041652514354 =  @Col_4909725041652514354, Col_4854957732111386219 =  @Col_4854957732111386219, Col_5634760713754507600 =  @Col_5634760713754507600, Col_4998721771557464900 =  @Col_4998721771557464900, Col_4895068962898797083 =  @Col_4895068962898797083, Col_4688435891586898475 =  @Col_4688435891586898475, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4995912702823116106 =  @Col_4995912702823116106, Col_4703328241842357957 =  @Col_4703328241842357957, Col_4950588884094236537 =  @Col_4950588884094236537, Col_4884950633172409629 =  @Col_4884950633172409629, Col_5669998775928739483 =  @Col_5669998775928739483, Col_5459814118812540729 =  @Col_5459814118812540729 WHERE [frm201990Id] = @PKFormId 
 END 
GO
