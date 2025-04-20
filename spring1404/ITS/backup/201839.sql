GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 201839) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (201839, N'BPR VSAT View',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" Width="1234" Height="623.44666667" Background="White">
  <Canvas Width="1200" Height="600">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox46" Width="1184" Height="584" Background="#FFBFCDDB" BorderBrush="#FF3399FF" ControlID="5702648365697578606" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="1156" Height="160.20666666" BorderBrush="#FF3399FF" ControlID="5166982797303511414" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="جستجو بر اساس">
          <Canvas>
            <cm:tzLabel Name="Lable8" Content="تاریخ از" ControlID="4760747404024124304" FontFamily="Tahoma" Canvas.Left="1057.3033333333333" Canvas.Top="-1.4833333333332917" />
            <cm:tzLabel Name="Lable11" Content="تا" ControlID="5240352845304954624" FontFamily="Tahoma" Canvas.Left="940.5033333333331" Canvas.Top="0.51666666666654137" />
            <cm:PDatePicker Name="pcFromDate" Width="120" Height="20" ControlID="5181499922404295787" TabIndex="1" Canvas.Left="965.833333333333" Canvas.Top="2.0333333333323402" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable28" Content="بانک" ControlID="5040226040766687963" FontFamily="Tahoma" Canvas.Left="773.77999999999963" Canvas.Top="-3.2100000000011164" />
            <cm:tzLabel Name="Lable30" Content="استان" ControlID="4962844059786634947" FontFamily="Tahoma" Canvas.Left="772.44" Canvas.Top="22.31000000333259" />
            <cm:tzLabel Name="Lable59" Content="شهر" ControlID="5432204195071583342" Canvas.Left="772.41999999999973" Canvas.Top="77.121666679998782" />
            <cm:tzLookUpComboBox Name="cmbProvince" Width="247" Height="22" ControlID="4935142266626503991" Canvas.Left="525.24999999666636" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsTown,dsCity" cm:TabIndex="6" cm:tzDisplayItem="Name" cm:tzValueItem="ProvinceId" />
            <cm:tzLookUpComboBox Name="cmbCity" Width="247" Height="22" ControlID="5361447700624157680" Canvas.Left="525.24999999666647" Canvas.Top="79.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:TabIndex="8" cm:tzDisplayItem="CityName" cm:tzValueItem="CityId" />
            <cm:PDatePicker Name="ptToDate" Width="120" Height="20" ControlID="5094242323863844211" TabIndex="2" Canvas.Left="852.40999999999985" Canvas.Top="1.9999999999996057" cm:DefaultValue="$CurrentDate" />
            <cm:tzLookUpComboBox Name="cmbBank" Width="247" Height="22" ControlID="5509524007198657218" Canvas.Left="525.24999999666636" Canvas.Top="-0.7266666666676258" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataBindingField="Customerkey" cm:TabIndex="3" cm:tzDisplayItem="CustomerName" cm:tzValueItem="Customerkey" />
            <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" ControlID="4920230569762664582" Canvas.Left="559.41" Canvas.Top="-1.2066666700000042" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" />
            <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" ControlID="5430619111372109902" Canvas.Left="559.41" Canvas.Top="24.605000006666103" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" />
            <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="25" ControlID="5009463879945094326" Canvas.Left="559.41" Canvas.Top="76.605000009999515" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" />
            <cm:tzLabel Name="Lable32" Content="کد شعبه" ControlID="5202855161479270559" FontFamily="Tahoma" Canvas.Left="411.30999999999995" Canvas.Top="-3.2100000000011164" />
            <cm:tzTextBox Name="txtBranchCode" Width="63" Height="21" ControlID="4857410465110087981" FontWeight="SemiBold" Foreground="#FFFC0505" Canvas.Left="343.89298267666595" Canvas.Top="-0.7266666666676258" cm:Len="8" cm:TabIndex="4" />
            <cm:tzTextBox Name="txtVsatCode" Width="98.103333329999188" Height="21" ControlID="5675084375244981955" FontWeight="SemiBold" Foreground="#FFFC0505" Canvas.Left="159.89298267666595" Canvas.Top="-0.7266666666676258" cm:Len="15" cm:TabIndex="5" />
            <cm:tzLabel Name="Lable3031" Content="کد پایانه فضایی" ControlID="4853228287717037392" FontFamily="Tahoma" Canvas.Left="256.40648853000016" Canvas.Top="-3.2100000000011164" />
            <cm:tzLabel Name="Lable66" Content="شهرستان" ControlID="5305789425836294089" FontFamily="Tahoma" Canvas.Left="772.41999999999973" Canvas.Top="52.328333343332872" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbTown" Width="247" Height="22" ControlID="4790470386806681430" Canvas.Left="525.24999999666636" Canvas.Top="53.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTown" cm:Event="dsCity" cm:IsVisibleItem="True" cm:TabIndex="7" cm:tzDisplayItem="Name" cm:tzValueItem="TownId" />
            <cm:tzDataSource Name="dsTown" Content="dsTown" Width="110" Height="25" ControlID="5516489239497039057" Canvas.Left="559.41" Canvas.Top="48.793333336665512" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " />
            <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="NaN" Height="NaN" ControlID="4959885443946943293" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="25.516666669998813" />
            <cm:tzLookUpComboBox Name="cmbService" Width="247" Height="22" ControlID="5172994599657882546" Canvas.Left="159.89298267666595" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
            <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5270925061741186330" Canvas.Left="226.86315519666687" Canvas.Top="24.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" />
            <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="NaN" Height="NaN" ControlID="5429890452776562087" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="49.170000013332611" />
            <cm:tzLookUpComboBox Name="cmbSubService" Width="247" Height="22" ControlID="5634760713754507600" Canvas.Left="159.89298267666595" Canvas.Top="49.793333336665484" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
            <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4692127204784513660" Canvas.Left="226.86315519666687" Canvas.Top="50.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
            <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="NaN" Height="NaN" ControlID="4717754987366344189" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="73.328333339999432" />
            <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="247" Height="22" ControlID="5610629158270476969" Canvas.Left="159.89298267666595" Canvas.Top="75.793333336665484" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
            <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" ControlID="5494490826325421717" Canvas.Left="226.86315519666687" Canvas.Top="76.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
            <cm:tzLabel Name="Lable25" Content="Ticket وضعیت" Width="NaN" Height="NaN" ControlID="4759944771073043398" FontFamily="Tahoma" Canvas.Left="1057.3033333333333" Canvas.Top="23.516666666666538" />
            <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="203.89333333000013" Height="22" ControlID="5206205529288027938" Canvas.Left="852.40999999999985" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
            <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" ControlID="4954260394000299803" Canvas.Left="862.40999999999985" Canvas.Top="20.586666669999204" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_TicketStatus_VSAT_BPR" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="106" Height="23" ControlID="5274890025583964238" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="52.605000009999486" cm:Event="dsSearch" />
            <cm:tzLabel Name="Lable50" Content="نام فرایند" Width="74.806666669999913" Height="23" ControlID="4867435586594311648" FontFamily="Tahoma" Canvas.Left="1057.30333333" Canvas.Top="52.60500001" />
            <cm:tzLookUpComboBox Name="cmbFilterType" Width="203.89333333000013" Height="22" Canvas.Left="852.40999999999985" Canvas.Top="53.605000006666586" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4673855555767051755" cm:DataBinding="dsFilterType" cm:DefaultValue="$دومی" cm:Event="dsEnableProvince,dsrRegGroup" cm:TabIndex="8" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
            <cm:TZReport Name="repVSATView" Content="گزارش" Width="106" Height="23" ControlID="5019857861494933177" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="84.605000009999486" cm:ComponentType=",FromDate#,ToDate#,BankCode#,BranchCode#,ProvinceId#,TownId#,CityId#,TicketStatus#,ServiceId#,SubServiceId#,ProblemGroupId#,RegisteredUserId#tzLookUpComboBox,FilterType#tzTextBox,NetWorkNumber#tzTextBox,Inroot#tzLookUpComboBox,BranchType#" cm:IsVisibleItem="True" cm:ReportID="90" cm:ReportParamId="5181499922404295787,pcFromDate,FromDate#5094242323863844211,ptToDate,ToDate#5509524007198657218,cmbBank,BankCode#4857410465110087981,txtBranchCode,BranchCode#4935142266626503991,cmbProvince,ProvinceId#4790470386806681430,cmbTown,TownId#5361447700624157680,cmbCity,CityId#5206205529288027938,cmbTicketStatus,TicketStatus#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,SubServiceId#5610629158270476969,cmbProblemGroup,ProblemGroupId#4832447581159095034,txtRegisteredUserId,RegisteredUserId#4673855555767051755,cmbFilterType,FilterType#4665241607266102242,txtNetworkNumber,NetWorkNumber#4871454131912062679,txtInroot,Inroot#5625107840618892731,cmbBranchType,BranchType#" />
            <cm:tzDataSource Name="dsFilterType" Content="dsFilterType" Width="110" Height="25" ControlID="4996887301757334923" Canvas.Left="862.40999999999985" Canvas.Top="50.605000006666074" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" />
            <cm:tzLookUpComboBox Name="cmbRegGroup" Width="203.89333333000013" Height="22" ControlID="5016415677319074138" Canvas.Left="852.40999999999985" Canvas.Top="79.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsrRegGroup" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
            <cm:tzLabel Name="Lable5556" Content="گروه ثبت کننده" Width="88" Height="23" ControlID="4634095685438495186" FontFamily="Tahoma" Canvas.Left="1057.30333333" Canvas.Top="78.60500001" />
            <cm:tzDataSource Name="dsrRegGroup" Content="dsrRegGroup" Width="110" Height="25" ControlID="5690234546922349246" Canvas.Left="862.40999999999985" Canvas.Top="76.605000009999515" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" />
            <cm:tzTextBox Name="txtNetworkNumber" Width="84" Height="21" ControlID="4665241607266102242" FontWeight="SemiBold" Foreground="#FFF90707" TextAlignment="Center" Canvas.Left="8" Canvas.Top="-0.72666667" cm:Len="20" />
            <cm:tzLabel Name="Lable68" Content="شماره شبکه" Width="73.89298268" Height="23" ControlID="5739659099930175832" Canvas.Left="92" Canvas.Top="-2.72666667" />
            <cm:tzTextBox Name="txtInroot" Width="83" Height="21" ControlID="4871454131912062679" FontWeight="SemiBold" Foreground="#FFF70404" TextAlignment="Center" Canvas.Left="8" Canvas.Top="24.58666667" cm:Len="20" />
            <cm:tzLabel Name="Lable81" Content="اینروت" Width="61.029827476665957" Height="23" ControlID="4734728212052016057" FontFamily="Tahoma" Canvas.Left="92" Canvas.Top="22.58666667" />
            <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1056.7526659" Canvas.Top="109.88524087333332" cm:ControlID="5273351821395219620" />
            <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" ControlID="5335776727315516869" Canvas.Left="733.40999999999985" Canvas.Top="108.16190753999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
            <cm:tzLookUpComboBox Name="cmbBranchType" Width="203.89333333000013" Height="22" ControlID="5625107840618892731" Canvas.Left="851.85933256999988" Canvas.Top="111.16190753999999" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox4" Width="1156" Height="394.51666667" BorderBrush="#FF3399FF" ControlID="5493606265940748203" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="169.20666666" cm:Header="نتیجه جستجو">
          <Canvas>
            <cm:tzDataGrid Name="gvSearch" Width="1128" Height="365.24" HorizontalAlignment="Left" VerticalAlignment="Top" AlternatingRowBackground="#FFF9EFD1" ControlID="5710632539878692339" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSearch" cm:IsSearchable="True" cm:KeyField="WFID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="40" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ردیف" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ردیف">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ردیف}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="شماره فرآیند" DataTextField="شماره تیکت" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="شماره تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding شماره تیکت}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding شماره فرآیند}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="68" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره فرآیند" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="شماره فرآیند">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره فرآیند}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام فرآیند" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="نام فرآیند">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام فرآیند}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="105" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت تیکت" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت تیکت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کاربر ثبت کننده" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="کاربر ثبت کننده">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کاربر ثبت کننده}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه ثبت کننده" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="گروه ثبت کننده">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه ثبت کننده}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کد پایانه" DecimalMark="False" HeaderText="کد پایانه" IsRowColorField="False" KeyField="False" SortMemberPath="کد پایانه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کد پایانه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="بانک" DecimalMark="False" HeaderText="بانک" IsRowColorField="False" KeyField="False" SortMemberPath="بانک">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding بانک}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شعبه" DecimalMark="False" HeaderText="شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="شعبه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شعبه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="BranchType" DecimalMark="False" HeaderText="نوع شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="BranchType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding BranchType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="باجه" DecimalMark="False" HeaderText="باجه" IsRowColorField="False" KeyField="False" SortMemberPath="باجه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding باجه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام سرویس" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="نام سرویس">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام سرویس}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زیرسرویس" DecimalMark="False" HeaderText="زیرسرویس" IsRowColorField="False" KeyField="False" SortMemberPath="زیرسرویس">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زیرسرویس}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه مشکل" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="گروه مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="عنوان مشکل" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="عنوان مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding عنوان مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره شبکه" DecimalMark="False" HeaderText="شماره شبکه" IsRowColorField="False" KeyField="False" SortMemberPath="شماره شبکه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره شبکه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اینروت" DecimalMark="False" HeaderText="اینروت" IsRowColorField="False" KeyField="False" SortMemberPath="اینروت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اینروت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ ثبت" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ ثبت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ ثبت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت ثبت" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت ثبت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت ثبت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رخداد" DecimalMark="False" HeaderText="تاریخ رخداد" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رخداد">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رخداد}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رخداد" DecimalMark="False" HeaderText="ساعت رخداد" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رخداد">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رخداد}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="84" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رفع مشکل" DecimalMark="False" HeaderText="تاریخ رفع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رفع مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رفع مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="94" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رفع مشکل" DecimalMark="False" HeaderText="ساعت رفع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رفع مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رفع مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="103" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ خاتمه" DecimalMark="False" HeaderText="تاریخ خاتمه" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ خاتمه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ خاتمه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="71" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت خاتمه" DecimalMark="False" HeaderText="ساعت خاتمه" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت خاتمه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت خاتمه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اولویت" DecimalMark="False" HeaderText="اولویت" IsRowColorField="False" KeyField="False" SortMemberPath="اولویت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اولویت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نوع ثبت تیکت" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="نوع ثبت تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نوع ثبت تیکت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="37" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="WFID" IsRowColorField="False" KeyField="True" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="4931247600594757990" Canvas.Left="71.2031763299999" Canvas.Top="53.048444713333083" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="NaN" Height="NaN" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="196.93982186333346" Canvas.Top="-7.63833332666735" cm:IsVisibleItem="False" />
        <cm:tzTextBox Name="txtRegisteredUserId" Width="120" Height="21" ControlID="4832447581159095034" Canvas.Left="75.939821863333691" Canvas.Top="-5.3616666600007079" cm:DataType="Int" cm:DefaultValue="" cm:IsVisibleItem="False" />
        <cm:tzDataSource Name="dsEnableProvince" Content="dsEnableProvince" Width="117" Height="25" ControlID="4675424502671867223" Canvas.Left="554.30333333" Canvas.Top="-5.36166666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" />
        <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="71" Height="20" ControlID="5278001863412353071" FontFamily="Tahoma" Canvas.Left="702.2" Canvas.Top="-0.36166665999999736" cm:DataBinding="dsEnableProvince" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="4935142266626503991#5361447700624157680#4790470386806681430#4665241607266102242#4871454131912062679#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4665241607266102242#4871454131912062679#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chbDisable" Content="Disable" Width="68" Height="20" ControlID="5098920804702458156" FontFamily="Tahoma" Canvas.Left="355.29009434" Canvas.Top="-4.3616666600007079" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5172994599657882546#" cm:TMCol="" cm:TVCol="" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2021/10/10 15:44:12', '4487c33a-40df-4d4a-85d0-18df9f8a7fff', 0, N'', N'{"formID": "201839" ,"components": [{"value": "","key": "5098920804702458156","label": "chbDisable","controlType": "checkbox","caption": "Disable" ,"DataBindingField" : ""},{"value": "","key": "5278001863412353071","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : "Column1"},{"key": "5509524007198657218","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5361447700624157680","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4673855555767051755","label": "cmbFilterType","value": "$دومی", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4935142266626503991","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5016415677319074138","label": "cmbRegGroup","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key": "4790470386806681430","label": "cmbTown","value": "", "controlType": "dropdown","options":""},{"key":"4920230569762664582" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5009463879945094326" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4675424502671867223" , "dataSourceName":"dsEnableProvince" , "controlType": "datasource",  "selectQuery" :"if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4996887301757334923" , "dataSourceName":"dsFilterType" , "controlType": "datasource",  "selectQuery" :"SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5430619111372109902" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5690234546922349246" , "dataSourceName":"dsrRegGroup" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4931247600594757990" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_TicketStatus_VSAT_BPR" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5516489239497039057" , "dataSourceName":"dsTown" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4857410465110087981","label": "txtBranchCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4871454131912062679","label": "txtInroot","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4665241607266102242","label": "txtNetworkNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832447581159095034","label": "txtRegisteredUserId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5675084375244981955","label": "txtVsatCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'BPR VSAT View',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" Width="1234" Height="623.44666667" Background="White">
  <Canvas Width="1200" Height="600">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox46" Width="1184" Height="584" Background="#FFBFCDDB" BorderBrush="#FF3399FF" ControlID="5702648365697578606" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="1156" Height="160.20666666" BorderBrush="#FF3399FF" ControlID="5166982797303511414" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="جستجو بر اساس">
          <Canvas>
            <cm:tzLabel Name="Lable8" Content="تاریخ از" ControlID="4760747404024124304" FontFamily="Tahoma" Canvas.Left="1057.3033333333333" Canvas.Top="-1.4833333333332917" />
            <cm:tzLabel Name="Lable11" Content="تا" ControlID="5240352845304954624" FontFamily="Tahoma" Canvas.Left="940.5033333333331" Canvas.Top="0.51666666666654137" />
            <cm:PDatePicker Name="pcFromDate" Width="120" Height="20" ControlID="5181499922404295787" TabIndex="1" Canvas.Left="965.833333333333" Canvas.Top="2.0333333333323402" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable28" Content="بانک" ControlID="5040226040766687963" FontFamily="Tahoma" Canvas.Left="773.77999999999963" Canvas.Top="-3.2100000000011164" />
            <cm:tzLabel Name="Lable30" Content="استان" ControlID="4962844059786634947" FontFamily="Tahoma" Canvas.Left="772.44" Canvas.Top="22.31000000333259" />
            <cm:tzLabel Name="Lable59" Content="شهر" ControlID="5432204195071583342" Canvas.Left="772.41999999999973" Canvas.Top="77.121666679998782" />
            <cm:tzLookUpComboBox Name="cmbProvince" Width="247" Height="22" ControlID="4935142266626503991" Canvas.Left="525.24999999666636" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsTown,dsCity" cm:TabIndex="6" cm:tzDisplayItem="Name" cm:tzValueItem="ProvinceId" />
            <cm:tzLookUpComboBox Name="cmbCity" Width="247" Height="22" ControlID="5361447700624157680" Canvas.Left="525.24999999666647" Canvas.Top="79.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:TabIndex="8" cm:tzDisplayItem="CityName" cm:tzValueItem="CityId" />
            <cm:PDatePicker Name="ptToDate" Width="120" Height="20" ControlID="5094242323863844211" TabIndex="2" Canvas.Left="852.40999999999985" Canvas.Top="1.9999999999996057" cm:DefaultValue="$CurrentDate" />
            <cm:tzLookUpComboBox Name="cmbBank" Width="247" Height="22" ControlID="5509524007198657218" Canvas.Left="525.24999999666636" Canvas.Top="-0.7266666666676258" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataBindingField="Customerkey" cm:TabIndex="3" cm:tzDisplayItem="CustomerName" cm:tzValueItem="Customerkey" />
            <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" ControlID="4920230569762664582" Canvas.Left="559.41" Canvas.Top="-1.2066666700000042" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" />
            <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" ControlID="5430619111372109902" Canvas.Left="559.41" Canvas.Top="24.605000006666103" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" />
            <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="25" ControlID="5009463879945094326" Canvas.Left="559.41" Canvas.Top="76.605000009999515" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" />
            <cm:tzLabel Name="Lable32" Content="کد شعبه" ControlID="5202855161479270559" FontFamily="Tahoma" Canvas.Left="411.30999999999995" Canvas.Top="-3.2100000000011164" />
            <cm:tzTextBox Name="txtBranchCode" Width="63" Height="21" ControlID="4857410465110087981" FontWeight="SemiBold" Foreground="#FFFC0505" Canvas.Left="343.89298267666595" Canvas.Top="-0.7266666666676258" cm:Len="8" cm:TabIndex="4" />
            <cm:tzTextBox Name="txtVsatCode" Width="98.103333329999188" Height="21" ControlID="5675084375244981955" FontWeight="SemiBold" Foreground="#FFFC0505" Canvas.Left="159.89298267666595" Canvas.Top="-0.7266666666676258" cm:Len="15" cm:TabIndex="5" />
            <cm:tzLabel Name="Lable3031" Content="کد پایانه فضایی" ControlID="4853228287717037392" FontFamily="Tahoma" Canvas.Left="256.40648853000016" Canvas.Top="-3.2100000000011164" />
            <cm:tzLabel Name="Lable66" Content="شهرستان" ControlID="5305789425836294089" FontFamily="Tahoma" Canvas.Left="772.41999999999973" Canvas.Top="52.328333343332872" cm:IsVisibleItem="True" />
            <cm:tzLookUpComboBox Name="cmbTown" Width="247" Height="22" ControlID="4790470386806681430" Canvas.Left="525.24999999666636" Canvas.Top="53.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTown" cm:Event="dsCity" cm:IsVisibleItem="True" cm:TabIndex="7" cm:tzDisplayItem="Name" cm:tzValueItem="TownId" />
            <cm:tzDataSource Name="dsTown" Content="dsTown" Width="110" Height="25" ControlID="5516489239497039057" Canvas.Left="559.41" Canvas.Top="48.793333336665512" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " />
            <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="NaN" Height="NaN" ControlID="4959885443946943293" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="25.516666669998813" />
            <cm:tzLookUpComboBox Name="cmbService" Width="247" Height="22" ControlID="5172994599657882546" Canvas.Left="159.89298267666595" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
            <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5270925061741186330" Canvas.Left="226.86315519666687" Canvas.Top="24.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" />
            <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="NaN" Height="NaN" ControlID="5429890452776562087" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="49.170000013332611" />
            <cm:tzLookUpComboBox Name="cmbSubService" Width="247" Height="22" ControlID="5634760713754507600" Canvas.Left="159.89298267666595" Canvas.Top="49.793333336665484" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
            <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4692127204784513660" Canvas.Left="226.86315519666687" Canvas.Top="50.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
            <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="NaN" Height="NaN" ControlID="4717754987366344189" FontFamily="Tahoma" Canvas.Left="408.12631600999941" Canvas.Top="73.328333339999432" />
            <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="247" Height="22" ControlID="5610629158270476969" Canvas.Left="159.89298267666595" Canvas.Top="75.793333336665484" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
            <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" ControlID="5494490826325421717" Canvas.Left="226.86315519666687" Canvas.Top="76.605000009999458" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
            <cm:tzLabel Name="Lable25" Content="Ticket وضعیت" Width="NaN" Height="NaN" ControlID="4759944771073043398" FontFamily="Tahoma" Canvas.Left="1057.3033333333333" Canvas.Top="23.516666666666538" />
            <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="203.89333333000013" Height="22" ControlID="5206205529288027938" Canvas.Left="852.40999999999985" Canvas.Top="24.79333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
            <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" ControlID="4954260394000299803" Canvas.Left="862.40999999999985" Canvas.Top="20.586666669999204" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_TicketStatus_VSAT_BPR" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="106" Height="23" ControlID="5274890025583964238" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="52.605000009999486" cm:Event="dsSearch" />
            <cm:tzLabel Name="Lable50" Content="نام فرایند" Width="74.806666669999913" Height="23" ControlID="4867435586594311648" FontFamily="Tahoma" Canvas.Left="1057.30333333" Canvas.Top="52.60500001" />
            <cm:tzLookUpComboBox Name="cmbFilterType" Width="203.89333333000013" Height="22" Canvas.Left="852.40999999999985" Canvas.Top="53.605000006666586" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4673855555767051755" cm:DataBinding="dsFilterType" cm:DefaultValue="$دومی" cm:Event="dsEnableProvince,dsrRegGroup" cm:TabIndex="8" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
            <cm:TZReport Name="repVSATView" Content="گزارش" Width="106" Height="23" ControlID="5019857861494933177" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="84.605000009999486" cm:ComponentType=",FromDate#,ToDate#,BankCode#,BranchCode#,ProvinceId#,TownId#,CityId#,TicketStatus#,ServiceId#,SubServiceId#,ProblemGroupId#,RegisteredUserId#tzLookUpComboBox,FilterType#tzTextBox,NetWorkNumber#tzTextBox,Inroot#tzLookUpComboBox,BranchType#" cm:IsVisibleItem="True" cm:ReportID="90" cm:ReportParamId="5181499922404295787,pcFromDate,FromDate#5094242323863844211,ptToDate,ToDate#5509524007198657218,cmbBank,BankCode#4857410465110087981,txtBranchCode,BranchCode#4935142266626503991,cmbProvince,ProvinceId#4790470386806681430,cmbTown,TownId#5361447700624157680,cmbCity,CityId#5206205529288027938,cmbTicketStatus,TicketStatus#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,SubServiceId#5610629158270476969,cmbProblemGroup,ProblemGroupId#4832447581159095034,txtRegisteredUserId,RegisteredUserId#4673855555767051755,cmbFilterType,FilterType#4665241607266102242,txtNetworkNumber,NetWorkNumber#4871454131912062679,txtInroot,Inroot#5625107840618892731,cmbBranchType,BranchType#" />
            <cm:tzDataSource Name="dsFilterType" Content="dsFilterType" Width="110" Height="25" ControlID="4996887301757334923" Canvas.Left="862.40999999999985" Canvas.Top="50.605000006666074" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" />
            <cm:tzLookUpComboBox Name="cmbRegGroup" Width="203.89333333000013" Height="22" ControlID="5016415677319074138" Canvas.Left="852.40999999999985" Canvas.Top="79.605000009999515" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsrRegGroup" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
            <cm:tzLabel Name="Lable5556" Content="گروه ثبت کننده" Width="88" Height="23" ControlID="4634095685438495186" FontFamily="Tahoma" Canvas.Left="1057.30333333" Canvas.Top="78.60500001" />
            <cm:tzDataSource Name="dsrRegGroup" Content="dsrRegGroup" Width="110" Height="25" ControlID="5690234546922349246" Canvas.Left="862.40999999999985" Canvas.Top="76.605000009999515" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" />
            <cm:tzTextBox Name="txtNetworkNumber" Width="84" Height="21" ControlID="4665241607266102242" FontWeight="SemiBold" Foreground="#FFF90707" TextAlignment="Center" Canvas.Left="8" Canvas.Top="-0.72666667" cm:Len="20" />
            <cm:tzLabel Name="Lable68" Content="شماره شبکه" Width="73.89298268" Height="23" ControlID="5739659099930175832" Canvas.Left="92" Canvas.Top="-2.72666667" />
            <cm:tzTextBox Name="txtInroot" Width="83" Height="21" ControlID="4871454131912062679" FontWeight="SemiBold" Foreground="#FFF70404" TextAlignment="Center" Canvas.Left="8" Canvas.Top="24.58666667" cm:Len="20" />
            <cm:tzLabel Name="Lable81" Content="اینروت" Width="61.029827476665957" Height="23" ControlID="4734728212052016057" FontFamily="Tahoma" Canvas.Left="92" Canvas.Top="22.58666667" />
            <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1056.7526659" Canvas.Top="109.88524087333332" cm:ControlID="5273351821395219620" />
            <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" ControlID="5335776727315516869" Canvas.Left="733.40999999999985" Canvas.Top="108.16190753999999" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
            <cm:tzLookUpComboBox Name="cmbBranchType" Width="203.89333333000013" Height="22" ControlID="5625107840618892731" Canvas.Left="851.85933256999988" Canvas.Top="111.16190753999999" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox4" Width="1156" Height="394.51666667" BorderBrush="#FF3399FF" ControlID="5493606265940748203" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="169.20666666" cm:Header="نتیجه جستجو">
          <Canvas>
            <cm:tzDataGrid Name="gvSearch" Width="1128" Height="365.24" HorizontalAlignment="Left" VerticalAlignment="Top" AlternatingRowBackground="#FFF9EFD1" ControlID="5710632539878692339" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSearch" cm:IsSearchable="True" cm:KeyField="WFID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="40" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ردیف" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ردیف">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ردیف}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="شماره فرآیند" DataTextField="شماره تیکت" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="شماره تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding شماره تیکت}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding شماره فرآیند}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="68" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره فرآیند" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="شماره فرآیند">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره فرآیند}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام فرآیند" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="نام فرآیند">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام فرآیند}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="105" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت تیکت" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت تیکت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کاربر ثبت کننده" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="کاربر ثبت کننده">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کاربر ثبت کننده}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه ثبت کننده" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="گروه ثبت کننده">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه ثبت کننده}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کد پایانه" DecimalMark="False" HeaderText="کد پایانه" IsRowColorField="False" KeyField="False" SortMemberPath="کد پایانه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کد پایانه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="بانک" DecimalMark="False" HeaderText="بانک" IsRowColorField="False" KeyField="False" SortMemberPath="بانک">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding بانک}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شعبه" DecimalMark="False" HeaderText="شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="شعبه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شعبه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="BranchType" DecimalMark="False" HeaderText="نوع شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="BranchType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding BranchType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="باجه" DecimalMark="False" HeaderText="باجه" IsRowColorField="False" KeyField="False" SortMemberPath="باجه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding باجه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام سرویس" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="نام سرویس">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام سرویس}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زیرسرویس" DecimalMark="False" HeaderText="زیرسرویس" IsRowColorField="False" KeyField="False" SortMemberPath="زیرسرویس">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زیرسرویس}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه مشکل" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="گروه مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="عنوان مشکل" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="عنوان مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding عنوان مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره شبکه" DecimalMark="False" HeaderText="شماره شبکه" IsRowColorField="False" KeyField="False" SortMemberPath="شماره شبکه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره شبکه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اینروت" DecimalMark="False" HeaderText="اینروت" IsRowColorField="False" KeyField="False" SortMemberPath="اینروت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اینروت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ ثبت" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ ثبت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ ثبت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت ثبت" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت ثبت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت ثبت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رخداد" DecimalMark="False" HeaderText="تاریخ رخداد" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رخداد">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رخداد}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رخداد" DecimalMark="False" HeaderText="ساعت رخداد" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رخداد">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رخداد}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="84" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رفع مشکل" DecimalMark="False" HeaderText="تاریخ رفع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رفع مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رفع مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="94" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رفع مشکل" DecimalMark="False" HeaderText="ساعت رفع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رفع مشکل">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رفع مشکل}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="103" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ خاتمه" DecimalMark="False" HeaderText="تاریخ خاتمه" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ خاتمه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ خاتمه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="71" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت خاتمه" DecimalMark="False" HeaderText="ساعت خاتمه" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت خاتمه">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت خاتمه}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اولویت" DecimalMark="False" HeaderText="اولویت" IsRowColorField="False" KeyField="False" SortMemberPath="اولویت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اولویت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نوع ثبت تیکت" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="نوع ثبت تیکت">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نوع ثبت تیکت}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="37" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="WFID" IsRowColorField="False" KeyField="True" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="4931247600594757990" Canvas.Left="71.2031763299999" Canvas.Top="53.048444713333083" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="NaN" Height="NaN" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="196.93982186333346" Canvas.Top="-7.63833332666735" cm:IsVisibleItem="False" />
        <cm:tzTextBox Name="txtRegisteredUserId" Width="120" Height="21" ControlID="4832447581159095034" Canvas.Left="75.939821863333691" Canvas.Top="-5.3616666600007079" cm:DataType="Int" cm:DefaultValue="" cm:IsVisibleItem="False" />
        <cm:tzDataSource Name="dsEnableProvince" Content="dsEnableProvince" Width="117" Height="25" ControlID="4675424502671867223" Canvas.Left="554.30333333" Canvas.Top="-5.36166666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" />
        <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="71" Height="20" ControlID="5278001863412353071" FontFamily="Tahoma" Canvas.Left="702.2" Canvas.Top="-0.36166665999999736" cm:DataBinding="dsEnableProvince" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="4935142266626503991#5361447700624157680#4790470386806681430#4665241607266102242#4871454131912062679#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4665241607266102242#4871454131912062679#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chbDisable" Content="Disable" Width="68" Height="20" ControlID="5098920804702458156" FontFamily="Tahoma" Canvas.Left="355.29009434" Canvas.Top="-4.3616666600007079" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5172994599657882546#" cm:TMCol="" cm:TVCol="" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2021/10/10 15:44:12', GUID = '4487c33a-40df-4d4a-85d0-18df9f8a7fff', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201839" ,"components": [{"value": "","key": "5098920804702458156","label": "chbDisable","controlType": "checkbox","caption": "Disable" ,"DataBindingField" : ""},{"value": "","key": "5278001863412353071","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : "Column1"},{"key": "5509524007198657218","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5361447700624157680","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4673855555767051755","label": "cmbFilterType","value": "$دومی", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4935142266626503991","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5016415677319074138","label": "cmbRegGroup","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key": "4790470386806681430","label": "cmbTown","value": "", "controlType": "dropdown","options":""},{"key":"4920230569762664582" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5009463879945094326" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4675424502671867223" , "dataSourceName":"dsEnableProvince" , "controlType": "datasource",  "selectQuery" :"if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4996887301757334923" , "dataSourceName":"dsFilterType" , "controlType": "datasource",  "selectQuery" :"SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5430619111372109902" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5690234546922349246" , "dataSourceName":"dsrRegGroup" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4931247600594757990" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_TicketStatus_VSAT_BPR" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5516489239497039057" , "dataSourceName":"dsTown" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4857410465110087981","label": "txtBranchCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4871454131912062679","label": "txtInroot","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4665241607266102242","label": "txtNetworkNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832447581159095034","label": "txtRegisteredUserId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5675084375244981955","label": "txtVsatCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201839
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm201839') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm201839] ( [frm201839Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4857410465110087981]  [nvarchar] ( 50) NULL , [Col_5675084375244981955]  [nvarchar] ( 50) NULL , [Col_4832447581159095034]  [int] NULL , [Col_4935142266626503991]  [nvarchar] ( 50) NULL , [Col_5361447700624157680]  [nvarchar] ( 50) NULL , [Col_5509524007198657218]  [nvarchar] ( 50) NULL , [Col_4790470386806681430]  [nvarchar] ( 50) NULL , [Col_5172994599657882546]  [nvarchar] ( 50) NULL , [Col_5634760713754507600]  [nvarchar] ( 50) NULL , [Col_5610629158270476969]  [nvarchar] ( 50) NULL , [Col_5206205529288027938]  [nvarchar] ( 50) NULL , [Col_4673855555767051755]  [nvarchar] ( 50) NULL , [Col_5098920804702458156]  [bit] NULL , [Col_5181499922404295787]  [nvarchar] ( 10) NULL , [Col_5094242323863844211]  [nvarchar] ( 10) NULL , [Col_5278001863412353071]  [bit] NULL , [Col_5016415677319074138]  [nvarchar] ( 50) NULL , [Col_4665241607266102242]  [nvarchar] ( 20) NULL , [Col_4871454131912062679]  [nvarchar] ( 20) NULL , [Col_5625107840618892731]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm201839Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'frm201839Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD frm201839Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4857410465110087981' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4857410465110087981 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5675084375244981955' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5675084375244981955 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4832447581159095034' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4832447581159095034 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4935142266626503991' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4935142266626503991 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5361447700624157680' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5361447700624157680 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5509524007198657218' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5509524007198657218 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4790470386806681430' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4790470386806681430 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5172994599657882546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5172994599657882546 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5634760713754507600' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5634760713754507600 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5610629158270476969' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5610629158270476969 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5206205529288027938' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5206205529288027938 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4673855555767051755' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4673855555767051755 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5098920804702458156' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5098920804702458156 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5181499922404295787' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5181499922404295787 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5094242323863844211' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5094242323863844211 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5278001863412353071' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5278001863412353071 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5016415677319074138' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5016415677319074138 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4665241607266102242' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4665241607266102242 nvarchar (20) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_4871454131912062679' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_4871454131912062679 nvarchar (20) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201839' AND COLUMN_NAME = 'Col_5625107840618892731' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201839] ADD Col_5625107840618892731 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm201839]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm201839
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm201839] ( @PKFormId as bigint OUTPUT ,  @Col_4857410465110087981 AS nvarchar(50),  @Col_5675084375244981955 AS nvarchar(50),  @Col_4832447581159095034 AS int,  @Col_4935142266626503991 AS nvarchar(50),  @Col_5361447700624157680 AS nvarchar(50),  @Col_5509524007198657218 AS nvarchar(50),  @Col_4790470386806681430 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_5206205529288027938 AS nvarchar(50),  @Col_4673855555767051755 AS nvarchar(50),  @Col_5098920804702458156 AS bit,  @Col_5181499922404295787 AS nvarchar(10),  @Col_5094242323863844211 AS nvarchar(10),  @Col_5278001863412353071 AS bit,  @Col_5016415677319074138 AS nvarchar(50),  @Col_4665241607266102242 AS nvarchar(20),  @Col_4871454131912062679 AS nvarchar(20),  @Col_5625107840618892731 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm201839](Col_4857410465110087981,Col_5675084375244981955,Col_4832447581159095034,Col_4935142266626503991,Col_5361447700624157680,Col_5509524007198657218,Col_4790470386806681430,Col_5172994599657882546,Col_5634760713754507600,Col_5610629158270476969,Col_5206205529288027938,Col_4673855555767051755,Col_5098920804702458156,Col_5181499922404295787,Col_5094242323863844211,Col_5278001863412353071,Col_5016415677319074138,Col_4665241607266102242,Col_4871454131912062679,Col_5625107840618892731) VALUES ( @Col_4857410465110087981,@Col_5675084375244981955,@Col_4832447581159095034,@Col_4935142266626503991,@Col_5361447700624157680,@Col_5509524007198657218,@Col_4790470386806681430,@Col_5172994599657882546,@Col_5634760713754507600,@Col_5610629158270476969,@Col_5206205529288027938,@Col_4673855555767051755,@Col_5098920804702458156,@Col_5181499922404295787,@Col_5094242323863844211,@Col_5278001863412353071,@Col_5016415677319074138,@Col_4665241607266102242,@Col_4871454131912062679,@Col_5625107840618892731 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm201839]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm201839
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm201839] ( @PKFormId as bigint OUTPUT ,  @Col_4857410465110087981 AS nvarchar(50),  @Col_5675084375244981955 AS nvarchar(50),  @Col_4832447581159095034 AS int,  @Col_4935142266626503991 AS nvarchar(50),  @Col_5361447700624157680 AS nvarchar(50),  @Col_5509524007198657218 AS nvarchar(50),  @Col_4790470386806681430 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_5206205529288027938 AS nvarchar(50),  @Col_4673855555767051755 AS nvarchar(50),  @Col_5098920804702458156 AS bit,  @Col_5181499922404295787 AS nvarchar(10),  @Col_5094242323863844211 AS nvarchar(10),  @Col_5278001863412353071 AS bit,  @Col_5016415677319074138 AS nvarchar(50),  @Col_4665241607266102242 AS nvarchar(20),  @Col_4871454131912062679 AS nvarchar(20),  @Col_5625107840618892731 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm201839] SET Col_4857410465110087981 =  @Col_4857410465110087981, Col_5675084375244981955 =  @Col_5675084375244981955, Col_4832447581159095034 =  @Col_4832447581159095034, Col_4935142266626503991 =  @Col_4935142266626503991, Col_5361447700624157680 =  @Col_5361447700624157680, Col_5509524007198657218 =  @Col_5509524007198657218, Col_4790470386806681430 =  @Col_4790470386806681430, Col_5172994599657882546 =  @Col_5172994599657882546, Col_5634760713754507600 =  @Col_5634760713754507600, Col_5610629158270476969 =  @Col_5610629158270476969, Col_5206205529288027938 =  @Col_5206205529288027938, Col_4673855555767051755 =  @Col_4673855555767051755, Col_5098920804702458156 =  @Col_5098920804702458156, Col_5181499922404295787 =  @Col_5181499922404295787, Col_5094242323863844211 =  @Col_5094242323863844211, Col_5278001863412353071 =  @Col_5278001863412353071, Col_5016415677319074138 =  @Col_5016415677319074138, Col_4665241607266102242 =  @Col_4665241607266102242, Col_4871454131912062679 =  @Col_4871454131912062679, Col_5625107840618892731 =  @Col_5625107840618892731 WHERE [frm201839Id] = @PKFormId 
 END 
GO
