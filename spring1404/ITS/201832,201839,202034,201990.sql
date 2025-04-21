GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 201832) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (201832, N'FaradisTicket-BPRView',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1277" Height="1624.72333333" Background="White">
  <Canvas Width="1250" Height="920">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox42" Width="1136" Height="515" ControlID="5274384846942233892" Canvas.Left="35.609550560000123" Canvas.Top="28.003501870000086" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1100" Height="465.51666667" ControlID="5381945616469810872" Canvas.Left="16" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.161608595543512*" />
            <ColumnDefinition Width="0.169664384045871*" />
            <ColumnDefinition Width="0.165887790375938*" />
            <ColumnDefinition Width="0.168179654608351*" />
            <ColumnDefinition Width="0.166714854425026*" />
            <ColumnDefinition Width="0.167944721001303*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.212443965593225*" />
            <RowDefinition Height="0.237611369922043*" />
            <RowDefinition Height="0.269787909598987*" />
            <RowDefinition Height="0.280156754885745*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="14.9495927881004,41.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666677" Height="24.483333333333334" Margin="0,11.9999999999999,12.6111264285671,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120.00000000000004" Height="21" Margin="36.3400552656286,0,27.0462846018999,36.4128733837811" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5081194363345449817" Grid.Column="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable26" Content="بانک" Width="36.120000000000012" Height="24.483333333333334" Margin="0,11.9999999999999,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="158" Height="22" Margin="19.591500842137,51.61254214,9.0393216083209,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110.00000000000001" Height="25" Margin="30.1125863788042,37.4833333333332,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,-0.820293680000077,10.4925565410392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="166" Height="22" Margin="0,0,10.4925565410384,18.7762018871143" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.2745080514801,48.612542143333,42.7231120177058,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:tzSelectQuery="select * from Tbl_CU_Service" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,8.00000000000006,7.12008732851916,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="167.79163192" Height="22" Margin="0,51.61254214,7.12008733185246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="125.38715596" Height="25" Margin="14.0268981816787,37.4833333333333,43.0625152718528,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT UserId, FullName FROM Users.TblProfiles" />
          <cm:tzLabel Name="Lable30" Content="کد شعبه" Width="58.96" Height="24.483333333333334" Margin="0,12,23.9273684745296,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="160" Height="21" Margin="8,52.61254214,9.76945509786299,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5053119443844496676" FontSize="12" FontWeight="SemiBold" Foreground="#FF281B1B" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,19.0786211062185,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="161.78960031333281" Height="22" Margin="0,0,8,20.404354646116" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="32.0729830447657,42.2076982428854,42.6662100566673,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM dbo.Tbl_Cu_ProblemGroup" />
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,16.724364909552,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="26.7719796122947,59.1994337828854,36.6143602552338,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4895068962898797083" Grid.Column="4" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable40" Content="تا" Width="23.595524039999987" Height="23" Margin="0,20.5619544395518,18.127587977706,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5469889688189875676" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="32.27450805148,0,32.7231120177059,31.4126191061164" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4875705021739424097" Grid.Column="3" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت صدور" Width="76.65" Height="24.483333333333334" Margin="0,19.0786211062185,23.7619137418525,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:TzPersianTime Name="ptRegisteredTime" Width="52" Height="20.000000000000004" Margin="0,0,58.5421994899999,31.4126191061163" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable44" Content="نوع ثبت " Width="56.510000000000005" Height="24.483333333333334" Margin="0,19.0786211062185,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbBatchFinished" Width="120" Height="22" Margin="30.1125863788041,0,36.5182360716538,20.4043546461159" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4909725041652514354" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBatchFinished" cm:DefaultValue="$اولی" cm:tzDisplayItem="BatchFinishedName" cm:tzValueItem="BatchFinishedID" />
          <cm:tzDataSource Name="dsBatchFinished" Content="dsBatchFinished" Width="110" Height="25" Margin="40.1125863788042,42.2076982428859,36.5182360716537,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5585389405455707919" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" />
          <cm:tzLabel Name="Lable41" Content="نام شعبه" Width="60.646666666666675" Height="24.483333333333331" Margin="0,19.8384139438836,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4905267092464358396" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzTextBox Name="txtBranchName" Width="161" Height="22" Margin="7.7391931014331,59.856182533884,16,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5217194399413537243" Grid.Column="5" Grid.Row="2" />
          <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="62.603333333333339" Height="24.483333333333334" Margin="0,19.8384139438834,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="120" Height="22" Margin="45.5785467722949,59.8561825338841,17.8077930952336,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5625107840618892731" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="5.01078558562733,45.3217472772167,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:tzLabel Name="Lable25" Content="وضعیت پذیرش تیکت" Width="115.07666666666667" Height="24.483333333333331" Margin="0,9.1844821828853,9.76945509786293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="159.99999999999994" Height="22" Margin="0,36.1994337828857,9.76945509786299,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:IsVisibleItem="True" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="32.5533240000002,54.1994337828854,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" />
          <cm:TZButton Name="btn" Content="جستجو" Width="113.88715596" Height="23.000000000000014" Margin="28.6661680400003,0,35.2161310978627,52.9654321666674" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5085118562169711603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox43" Width="1136" Height="328" ControlID="5082972989311477587" Canvas.Left="41.60955056" Canvas.Top="562.28720974" cm:Header="">
      <Canvas>
        <cm:Grid Width="1102" Height="290.51666667" ControlID="5082189760708712518" Canvas.Left="14" Canvas.Top="8">
          <cm:tzDataGrid Name="grvSM" Width="1077" Height="225.51666667" Margin="16.9999999999999,33.0303030433332,8,31.9696969566668" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" AlternatingRowBackground="#FF16ED07" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="True" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره فرآیند" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="True" SortMemberPath="شماره فرآیند">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره فرآیند}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="32" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ردیف" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ردیف">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ردیف}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="شماره فرآیند" DataTextField="شماره تیکت" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="شماره تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding شماره تیکت}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding شماره فرآیند}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت تیکت" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت تیکت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت پذیرش تیکت" DecimalMark="False" HeaderText="وضعیت پذیرش تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت پذیرش تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت پذیرش تیکت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="بانک" DecimalMark="False" HeaderText="بانک" IsRowColorField="False" KeyField="False" SortMemberPath="بانک">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding بانک}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه صادر کننده" DecimalMark="False" HeaderText="گروه صادر کننده" IsRowColorField="False" KeyField="False" SortMemberPath="گروه صادر کننده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه صادر کننده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شعبه" DecimalMark="False" HeaderText="شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="شعبه">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شعبه}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="باجه" DecimalMark="False" HeaderText="باجه" IsRowColorField="False" KeyField="False" SortMemberPath="باجه">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding باجه}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کد تجهیز" DecimalMark="False" HeaderText="کد تجهیز" IsRowColorField="False" KeyField="False" SortMemberPath="کد تجهیز">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کد تجهیز}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کارشناس ثبت کننده" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="کارشناس ثبت کننده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کارشناس ثبت کننده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="39" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اولویت" DecimalMark="False" HeaderText="اولویت" IsRowColorField="False" KeyField="False" SortMemberPath="اولویت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اولویت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان صدور" DecimalMark="False" HeaderText="زمان صدور" IsRowColorField="False" KeyField="False" SortMemberPath="زمان صدور">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان صدور}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام سرویس" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="نام سرویس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام سرویس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه مشکل" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="گروه مشکل">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه مشکل}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="عنوان مشکل" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="عنوان مشکل">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding عنوان مشکل}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اقدام" DecimalMark="False" HeaderText="اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="اقدام">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اقدام}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="108" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان ارجاع به فرادیس" DecimalMark="False" HeaderText="زمان ارجاع به فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="زمان ارجاع به فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان ارجاع به فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان برگشت از فرادیس" DecimalMark="False" HeaderText="زمان برگشت از فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="زمان برگشت از فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان برگشت از فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="color" DataTextField="color" DecimalMark="False" HeaderText="color" IsRowColorField="True" KeyField="False" SortMemberPath="color">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding color}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="دفتر متولی" DecimalMark="False" HeaderText="دفتر متولی" IsRowColorField="False" KeyField="False" SortMemberPath="دفتر متولی">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding دفتر متولی}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کارشناس" DecimalMark="False" HeaderText="کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تلفن کارشناس" DecimalMark="False" HeaderText="تلفن کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="تلفن کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تلفن کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="موبایل کارشناس" DecimalMark="False" HeaderText="موبایل کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="موبایل کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding موبایل کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="122" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رفع مشکل فرادیس" DecimalMark="False" HeaderText="تاریخ رفع مشکل فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رفع مشکل فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رفع مشکل فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="131" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رفع مشکل فرادیس" DecimalMark="False" HeaderText="ساعت رفع مشکل فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رفع مشکل فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رفع مشکل فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره کار" DecimalMark="False" HeaderText="شماره کار" IsRowColorField="False" KeyField="False" SortMemberPath="شماره کار">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره کار}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="118" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="آخرین گروه ارجاع گیرنده" DecimalMark="False" HeaderText="آخرین گروه ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="آخرین گروه ارجاع گیرنده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding آخرین گروه ارجاع گیرنده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="110.00000000000001" Height="24.999999999999996" Margin="94.8542016599997,0,0,142.578512386667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/04/21 15:36:25', 'a0cb5d5d-f84c-470c-aca3-a584899c813d', 0, N'', N'{"formID": "201832" ,"components": [{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbBatchFinished","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5585389405455707919" , "dataSourceName":"dsBatchFinished" , "controlType": "datasource",  "selectQuery" :"select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM dbo.Tbl_Cu_ProblemGroup" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"SELECT UserId, FullName FROM Users.TblProfiles" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from Tbl_CU_Service" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5217194399413537243","label": "txtBranchName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'FaradisTicket-BPRView',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1277" Height="1624.72333333" Background="White">
  <Canvas Width="1250" Height="920">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox42" Width="1136" Height="515" ControlID="5274384846942233892" Canvas.Left="35.609550560000123" Canvas.Top="28.003501870000086" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1100" Height="465.51666667" ControlID="5381945616469810872" Canvas.Left="16" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.161608595543512*" />
            <ColumnDefinition Width="0.169664384045871*" />
            <ColumnDefinition Width="0.165887790375938*" />
            <ColumnDefinition Width="0.168179654608351*" />
            <ColumnDefinition Width="0.166714854425026*" />
            <ColumnDefinition Width="0.167944721001303*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.212443965593225*" />
            <RowDefinition Height="0.237611369922043*" />
            <RowDefinition Height="0.269787909598987*" />
            <RowDefinition Height="0.280156754885745*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="14.9495927881004,41.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666677" Height="24.483333333333334" Margin="0,11.9999999999999,12.6111264285671,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120.00000000000004" Height="21" Margin="36.3400552656286,0,27.0462846018999,36.4128733837811" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5081194363345449817" Grid.Column="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable26" Content="بانک" Width="36.120000000000012" Height="24.483333333333334" Margin="0,11.9999999999999,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="158" Height="22" Margin="19.591500842137,51.61254214,9.0393216083209,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110.00000000000001" Height="25" Margin="30.1125863788042,37.4833333333332,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,-0.820293680000077,10.4925565410392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="166" Height="22" Margin="0,0,10.4925565410384,18.7762018871143" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.2745080514801,48.612542143333,42.7231120177058,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:tzSelectQuery="select * from Tbl_CU_Service" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,8.00000000000006,7.12008732851916,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="167.79163192" Height="22" Margin="0,51.61254214,7.12008733185246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="125.38715596" Height="25" Margin="14.0268981816787,37.4833333333333,43.0625152718528,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT UserId, FullName FROM Users.TblProfiles" />
          <cm:tzLabel Name="Lable30" Content="کد شعبه" Width="58.96" Height="24.483333333333334" Margin="0,12,23.9273684745296,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="160" Height="21" Margin="8,52.61254214,9.76945509786299,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5053119443844496676" FontSize="12" FontWeight="SemiBold" Foreground="#FF281B1B" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,19.0786211062185,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="161.78960031333281" Height="22" Margin="0,0,8,20.404354646116" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="32.0729830447657,42.2076982428854,42.6662100566673,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM dbo.Tbl_Cu_ProblemGroup" />
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,16.724364909552,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="26.7719796122947,59.1994337828854,36.6143602552338,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4895068962898797083" Grid.Column="4" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable40" Content="تا" Width="23.595524039999987" Height="23" Margin="0,20.5619544395518,18.127587977706,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5469889688189875676" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="32.27450805148,0,32.7231120177059,31.4126191061164" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4875705021739424097" Grid.Column="3" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت صدور" Width="76.65" Height="24.483333333333334" Margin="0,19.0786211062185,23.7619137418525,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:TzPersianTime Name="ptRegisteredTime" Width="52" Height="20.000000000000004" Margin="0,0,58.5421994899999,31.4126191061163" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable44" Content="نوع ثبت " Width="56.510000000000005" Height="24.483333333333334" Margin="0,19.0786211062185,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbBatchFinished" Width="120" Height="22" Margin="30.1125863788041,0,36.5182360716538,20.4043546461159" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4909725041652514354" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBatchFinished" cm:DefaultValue="$اولی" cm:tzDisplayItem="BatchFinishedName" cm:tzValueItem="BatchFinishedID" />
          <cm:tzDataSource Name="dsBatchFinished" Content="dsBatchFinished" Width="110" Height="25" Margin="40.1125863788042,42.2076982428859,36.5182360716537,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5585389405455707919" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" />
          <cm:tzLabel Name="Lable41" Content="نام شعبه" Width="60.646666666666675" Height="24.483333333333331" Margin="0,19.8384139438836,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4905267092464358396" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzTextBox Name="txtBranchName" Width="161" Height="22" Margin="7.7391931014331,59.856182533884,16,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5217194399413537243" Grid.Column="5" Grid.Row="2" />
          <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="62.603333333333339" Height="24.483333333333334" Margin="0,19.8384139438834,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="120" Height="22" Margin="45.5785467722949,59.8561825338841,17.8077930952336,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5625107840618892731" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="5.01078558562733,45.3217472772167,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:tzLabel Name="Lable25" Content="وضعیت پذیرش تیکت" Width="115.07666666666667" Height="24.483333333333331" Margin="0,9.1844821828853,9.76945509786293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="159.99999999999994" Height="22" Margin="0,36.1994337828857,9.76945509786299,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:IsVisibleItem="True" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="32.5533240000002,54.1994337828854,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" />
          <cm:TZButton Name="btn" Content="جستجو" Width="113.88715596" Height="23.000000000000014" Margin="28.6661680400003,0,35.2161310978627,52.9654321666674" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5085118562169711603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox43" Width="1136" Height="328" ControlID="5082972989311477587" Canvas.Left="41.60955056" Canvas.Top="562.28720974" cm:Header="">
      <Canvas>
        <cm:Grid Width="1102" Height="290.51666667" ControlID="5082189760708712518" Canvas.Left="14" Canvas.Top="8">
          <cm:tzDataGrid Name="grvSM" Width="1077" Height="225.51666667" Margin="16.9999999999999,33.0303030433332,8,31.9696969566668" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" AlternatingRowBackground="#FF16ED07" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="True" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره فرآیند" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="True" SortMemberPath="شماره فرآیند">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره فرآیند}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="32" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ردیف" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ردیف">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ردیف}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="شماره فرآیند" DataTextField="شماره تیکت" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="شماره تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding شماره تیکت}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding شماره فرآیند}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت تیکت" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت تیکت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="وضعیت پذیرش تیکت" DecimalMark="False" HeaderText="وضعیت پذیرش تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="وضعیت پذیرش تیکت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding وضعیت پذیرش تیکت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="بانک" DecimalMark="False" HeaderText="بانک" IsRowColorField="False" KeyField="False" SortMemberPath="بانک">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding بانک}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه صادر کننده" DecimalMark="False" HeaderText="گروه صادر کننده" IsRowColorField="False" KeyField="False" SortMemberPath="گروه صادر کننده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه صادر کننده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شعبه" DecimalMark="False" HeaderText="شعبه" IsRowColorField="False" KeyField="False" SortMemberPath="شعبه">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شعبه}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="باجه" DecimalMark="False" HeaderText="باجه" IsRowColorField="False" KeyField="False" SortMemberPath="باجه">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding باجه}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کد تجهیز" DecimalMark="False" HeaderText="کد تجهیز" IsRowColorField="False" KeyField="False" SortMemberPath="کد تجهیز">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کد تجهیز}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کارشناس ثبت کننده" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="کارشناس ثبت کننده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کارشناس ثبت کننده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="39" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اولویت" DecimalMark="False" HeaderText="اولویت" IsRowColorField="False" KeyField="False" SortMemberPath="اولویت">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اولویت}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان صدور" DecimalMark="False" HeaderText="زمان صدور" IsRowColorField="False" KeyField="False" SortMemberPath="زمان صدور">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان صدور}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="نام سرویس" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="نام سرویس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding نام سرویس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="گروه مشکل" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="گروه مشکل">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding گروه مشکل}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="140" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="عنوان مشکل" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="عنوان مشکل">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding عنوان مشکل}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="اقدام" DecimalMark="False" HeaderText="اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="اقدام">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding اقدام}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="108" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان ارجاع به فرادیس" DecimalMark="False" HeaderText="زمان ارجاع به فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="زمان ارجاع به فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان ارجاع به فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="116" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="زمان برگشت از فرادیس" DecimalMark="False" HeaderText="زمان برگشت از فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="زمان برگشت از فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding زمان برگشت از فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="color" DataTextField="color" DecimalMark="False" HeaderText="color" IsRowColorField="True" KeyField="False" SortMemberPath="color">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding color}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="دفتر متولی" DecimalMark="False" HeaderText="دفتر متولی" IsRowColorField="False" KeyField="False" SortMemberPath="دفتر متولی">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding دفتر متولی}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="کارشناس" DecimalMark="False" HeaderText="کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تلفن کارشناس" DecimalMark="False" HeaderText="تلفن کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="تلفن کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تلفن کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="موبایل کارشناس" DecimalMark="False" HeaderText="موبایل کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="موبایل کارشناس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding موبایل کارشناس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="122" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="تاریخ رفع مشکل فرادیس" DecimalMark="False" HeaderText="تاریخ رفع مشکل فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="تاریخ رفع مشکل فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding تاریخ رفع مشکل فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="131" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ساعت رفع مشکل فرادیس" DecimalMark="False" HeaderText="ساعت رفع مشکل فرادیس" IsRowColorField="False" KeyField="False" SortMemberPath="ساعت رفع مشکل فرادیس">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ساعت رفع مشکل فرادیس}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="شماره کار" DecimalMark="False" HeaderText="شماره کار" IsRowColorField="False" KeyField="False" SortMemberPath="شماره کار">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding شماره کار}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="118" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="آخرین گروه ارجاع گیرنده" DecimalMark="False" HeaderText="آخرین گروه ارجاع گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="آخرین گروه ارجاع گیرنده">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding آخرین گروه ارجاع گیرنده}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="110.00000000000001" Height="24.999999999999996" Margin="94.8542016599997,0,0,142.578512386667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/21 15:36:25', GUID = 'a0cb5d5d-f84c-470c-aca3-a584899c813d', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201832" ,"components": [{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbBatchFinished","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5585389405455707919" , "dataSourceName":"dsBatchFinished" , "controlType": "datasource",  "selectQuery" :"select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM dbo.Tbl_Cu_ProblemGroup" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"SELECT UserId, FullName FROM Users.TblProfiles" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from Tbl_CU_Service" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5217194399413537243","label": "txtBranchName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201832
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm201832') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm201832] ( [frm201832Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [nvarchar] ( 50) NULL , [Col_5081194363345449817]  [nvarchar] ( 50) NULL , [Col_5053119443844496676]  [int] NULL , [Col_5217194399413537243]  [nvarchar] ( 50) NULL , [Col_5206205529288027938]  [nvarchar] ( 50) NULL , [Col_4866769076819097450]  [nvarchar] ( 50) NULL , [Col_5172994599657882546]  [nvarchar] ( 50) NULL , [Col_5610629158270476969]  [nvarchar] ( 50) NULL , [Col_4909725041652514354]  [nvarchar] ( 50) NULL , [Col_4854957732111386219]  [nvarchar] ( 50) NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4875705021739424097]  [nvarchar] ( 10) NULL , [Col_5625107840618892731]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm201832Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'frm201832Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD frm201832Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4720739133189081212' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4720739133189081212 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5081194363345449817' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5081194363345449817 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5053119443844496676' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5053119443844496676 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5217194399413537243' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5217194399413537243 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5206205529288027938' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5206205529288027938 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4866769076819097450' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4866769076819097450 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5172994599657882546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5172994599657882546 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5610629158270476969' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5610629158270476969 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4909725041652514354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4909725041652514354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4854957732111386219' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4854957732111386219 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4895068962898797083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4895068962898797083 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5474774259234621899' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5474774259234621899 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_4875705021739424097' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_4875705021739424097 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201832' AND COLUMN_NAME = 'Col_5625107840618892731' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201832] ADD Col_5625107840618892731 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm201832]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm201832
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm201832] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS nvarchar(50),  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5217194399413537243 AS nvarchar(50),  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_4895068962898797083 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4875705021739424097 AS nvarchar(10),  @Col_5625107840618892731 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm201832](Col_4720739133189081212,Col_5081194363345449817,Col_5053119443844496676,Col_5217194399413537243,Col_5206205529288027938,Col_4866769076819097450,Col_5172994599657882546,Col_5610629158270476969,Col_4909725041652514354,Col_4854957732111386219,Col_4895068962898797083,Col_5474774259234621899,Col_4875705021739424097,Col_5625107840618892731) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_5053119443844496676,@Col_5217194399413537243,@Col_5206205529288027938,@Col_4866769076819097450,@Col_5172994599657882546,@Col_5610629158270476969,@Col_4909725041652514354,@Col_4854957732111386219,@Col_4895068962898797083,@Col_5474774259234621899,@Col_4875705021739424097,@Col_5625107840618892731 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm201832]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm201832
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm201832] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS nvarchar(50),  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5217194399413537243 AS nvarchar(50),  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_4895068962898797083 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4875705021739424097 AS nvarchar(10),  @Col_5625107840618892731 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm201832] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_5053119443844496676 =  @Col_5053119443844496676, Col_5217194399413537243 =  @Col_5217194399413537243, Col_5206205529288027938 =  @Col_5206205529288027938, Col_4866769076819097450 =  @Col_4866769076819097450, Col_5172994599657882546 =  @Col_5172994599657882546, Col_5610629158270476969 =  @Col_5610629158270476969, Col_4909725041652514354 =  @Col_4909725041652514354, Col_4854957732111386219 =  @Col_4854957732111386219, Col_4895068962898797083 =  @Col_4895068962898797083, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4875705021739424097 =  @Col_4875705021739424097, Col_5625107840618892731 =  @Col_5625107840618892731 WHERE [frm201832Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 201839) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (201839, N'BPR VSAT View',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" Width="1234" Height="1623.44666667" Background="White">
  <Canvas Width="1200" Height="1561">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox59" Width="1162" Height="487" ControlID="5334734993761597607" Canvas.Left="18.75783691" Canvas.Top="16.96264227" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1139.69207317" Height="444" ControlID="4956175694669750199" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.17099907359245*" />
            <ColumnDefinition Width="0.156765073699937*" />
            <ColumnDefinition Width="0.163351841502456*" />
            <ColumnDefinition Width="0.160717134381449*" />
            <ColumnDefinition Width="0.173890669986486*" />
            <ColumnDefinition Width="0.174276206837222*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199389177546752*" />
            <RowDefinition Height="0.19823930335294*" />
            <RowDefinition Height="0.199930043680043*" />
            <RowDefinition Height="0.199676432630978*" />
            <RowDefinition Height="0.202765042789287*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable8" Content="تاریخ از" Width="43.99666666666667" Height="24.483333333333334" Margin="0,8,15.1634235900001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4760747404024124304" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:PDatePicker Name="pcFromDate" Width="120" Height="20" Margin="0,37.9666666700001,41.0072815500005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5181499922404295787" TabIndex="1" Grid.Column="5" Grid.Row="0" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable11" Content="تا" Width="16.906666666666666" Height="24.483333333333334" Margin="0,8.00000000000006,16.4051850954828,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5240352845304954624" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:PDatePicker Name="ptToDate" Width="120" Height="20" Margin="43.8699664196691,41.4833333333334,34.3118517621493,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5094242323863844211" TabIndex="2" Grid.Column="4" Grid.Row="0" cm:DefaultValue="$CurrentDate" />
          <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="71" Height="20" Margin="32.776633086336,7.48333333333339,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278001863412353071" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsEnableProvince" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="4935142266626503991#5361447700624157680#4790470386806681430#4665241607266102242#4871454131912062679#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4665241607266102242#4871454131912062679#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzDataSource Name="dsEnableProvince" Content="dsEnableProvince" Width="117" Height="24.999999999999996" Margin="0,0,22.7847182636639,56.0454614974246" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4675424502671867223" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" />
          <cm:tzLabel Name="Lable28" Content="بانک" Width="31.876666666666669" Height="24.483333333333334" Margin="0,33.4833333333333,3.85507861699784,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5040226040766687963" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="151.09567567000033" Height="22" Margin="0,0,22.7847182636638,7.56212816075792" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5509524007198657218" Grid.Column="3" Grid.Row="0" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataBindingField="Customerkey" cm:TabIndex="3" cm:tzDisplayItem="CustomerName" cm:tzValueItem="Customerkey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="17.287650143471,50.9666666700001,55.8803939336641,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4920230569762664582" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" />
          <cm:tzLabel Name="Lable32" Content="کد شعبه" Width="54.716666666666669" Height="24.483333333333334" Margin="0,16.0000000000001,14.4927102198624,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5202855161479270559" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchCode" Width="63" Height="21" Margin="61.3281884682083,0,0,12.5621281607579" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4857410465110087981" FontWeight="SemiBold" Foreground="#FFFC0505" Grid.Column="2" Grid.Row="0" cm:Len="8" cm:TabIndex="4" />
          <cm:tzLabel Name="Lable3031" Content="کد پایانه فضایی" Width="86.87" Height="24.483333333333334" Margin="0,16.0000000000001,7.04506242845747,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4853228287717037392" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtVsatCode" Width="98.103333329999188" Height="21" Margin="14.7488570739372,0,0,18.0454614974245" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5675084375244981955" FontWeight="SemiBold" Foreground="#FFFC0505" Grid.Column="1" Grid.Row="0" cm:Len="15" cm:TabIndex="5" />
          <cm:tzLabel Name="Lable68" Content="شماره شبکه" Width="73.89298268" Height="23" Margin="0,17.4833333333334,14.6024942727288,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5739659099930175832" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtNetworkNumber" Width="84" Height="21" Margin="57.74216309,0,0,18.0454614974245" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4665241607266102242" FontWeight="SemiBold" Foreground="#FFF90707" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:Len="20" />
          <cm:TZCheckBox Name="chbDisable" Content="Disable" Width="68" Height="20" Margin="23.3739487815424,7.48333333333335,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5098920804702458156" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5172994599657882546#" cm:TMCol="" cm:TVCol="" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,3.00000000000001,85.1438011717909,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtRegisteredUserId" Width="120" Height="16" Margin="44.76306603,6.48333333,30.1232226627287,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4832447581159095034" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable25" Content="Ticket وضعیت" Width="80.69" Height="24.483333333333334" Margin="0,6.3014106292422,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="164.9966666666671" Height="22" Margin="0,0,15.1634235900001,17.1969301594633" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5206205529288027938" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="10.4611212178498,40.8213205292421,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_TicketStatus_VSAT_BPR" />
          <cm:tzLabel Name="Lable30" Content="استان" Width="40.36333333333333" Height="24.483333333333334" Margin="0,32.301410629242,14.7847182636641,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4962844059786634947" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProvince" Width="160" Height="22.000000000000007" Margin="0,57.7847439625754,8.921375223665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935142266626503991" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsTown,dsCity" cm:TabIndex="6" cm:tzDisplayItem="Name" cm:tzValueItem="ProvinceId" />
          <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" Margin="17.0199924801377,45.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5430619111372109902" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="68.41" Height="24.483333333333334" Margin="0,15.3379871959088,12.3753576188162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbService" Width="159.09567567000022" Height="22" Margin="0,0,12.3753576188162,17.1969301594633" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.7766330863361,45.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" />
          <cm:tzLabel Name="Lable81" Content="اینروت" Width="61.029827476665957" Height="22.999999999999996" Margin="0,4.81743923387012,12.3753576188162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4734728212052016057" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:tzTextBox Name="txtInroot" Width="83" Height="21" Margin="20.776633086336,50.8174392305367,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4871454131912062679" FontWeight="SemiBold" Foreground="#FFF70404" TextAlignment="Center" Grid.Column="4" Grid.Row="2" cm:Len="20" />
          <cm:tzLabel Name="Lable50" Content="نام فرایند" Width="74.806666669999913" Height="23" Margin="0,4.81743923386989,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4867435586594311648" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbFilterType" Width="172.99666666666755" Height="22" Margin="0,44.1147365205367,15.1634235900001,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="5" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4673855555767051755" cm:DataBinding="dsFilterType" cm:DefaultValue="$دومی" cm:Event="dsEnableProvince,dsrRegGroup" cm:TabIndex="8" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsFilterType" Content="dsFilterType" Width="110" Height="25" Margin="10.4611212178498,28.8174392338699,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4996887301757334923" Grid.Column="5" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" />
          <cm:tzLabel Name="Lable66" Content="شهرستان" Width="60.830000000000005" Height="24.483333333333334" Margin="0,23.3379871959086,14.4927102165293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5305789425836294089" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTown" Width="149" Height="21.999999999999993" Margin="0,48.821320529242,14.4927102165293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4790470386806681430" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTown" cm:Event="dsCity" cm:IsVisibleItem="True" cm:TabIndex="7" cm:tzDisplayItem="Name" cm:tzValueItem="TownId" />
          <cm:tzDataSource Name="dsTown" Content="dsTown" Width="110" Height="25.000000000000004" Margin="178.512000527271,35.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5516489239497039057" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " />
          <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="63.366666666666667" Height="24.483333333333334" Margin="0,3.33410590053666,8.921375223665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="159.09567567000011" Height="22" Margin="0,36.8174392305367,14.7847182636641,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="3" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" Margin="0,28.81743923387,73.2880418903319,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
          <cm:tzLabel Name="Lable5556" Content="گروه ثبت کننده" Width="88" Height="23" Margin="0,7.78474396257538,8.05955890939674,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4634095685438495186" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegGroup" Width="162.89333333" Height="21.999999999999993" Margin="0,48.821320529242,14.6024942727288,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5016415677319074138" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsrRegGroup" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzDataSource Name="dsrRegGroup" Content="dsrRegGroup" Width="110" Height="25" Margin="17.3904610899999,35.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5690234546922349246" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" />
          <cm:tzLabel Name="Lable59" Content="شهر" Width="33.36" Height="24.483333333333334" Margin="0,6.3014106292421,23.2577671784576,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5432204195071583342" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbCity" Width="147" Height="22" Margin="0,48.821320529242,23.2577671784576,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5361447700624157680" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:TabIndex="8" cm:tzDisplayItem="CityName" cm:tzValueItem="CityId" />
          <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="24.999999999999996" Margin="11.0461446672714,31.7847439625754,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5009463879945094326" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="69.083333333333343" Height="24.483333333333338" Margin="0,8.33410589720341,24.7135167831955,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="160" Height="22" Margin="11.6780886815418,0,0,16.9515001634024" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="2" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25.000000000000007" Margin="14.3281884682082,33.8174392305367,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
          <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="58.360000000000007" Height="24.483333333333334" Margin="0,8.33410589720336,14.0215509584586,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="150.88414413000015" Height="22" Margin="0,0,14.0215509584586,16.9515001634024" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5625107840618892731" Grid.Column="1" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="14.7488570739372,28.81743923387,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="106" Height="23.000000000000004" Margin="0,6.79658023844365,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5274890025583964238" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:Event="dsSearch" />
          <cm:TZReport Name="repVSATView" Content="گزارش" Width="106" Height="22.999999999999993" Margin="0,38.7965802384438,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5019857861494933177" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:ComponentType=",FromDate#,ToDate#,BankCode#,BranchCode#,ProvinceId#,TownId#,CityId#,TicketStatus#,ServiceId#,SubServiceId#,ProblemGroupId#,RegisteredUserId#tzLookUpComboBox,FilterType#tzTextBox,NetWorkNumber#tzTextBox,Inroot#tzLookUpComboBox,BranchType#" cm:IsVisibleItem="True" cm:ReportID="90" cm:ReportParamId="5181499922404295787,pcFromDate,FromDate#5094242323863844211,ptToDate,ToDate#5509524007198657218,cmbBank,BankCode#4857410465110087981,txtBranchCode,BranchCode#4935142266626503991,cmbProvince,ProvinceId#4790470386806681430,cmbTown,TownId#5361447700624157680,cmbCity,CityId#5206205529288027938,cmbTicketStatus,TicketStatus#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,SubServiceId#5610629158270476969,cmbProblemGroup,ProblemGroupId#4832447581159095034,txtRegisteredUserId,RegisteredUserId#4673855555767051755,cmbFilterType,FilterType#4665241607266102242,txtNetworkNumber,NetWorkNumber#4871454131912062679,txtInroot,Inroot#5625107840618892731,cmbBranchType,BranchType#" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox61" Width="1154.59202535" Height="387" ControlID="5671029837280607169" Canvas.Left="18.757836910000037" Canvas.Top="518.2807989" cm:Header="نتیجه جستجو">
      <Canvas>
        <cm:Grid Width="1121" Height="342" ControlID="4931347243743187215" Canvas.Left="8" Canvas.Top="8">
          <cm:tzDataGrid Name="gvSearch" Width="1073" Height="280.24" Margin="21.69952046,30.75977321,26.30047954,31.00022679" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" AlternatingRowBackground="#FFF9EFD1" ControlID="5710632539878692339" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:BindingForm="dsSearch" cm:IsSearchable="True" cm:KeyField="WFID" cm:UserCanExport="True">
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
          <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" Margin="70.27306716,176.734143856666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4931247600594757990" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" />
          <Grid.ColumnDefinitions />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/04/21 11:49:39', '4487c33a-40df-4d4a-85d0-18df9f8a7fff', 0, N'', N'{"formID": "201839" ,"components": [{"value": "","key": "5098920804702458156","label": "chbDisable","controlType": "checkbox","caption": "Disable" ,"DataBindingField" : ""},{"value": "","key": "5278001863412353071","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : "Column1"},{"key": "5509524007198657218","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5361447700624157680","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4673855555767051755","label": "cmbFilterType","value": "$دومی", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4935142266626503991","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5016415677319074138","label": "cmbRegGroup","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key": "4790470386806681430","label": "cmbTown","value": "", "controlType": "dropdown","options":""},{"key":"4920230569762664582" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5009463879945094326" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4675424502671867223" , "dataSourceName":"dsEnableProvince" , "controlType": "datasource",  "selectQuery" :"if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4996887301757334923" , "dataSourceName":"dsFilterType" , "controlType": "datasource",  "selectQuery" :"SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5430619111372109902" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5690234546922349246" , "dataSourceName":"dsrRegGroup" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4931247600594757990" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_TicketStatus_VSAT_BPR" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5516489239497039057" , "dataSourceName":"dsTown" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4857410465110087981","label": "txtBranchCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4871454131912062679","label": "txtInroot","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4665241607266102242","label": "txtNetworkNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832447581159095034","label": "txtRegisteredUserId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5675084375244981955","label": "txtVsatCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'BPR VSAT View',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" Width="1234" Height="1623.44666667" Background="White">
  <Canvas Width="1200" Height="1561">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox59" Width="1162" Height="487" ControlID="5334734993761597607" Canvas.Left="18.75783691" Canvas.Top="16.96264227" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1139.69207317" Height="444" ControlID="4956175694669750199" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.17099907359245*" />
            <ColumnDefinition Width="0.156765073699937*" />
            <ColumnDefinition Width="0.163351841502456*" />
            <ColumnDefinition Width="0.160717134381449*" />
            <ColumnDefinition Width="0.173890669986486*" />
            <ColumnDefinition Width="0.174276206837222*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199389177546752*" />
            <RowDefinition Height="0.19823930335294*" />
            <RowDefinition Height="0.199930043680043*" />
            <RowDefinition Height="0.199676432630978*" />
            <RowDefinition Height="0.202765042789287*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable8" Content="تاریخ از" Width="43.99666666666667" Height="24.483333333333334" Margin="0,8,15.1634235900001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4760747404024124304" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:PDatePicker Name="pcFromDate" Width="120" Height="20" Margin="0,37.9666666700001,41.0072815500005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5181499922404295787" TabIndex="1" Grid.Column="5" Grid.Row="0" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable11" Content="تا" Width="16.906666666666666" Height="24.483333333333334" Margin="0,8.00000000000006,16.4051850954828,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5240352845304954624" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:PDatePicker Name="ptToDate" Width="120" Height="20" Margin="43.8699664196691,41.4833333333334,34.3118517621493,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5094242323863844211" TabIndex="2" Grid.Column="4" Grid.Row="0" cm:DefaultValue="$CurrentDate" />
          <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="71" Height="20" Margin="32.776633086336,7.48333333333339,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278001863412353071" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsEnableProvince" cm:DataBindingField="Column1" cm:FCVCol="" cm:FECol="4935142266626503991#5361447700624157680#4790470386806681430#4665241607266102242#4871454131912062679#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="4665241607266102242#4871454131912062679#" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzDataSource Name="dsEnableProvince" Content="dsEnableProvince" Width="117" Height="24.999999999999996" Margin="0,0,22.7847182636639,56.0454614974246" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4675424502671867223" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" />
          <cm:tzLabel Name="Lable28" Content="بانک" Width="31.876666666666669" Height="24.483333333333334" Margin="0,33.4833333333333,3.85507861699784,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5040226040766687963" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="151.09567567000033" Height="22" Margin="0,0,22.7847182636638,7.56212816075792" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5509524007198657218" Grid.Column="3" Grid.Row="0" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataBindingField="Customerkey" cm:TabIndex="3" cm:tzDisplayItem="CustomerName" cm:tzValueItem="Customerkey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="17.287650143471,50.9666666700001,55.8803939336641,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4920230569762664582" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" />
          <cm:tzLabel Name="Lable32" Content="کد شعبه" Width="54.716666666666669" Height="24.483333333333334" Margin="0,16.0000000000001,14.4927102198624,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5202855161479270559" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchCode" Width="63" Height="21" Margin="61.3281884682083,0,0,12.5621281607579" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4857410465110087981" FontWeight="SemiBold" Foreground="#FFFC0505" Grid.Column="2" Grid.Row="0" cm:Len="8" cm:TabIndex="4" />
          <cm:tzLabel Name="Lable3031" Content="کد پایانه فضایی" Width="86.87" Height="24.483333333333334" Margin="0,16.0000000000001,7.04506242845747,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4853228287717037392" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtVsatCode" Width="98.103333329999188" Height="21" Margin="14.7488570739372,0,0,18.0454614974245" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5675084375244981955" FontWeight="SemiBold" Foreground="#FFFC0505" Grid.Column="1" Grid.Row="0" cm:Len="15" cm:TabIndex="5" />
          <cm:tzLabel Name="Lable68" Content="شماره شبکه" Width="73.89298268" Height="23" Margin="0,17.4833333333334,14.6024942727288,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5739659099930175832" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtNetworkNumber" Width="84" Height="21" Margin="57.74216309,0,0,18.0454614974245" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4665241607266102242" FontWeight="SemiBold" Foreground="#FFF90707" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:Len="20" />
          <cm:TZCheckBox Name="chbDisable" Content="Disable" Width="68" Height="20" Margin="23.3739487815424,7.48333333333335,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5098920804702458156" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5172994599657882546#" cm:TMCol="" cm:TVCol="" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,3.00000000000001,85.1438011717909,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtRegisteredUserId" Width="120" Height="16" Margin="44.76306603,6.48333333,30.1232226627287,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4832447581159095034" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable25" Content="Ticket وضعیت" Width="80.69" Height="24.483333333333334" Margin="0,6.3014106292422,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="164.9966666666671" Height="22" Margin="0,0,15.1634235900001,17.1969301594633" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5206205529288027938" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="10.4611212178498,40.8213205292421,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_TicketStatus_VSAT_BPR" />
          <cm:tzLabel Name="Lable30" Content="استان" Width="40.36333333333333" Height="24.483333333333334" Margin="0,32.301410629242,14.7847182636641,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4962844059786634947" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProvince" Width="160" Height="22.000000000000007" Margin="0,57.7847439625754,8.921375223665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935142266626503991" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsTown,dsCity" cm:TabIndex="6" cm:tzDisplayItem="Name" cm:tzValueItem="ProvinceId" />
          <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" Margin="17.0199924801377,45.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5430619111372109902" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="68.41" Height="24.483333333333334" Margin="0,15.3379871959088,12.3753576188162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbService" Width="159.09567567000022" Height="22" Margin="0,0,12.3753576188162,17.1969301594633" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.7766330863361,45.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" />
          <cm:tzLabel Name="Lable81" Content="اینروت" Width="61.029827476665957" Height="22.999999999999996" Margin="0,4.81743923387012,12.3753576188162,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4734728212052016057" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:tzTextBox Name="txtInroot" Width="83" Height="21" Margin="20.776633086336,50.8174392305367,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4871454131912062679" FontWeight="SemiBold" Foreground="#FFF70404" TextAlignment="Center" Grid.Column="4" Grid.Row="2" cm:Len="20" />
          <cm:tzLabel Name="Lable50" Content="نام فرایند" Width="74.806666669999913" Height="23" Margin="0,4.81743923386989,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4867435586594311648" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbFilterType" Width="172.99666666666755" Height="22" Margin="0,44.1147365205367,15.1634235900001,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="5" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4673855555767051755" cm:DataBinding="dsFilterType" cm:DefaultValue="$دومی" cm:Event="dsEnableProvince,dsrRegGroup" cm:TabIndex="8" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsFilterType" Content="dsFilterType" Width="110" Height="25" Margin="10.4611212178498,28.8174392338699,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4996887301757334923" Grid.Column="5" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" />
          <cm:tzLabel Name="Lable66" Content="شهرستان" Width="60.830000000000005" Height="24.483333333333334" Margin="0,23.3379871959086,14.4927102165293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5305789425836294089" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTown" Width="149" Height="21.999999999999993" Margin="0,48.821320529242,14.4927102165293,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4790470386806681430" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTown" cm:Event="dsCity" cm:IsVisibleItem="True" cm:TabIndex="7" cm:tzDisplayItem="Name" cm:tzValueItem="TownId" />
          <cm:tzDataSource Name="dsTown" Content="dsTown" Width="110" Height="25.000000000000004" Margin="178.512000527271,35.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5516489239497039057" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " />
          <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="63.366666666666667" Height="24.483333333333334" Margin="0,3.33410590053666,8.921375223665,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="159.09567567000011" Height="22" Margin="0,36.8174392305367,14.7847182636641,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="3" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" Margin="0,28.81743923387,73.2880418903319,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
          <cm:tzLabel Name="Lable5556" Content="گروه ثبت کننده" Width="88" Height="23" Margin="0,7.78474396257538,8.05955890939674,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4634095685438495186" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegGroup" Width="162.89333333" Height="21.999999999999993" Margin="0,48.821320529242,14.6024942727288,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5016415677319074138" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsrRegGroup" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzDataSource Name="dsrRegGroup" Content="dsrRegGroup" Width="110" Height="25" Margin="17.3904610899999,35.821320529242,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5690234546922349246" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" />
          <cm:tzLabel Name="Lable59" Content="شهر" Width="33.36" Height="24.483333333333334" Margin="0,6.3014106292421,23.2577671784576,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5432204195071583342" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbCity" Width="147" Height="22" Margin="0,48.821320529242,23.2577671784576,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5361447700624157680" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:TabIndex="8" cm:tzDisplayItem="CityName" cm:tzValueItem="CityId" />
          <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="24.999999999999996" Margin="11.0461446672714,31.7847439625754,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5009463879945094326" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="69.083333333333343" Height="24.483333333333338" Margin="0,8.33410589720341,24.7135167831955,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="160" Height="22" Margin="11.6780886815418,0,0,16.9515001634024" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="2" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25.000000000000007" Margin="14.3281884682082,33.8174392305367,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " />
          <cm:tzLabel Name="Lable5758" Content="نوع شعبه" Width="58.360000000000007" Height="24.483333333333334" Margin="0,8.33410589720336,14.0215509584586,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="150.88414413000015" Height="22" Margin="0,0,14.0215509584586,16.9515001634024" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5625107840618892731" Grid.Column="1" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="14.7488570739372,28.81743923387,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="106" Height="23.000000000000004" Margin="0,6.79658023844365,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5274890025583964238" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:Event="dsSearch" />
          <cm:TZReport Name="repVSATView" Content="گزارش" Width="106" Height="22.999999999999993" Margin="0,38.7965802384438,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5019857861494933177" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:ComponentType=",FromDate#,ToDate#,BankCode#,BranchCode#,ProvinceId#,TownId#,CityId#,TicketStatus#,ServiceId#,SubServiceId#,ProblemGroupId#,RegisteredUserId#tzLookUpComboBox,FilterType#tzTextBox,NetWorkNumber#tzTextBox,Inroot#tzLookUpComboBox,BranchType#" cm:IsVisibleItem="True" cm:ReportID="90" cm:ReportParamId="5181499922404295787,pcFromDate,FromDate#5094242323863844211,ptToDate,ToDate#5509524007198657218,cmbBank,BankCode#4857410465110087981,txtBranchCode,BranchCode#4935142266626503991,cmbProvince,ProvinceId#4790470386806681430,cmbTown,TownId#5361447700624157680,cmbCity,CityId#5206205529288027938,cmbTicketStatus,TicketStatus#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,SubServiceId#5610629158270476969,cmbProblemGroup,ProblemGroupId#4832447581159095034,txtRegisteredUserId,RegisteredUserId#4673855555767051755,cmbFilterType,FilterType#4665241607266102242,txtNetworkNumber,NetWorkNumber#4871454131912062679,txtInroot,Inroot#5625107840618892731,cmbBranchType,BranchType#" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox61" Width="1154.59202535" Height="387" ControlID="5671029837280607169" Canvas.Left="18.757836910000037" Canvas.Top="518.2807989" cm:Header="نتیجه جستجو">
      <Canvas>
        <cm:Grid Width="1121" Height="342" ControlID="4931347243743187215" Canvas.Left="8" Canvas.Top="8">
          <cm:tzDataGrid Name="gvSearch" Width="1073" Height="280.24" Margin="21.69952046,30.75977321,26.30047954,31.00022679" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" AlternatingRowBackground="#FFF9EFD1" ControlID="5710632539878692339" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:BindingForm="dsSearch" cm:IsSearchable="True" cm:KeyField="WFID" cm:UserCanExport="True">
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
          <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" Margin="70.27306716,176.734143856666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4931247600594757990" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" />
          <Grid.ColumnDefinitions />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/21 11:49:39', GUID = '4487c33a-40df-4d4a-85d0-18df9f8a7fff', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201839" ,"components": [{"value": "","key": "5098920804702458156","label": "chbDisable","controlType": "checkbox","caption": "Disable" ,"DataBindingField" : ""},{"value": "","key": "5278001863412353071","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : "Column1"},{"key": "5509524007198657218","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5361447700624157680","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4673855555767051755","label": "cmbFilterType","value": "$دومی", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4935142266626503991","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "5016415677319074138","label": "cmbRegGroup","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key": "4790470386806681430","label": "cmbTown","value": "", "controlType": "dropdown","options":""},{"key":"4920230569762664582" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT  CustomerName + '' ('' + CAST(CustomerCode AS NVARCHAR(10)) + '')'' AS  [CustomerName] ,Customerkey  FROM Tbl_CU_BPR_Customer   WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = '''' THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5009463879945094326" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"  SELECT * FROM Tbl_CU_BPR_City   WHERE TownId =(select TownKey from Tbl_CU_BPR_Town where TownId= {@cmbTown})  ORDER BY CityName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4675424502671867223" , "dataSourceName":"dsEnableProvince" , "controlType": "datasource",  "selectQuery" :"if isnull({@cmbFilterType},0)=1 begin select ''True'' end else select ''False''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4996887301757334923" , "dataSourceName":"dsFilterType" , "controlType": "datasource",  "selectQuery" :"SELECT 1 AS ID , ''VSAT-امداد مشتریان'' AS Name  UNION SELECT 2 AS ID , ''VSAT-پایانه های شبکه فضایی''" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_Cu_ProblemGroup  WHERE SubServiceId={@cmbSubService} AND [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5430619111372109902" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Province ORDER BY Name" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5690234546922349246" , "dataSourceName":"dsrRegGroup" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_VSAT_GetRegisterGroup {@cmbFilterType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4931247600594757990" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_SearchTicketVSATTicket  {@pcFromDate},{@ptToDate},{@cmbBank}, {@txtBranchCode},{@cmbProvince}, {@cmbTown},{@cmbCity},{@txtVsatCode},  {@cmbTicketStatus},{@cmbService}, {@cmbSubService},{@cmbProblemGroup}, {@txtRegisteredUserId}, {@cmbRegGroup},{@txtNetworkNumber},{@txtInroot}, {@cmbFilterType},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from  dbo.Tbl_Cu_service WHERE Status = 1 AND ServiceCode = 1064 ORDER BY DisplayOrder" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_SubService  WHERE ServiceId = 65 AND  [Status] = 1 ORDER BY [Status] DESC, DisplayOrder " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_TicketStatus_VSAT_BPR" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5516489239497039057" , "dataSourceName":"dsTown" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Town  where provincekey =(select ProvinceKey from Tbl_CU_BPR_Province    where ProvinceID= {@cmbProvince} )  ORDER BY Name " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4857410465110087981","label": "txtBranchCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4871454131912062679","label": "txtInroot","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4665241607266102242","label": "txtNetworkNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832447581159095034","label": "txtRegisteredUserId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5675084375244981955","label": "txtVsatCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201839
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
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 202034) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (202034, N'فرم جستجو ثبت تیکت شفق',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1190" Height="1181.72333333" Background="White">
  <Canvas Width="1170" Height="1067">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox4445" Width="1147" Height="552" ControlID="5369219206214886236" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="15.42211712" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1119" Height="514.51666667" ControlID="5704835648193176779" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.157186677293917*" />
            <ColumnDefinition Width="0.168490206023718*" />
            <ColumnDefinition Width="0.167173876289158*" />
            <ColumnDefinition Width="0.167173876289157*" />
            <ColumnDefinition Width="0.168490206023718*" />
            <ColumnDefinition Width="0.171485158080332*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.252092622565772*" />
            <RowDefinition Height="0.254791735791672*" />
            <RowDefinition Height="0.254791735791671*" />
            <RowDefinition Height="0.238323905850885*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable238" Content="نوع سرویس" Width="79.52000000333328" Height="23" Margin="0,13.203117898694,17.29422765,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5159768220192560974" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbShafaghSevicesInformationID" Width="158.25862119" Height="22" Margin="16.3390430518915,68.7658886953605,17.29422765,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4887723304404019372" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ShafaghSevicesName" cm:tzValueItem="ShafaghSevicesInformationID" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="24.999999999999986" Margin="16.3390430518915,54.4670611653607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5600808754086256767" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333331" Margin="0,15.9258543033329,19.2927286775681,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegUser" Width="151.79163192" Height="22" Margin="0,60.12707382,19.2927286775681,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegUser" cm:DataType="Int" cm:tzDisplayItem="UserFullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegUser" Content="dsRegUser" Width="92.387155956666589" Height="25" Margin="25.3632520399985,0,0,21.5787820346394" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5402118367232801633" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " />
          <cm:tzTextBox Name="txtWFID" Width="152.85666666" Height="20.999999999999993" Margin="21.7409975818915,0,17.29422765,30.5787820346394" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4720739133189081212" FontWeight="SemiBold" Foreground="#FFFF0202" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="89" Height="20" Margin="0,8,12.6823500300009,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4848897338105661592" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:TZCheckBox Name="chbFilterDate" Content="chbFilterDate" Width="103" Height="20" Margin="76.698733524773,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5614717349457016048" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsCheckFilterDate" cm:DataBindingField="IsValid" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsCheckFilterDate" Content="dsCheckFilterDate" Width="128.00000000000003" Height="25" Margin="110.30553222,11.0000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5047859374208359026" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666677" Height="24.483333333333334" Margin="0,15.9258543033329,8.41016225144165,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="129.85666665999997" Height="21" Margin="0,68.7574463100001,26.6687834414416,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Grid.Column="4" Grid.Row="0" cm:Len="10" />
          <cm:tzLabel Name="Lable236" Content="زیر سرویس" Width="79.629999999999313" Height="23" Margin="0,13.203117898694,10.9568289181093,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4743625839143732297" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="138.25862119" Height="21.999999999999993" Margin="32.0150904390986,57.4670611653607,18.2668289114418,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5154172817984221498" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsShafaghGroup" cm:tzDisplayItem="ShafaghSubSevicesName" cm:tzValueItem="ShafaghSubSevicesInformationID" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="109.99999999999999" Height="25" Margin="15.3244791590988,0,0,61.3287058992339" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4693615337445523550" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ ثبت از" Width="70.803333333333342" Height="24.483333333333334" Margin="0,39.2741129766669,13.8584652424335,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" Margin="40.6053463447736,0,27.9351941957668,30.5787820346392" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="1" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
          <cm:tzLabel Name="Lable59" Content="تا" Width="27.544856610000526" Height="23" Margin="0,40.7574463100002,15.3383937318933,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:PDatePicker Name="pdToDate" Width="120" Height="20" Margin="40.5534981599999,0,15.3383937318932,21.5787820346393" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت ثبت از" Width="81.460000000000008" Height="24.483333333333334" Margin="0,11.7197845653604,13.8584652424332,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:TzPersianTime Name="ptFromTime" Width="51.999999999999993" Height="20" Margin="0,0,73.1269002124334,40.3287058992339" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="1" Grid.Row="1" cm:DefaultValue="" />
          <cm:tzLabel Name="Lable57" Content="تا" Width="30.393333330000104" Height="23" Margin="0,13.2031178986939,24.3521788818931,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:TzPersianTime Name="ptToTime" Width="52" Height="20" Margin="0,0,49.2895895518922,40.3287058992339" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="0" Grid.Row="1" cm:DefaultValue="" />
          <cm:tzLabel Name="Lable44" Content="نوع تیکت" Width="59.146666666666661" Height="24.483333333333338" Margin="0,19.574084657433,17.29422765,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbTicketType" Width="157.99999999" Height="22.000000000000007" Margin="0,0,25.1245382633333,43.1603857738277" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4998721771557464900" Grid.Column="5" Grid.Row="2" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketType" cm:DefaultValue="$اولی" cm:Event="dsMandatory,dsClearGrid3,dtsCheckVSAT,dsEnableunitCode,DataSource322,dsMandatoryIncidentTree" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="ShafaghTicketType" cm:tzValueItem="ShafaghTicketTypeID" />
          <cm:tzDataSource Name="dsTicketType" Content="dsTicketType" Width="77" Height="25.000000000000007" Margin="28.3685585585581,57.9342088207663,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4870534762343277613" Grid.Column="5" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" />
          <cm:tzLabel Name="Lable258C" Content="گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,11.7197845653606,5.56359783090124,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" cm:ControlID="4726897843095603293" />
          <cm:tzLookUpComboBox Name="CmbProblemGroup" Width="145.25862118999999" Height="22" Margin="36.2453485466655,0,5.56359783090124,51.6275334292337" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5722945023967337425" cm:DataBinding="dsShafaghGroup" cm:DataBindingField="ShafaghProblemGroupInformationID" cm:DefaultValue="" cm:Event="dsTitle" cm:SelectedDataBinding="dsSelectedProblemGroup" cm:TabIndex="16" cm:tzDisplayItem="ShafaghProblemGroupName" cm:tzValueItem="ShafaghProblemGroupInformationID" />
          <cm:tzDataSource Name="dsShafaghGroup" Content="dsShafaghGroup" Width="109.99999999999999" Height="24.999999999999993" Margin="28.2453485466654,44.7658886953605,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4783604119840092644" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="Lable26" Content="نام صندوق" Width="85.980000000000018" Height="24.483333330000008" Margin="0,34.64374049,12.6823500300014,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbShafaghFund" Width="150.13585170999977" Height="22" Margin="0,77.1270738200001,24.2201373000016,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5226164960908557387" TextSearchMode="Contains" Grid.Column="2" Grid.Row="0" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsFund" cm:DataBindingField="ShafaghFundInformationID" cm:Event="dsBranch,dsGetShafaghID" cm:SelectedDataBinding="dsCallData" cm:TabIndex="2" cm:tzDisplayItem="ShafaghFundName" cm:tzValueItem="ShafaghFundInformationID" />
          <cm:tzDataSource Name="dsFund" Content="dsFund" Width="40" Height="25" Margin="47.4052175375664,64.7574463100001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5354940988832056505" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" />
          <cm:tzLabel Name="Lable259C" Content="عنوان مشکل" Width="79.4" Height="24.483333333333334" Margin="0,11.7197845653606,24.2201373000014,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" cm:ControlID="5736312967899308118" />
          <cm:tzLookUpComboBox Name="CmbProblem" Width="145.39262371000007" Height="22" Margin="17.4548065575665,57.4670611653607,24.2201373000012,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5040068565779153190" cm:DataBinding="dsTitle" cm:DataBindingField="ShafaghProblemInformationID" cm:DefaultValue="$اولی" cm:Event="dsAction,dsHelpDesk" cm:SelectedDataBinding="dsSelectedTitle" cm:TabIndex="17" cm:tzDisplayItem="ShafaghProblemName" cm:tzValueItem="ShafaghProblemInformationID" />
          <cm:tzDataSource Name="dsTitle" Content="dsTitle" Width="110" Height="25" Margin="17.4548065575667,42.7658886953605,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5377478888097132560" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghProblemGroupInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="22.999999999999996" Margin="0,42.0143993261722,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid" cm:Validations="5422101555066720170" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox46" Width="1147" Height="425" ControlID="5078432367440224909" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="598.42211712" cm:Header="">
      <Canvas>
        <cm:Grid Width="1119" Height="387.51666667" ControlID="5549349123815738399" Canvas.Left="8" Canvas.Top="8">
          <cm:tzDataGrid Name="grvTicket" Width="812" Height="316.44666667" Margin="177,45.09310018,130,25.97689982" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
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
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding TicketNo}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghTicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghTicketType">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghTicketType}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghFundName" DecimalMark="False" HeaderText="نام صندوق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghFundName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghFundName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IndexCode" DecimalMark="False" HeaderText="کد شاخص" IsRowColorField="False" KeyField="False" SortMemberPath="IndexCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IndexCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghID" DecimalMark="False" HeaderText="شناسه شفق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Sevice" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="Sevice">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Sevice}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubService" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubService">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubService}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="170" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerId" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="CallerId">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerId}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerName" DecimalMark="False" HeaderText="نام تماس گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="CallerName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tel" DecimalMark="False" HeaderText="شماره تلفن" IsRowColorField="False" KeyField="False" SortMemberPath="Tel">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tel}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="42" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndTime" DecimalMark="False" HeaderText="ساعت خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="77" Height="25" Margin="213.84592308,238.084275403333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ShafaghCallInformation_AdvancedSearch">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtTicketNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @TicketNo" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbTicketType}" IsOutputParameter="False" ParameterType="int" SpParamName="  @TicketTypeID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghFund}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghFundID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubServiceId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ProblemGroup" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblem}" IsOutputParameter="False" ParameterType="int" SpParamName="  @problemId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRegUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RegUserId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptFromTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromTime" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptToTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToTime" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/04/21 15:09:24', 'e39fac7c-269d-462e-b2eb-cac962873a25', 0, N'', N'{"formID": "202034" ,"components": [{"value": "","key": "4848897338105661592","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : ""},{"value": "","key": "5614717349457016048","label": "chbFilterDate","controlType": "checkbox","caption": "chbFilterDate" ,"DataBindingField" : "IsValid"},{"key": "5040068565779153190","label": "CmbProblem","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5722945023967337425","label": "CmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegUser","value": "", "controlType": "dropdown","options":""},{"key": "5226164960908557387","label": "cmbShafaghFund","value": "", "controlType": "dropdown","options":""},{"key": "4887723304404019372","label": "cmbShafaghSevicesInformationID","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5154172817984221498","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "cmbTicketType","value": "$اولی", "controlType": "dropdown","options":""},{"key":"5047859374208359026" , "dataSourceName":"dsCheckFilterDate" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5354940988832056505" , "dataSourceName":"dsFund" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"SP_CU_ShafaghCallInformation_AdvancedSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegUser" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5600808754086256767" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783604119840092644" , "dataSourceName":"dsShafaghGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4693615337445523550" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4870534762343277613" , "dataSourceName":"dsTicketType" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5377478888097132560" , "dataSourceName":"dsTitle" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجو ثبت تیکت شفق',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1190" Height="1181.72333333" Background="White">
  <Canvas Width="1170" Height="1067">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox4445" Width="1147" Height="552" ControlID="5369219206214886236" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="15.42211712" cm:Header="&gt;">
      <Canvas>
        <cm:Grid Width="1119" Height="514.51666667" ControlID="5704835648193176779" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.157186677293917*" />
            <ColumnDefinition Width="0.168490206023718*" />
            <ColumnDefinition Width="0.167173876289158*" />
            <ColumnDefinition Width="0.167173876289157*" />
            <ColumnDefinition Width="0.168490206023718*" />
            <ColumnDefinition Width="0.171485158080332*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.252092622565772*" />
            <RowDefinition Height="0.254791735791672*" />
            <RowDefinition Height="0.254791735791671*" />
            <RowDefinition Height="0.238323905850885*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable238" Content="نوع سرویس" Width="79.52000000333328" Height="23" Margin="0,13.203117898694,17.29422765,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5159768220192560974" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbShafaghSevicesInformationID" Width="158.25862119" Height="22" Margin="16.3390430518915,68.7658886953605,17.29422765,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4887723304404019372" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ShafaghSevicesName" cm:tzValueItem="ShafaghSevicesInformationID" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="24.999999999999986" Margin="16.3390430518915,54.4670611653607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5600808754086256767" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333331" Margin="0,15.9258543033329,19.2927286775681,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegUser" Width="151.79163192" Height="22" Margin="0,60.12707382,19.2927286775681,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegUser" cm:DataType="Int" cm:tzDisplayItem="UserFullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegUser" Content="dsRegUser" Width="92.387155956666589" Height="25" Margin="25.3632520399985,0,0,21.5787820346394" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5402118367232801633" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " />
          <cm:tzTextBox Name="txtWFID" Width="152.85666666" Height="20.999999999999993" Margin="21.7409975818915,0,17.29422765,30.5787820346394" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4720739133189081212" FontWeight="SemiBold" Foreground="#FFFF0202" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="89" Height="20" Margin="0,8,12.6823500300009,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4848897338105661592" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:TZCheckBox Name="chbFilterDate" Content="chbFilterDate" Width="103" Height="20" Margin="76.698733524773,8,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5614717349457016048" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsCheckFilterDate" cm:DataBindingField="IsValid" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsCheckFilterDate" Content="dsCheckFilterDate" Width="128.00000000000003" Height="25" Margin="110.30553222,11.0000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5047859374208359026" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666677" Height="24.483333333333334" Margin="0,15.9258543033329,8.41016225144165,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="129.85666665999997" Height="21" Margin="0,68.7574463100001,26.6687834414416,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Grid.Column="4" Grid.Row="0" cm:Len="10" />
          <cm:tzLabel Name="Lable236" Content="زیر سرویس" Width="79.629999999999313" Height="23" Margin="0,13.203117898694,10.9568289181093,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4743625839143732297" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="138.25862119" Height="21.999999999999993" Margin="32.0150904390986,57.4670611653607,18.2668289114418,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5154172817984221498" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsShafaghGroup" cm:tzDisplayItem="ShafaghSubSevicesName" cm:tzValueItem="ShafaghSubSevicesInformationID" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="109.99999999999999" Height="25" Margin="15.3244791590988,0,0,61.3287058992339" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4693615337445523550" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ ثبت از" Width="70.803333333333342" Height="24.483333333333334" Margin="0,39.2741129766669,13.8584652424335,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" Margin="40.6053463447736,0,27.9351941957668,30.5787820346392" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="1" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
          <cm:tzLabel Name="Lable59" Content="تا" Width="27.544856610000526" Height="23" Margin="0,40.7574463100002,15.3383937318933,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:PDatePicker Name="pdToDate" Width="120" Height="20" Margin="40.5534981599999,0,15.3383937318932,21.5787820346393" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت ثبت از" Width="81.460000000000008" Height="24.483333333333334" Margin="0,11.7197845653604,13.8584652424332,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:TzPersianTime Name="ptFromTime" Width="51.999999999999993" Height="20" Margin="0,0,73.1269002124334,40.3287058992339" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="1" Grid.Row="1" cm:DefaultValue="" />
          <cm:tzLabel Name="Lable57" Content="تا" Width="30.393333330000104" Height="23" Margin="0,13.2031178986939,24.3521788818931,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:TzPersianTime Name="ptToTime" Width="52" Height="20" Margin="0,0,49.2895895518922,40.3287058992339" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="0" Grid.Row="1" cm:DefaultValue="" />
          <cm:tzLabel Name="Lable44" Content="نوع تیکت" Width="59.146666666666661" Height="24.483333333333338" Margin="0,19.574084657433,17.29422765,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzLookUpComboBox Name="cmbTicketType" Width="157.99999999" Height="22.000000000000007" Margin="0,0,25.1245382633333,43.1603857738277" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4998721771557464900" Grid.Column="5" Grid.Row="2" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketType" cm:DefaultValue="$اولی" cm:Event="dsMandatory,dsClearGrid3,dtsCheckVSAT,dsEnableunitCode,DataSource322,dsMandatoryIncidentTree" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="ShafaghTicketType" cm:tzValueItem="ShafaghTicketTypeID" />
          <cm:tzDataSource Name="dsTicketType" Content="dsTicketType" Width="77" Height="25.000000000000007" Margin="28.3685585585581,57.9342088207663,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4870534762343277613" Grid.Column="5" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" />
          <cm:tzLabel Name="Lable258C" Content="گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,11.7197845653606,5.56359783090124,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" cm:ControlID="4726897843095603293" />
          <cm:tzLookUpComboBox Name="CmbProblemGroup" Width="145.25862118999999" Height="22" Margin="36.2453485466655,0,5.56359783090124,51.6275334292337" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5722945023967337425" cm:DataBinding="dsShafaghGroup" cm:DataBindingField="ShafaghProblemGroupInformationID" cm:DefaultValue="" cm:Event="dsTitle" cm:SelectedDataBinding="dsSelectedProblemGroup" cm:TabIndex="16" cm:tzDisplayItem="ShafaghProblemGroupName" cm:tzValueItem="ShafaghProblemGroupInformationID" />
          <cm:tzDataSource Name="dsShafaghGroup" Content="dsShafaghGroup" Width="109.99999999999999" Height="24.999999999999993" Margin="28.2453485466654,44.7658886953605,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4783604119840092644" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzLabel Name="Lable26" Content="نام صندوق" Width="85.980000000000018" Height="24.483333330000008" Margin="0,34.64374049,12.6823500300014,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbShafaghFund" Width="150.13585170999977" Height="22" Margin="0,77.1270738200001,24.2201373000016,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5226164960908557387" TextSearchMode="Contains" Grid.Column="2" Grid.Row="0" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsFund" cm:DataBindingField="ShafaghFundInformationID" cm:Event="dsBranch,dsGetShafaghID" cm:SelectedDataBinding="dsCallData" cm:TabIndex="2" cm:tzDisplayItem="ShafaghFundName" cm:tzValueItem="ShafaghFundInformationID" />
          <cm:tzDataSource Name="dsFund" Content="dsFund" Width="40" Height="25" Margin="47.4052175375664,64.7574463100001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5354940988832056505" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" />
          <cm:tzLabel Name="Lable259C" Content="عنوان مشکل" Width="79.4" Height="24.483333333333334" Margin="0,11.7197845653606,24.2201373000014,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" cm:ControlID="5736312967899308118" />
          <cm:tzLookUpComboBox Name="CmbProblem" Width="145.39262371000007" Height="22" Margin="17.4548065575665,57.4670611653607,24.2201373000012,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5040068565779153190" cm:DataBinding="dsTitle" cm:DataBindingField="ShafaghProblemInformationID" cm:DefaultValue="$اولی" cm:Event="dsAction,dsHelpDesk" cm:SelectedDataBinding="dsSelectedTitle" cm:TabIndex="17" cm:tzDisplayItem="ShafaghProblemName" cm:tzValueItem="ShafaghProblemInformationID" />
          <cm:tzDataSource Name="dsTitle" Content="dsTitle" Width="110" Height="25" Margin="17.4548065575667,42.7658886953605,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5377478888097132560" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghProblemGroupInformationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="22.999999999999996" Margin="0,42.0143993261722,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid" cm:Validations="5422101555066720170" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
    <cm:TzGroupBox Name="GroupBox46" Width="1147" Height="425" ControlID="5078432367440224909" FontFamily="Tahoma" Canvas.Left="15" Canvas.Top="598.42211712" cm:Header="">
      <Canvas>
        <cm:Grid Width="1119" Height="387.51666667" ControlID="5549349123815738399" Canvas.Left="8" Canvas.Top="8">
          <cm:tzDataGrid Name="grvTicket" Width="812" Height="316.44666667" Margin="177,45.09310018,130,25.97689982" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Grid.Column="0" Grid.Row="0" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
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
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding TicketNo}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghTicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghTicketType">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghTicketType}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghFundName" DecimalMark="False" HeaderText="نام صندوق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghFundName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghFundName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IndexCode" DecimalMark="False" HeaderText="کد شاخص" IsRowColorField="False" KeyField="False" SortMemberPath="IndexCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IndexCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghID" DecimalMark="False" HeaderText="شناسه شفق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Sevice" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="Sevice">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Sevice}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubService" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubService">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubService}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="170" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerId" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="CallerId">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerId}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerName" DecimalMark="False" HeaderText="نام تماس گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="CallerName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tel" DecimalMark="False" HeaderText="شماره تلفن" IsRowColorField="False" KeyField="False" SortMemberPath="Tel">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tel}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="42" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndTime" DecimalMark="False" HeaderText="ساعت خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="77" Height="25" Margin="213.84592308,238.084275403333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5498512243631579654" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ShafaghCallInformation_AdvancedSearch">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtTicketNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @TicketNo" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbTicketType}" IsOutputParameter="False" ParameterType="int" SpParamName="  @TicketTypeID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghFund}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghFundID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubServiceId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ProblemGroup" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblem}" IsOutputParameter="False" ParameterType="int" SpParamName="  @problemId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRegUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RegUserId" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptFromTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromTime" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptToTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToTime" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/21 15:09:24', GUID = 'e39fac7c-269d-462e-b2eb-cac962873a25', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "202034" ,"components": [{"value": "","key": "4848897338105661592","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : ""},{"value": "","key": "5614717349457016048","label": "chbFilterDate","controlType": "checkbox","caption": "chbFilterDate" ,"DataBindingField" : "IsValid"},{"key": "5040068565779153190","label": "CmbProblem","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5722945023967337425","label": "CmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegUser","value": "", "controlType": "dropdown","options":""},{"key": "5226164960908557387","label": "cmbShafaghFund","value": "", "controlType": "dropdown","options":""},{"key": "4887723304404019372","label": "cmbShafaghSevicesInformationID","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5154172817984221498","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "cmbTicketType","value": "$اولی", "controlType": "dropdown","options":""},{"key":"5047859374208359026" , "dataSourceName":"dsCheckFilterDate" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5354940988832056505" , "dataSourceName":"dsFund" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"SP_CU_ShafaghCallInformation_AdvancedSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegUser" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5600808754086256767" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783604119840092644" , "dataSourceName":"dsShafaghGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4693615337445523550" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4870534762343277613" , "dataSourceName":"dsTicketType" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5377478888097132560" , "dataSourceName":"dsTitle" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 202034
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm202034') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm202034] ( [frm202034Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [int] NULL , [Col_5081194363345449817]  [nvarchar] ( 10) NULL , [Col_4854957732111386219]  [int] NULL , [Col_4887723304404019372]  [nvarchar] ( 50) NULL , [Col_5154172817984221498]  [nvarchar] ( 50) NULL , [Col_5722945023967337425]  [nvarchar] ( 50) NULL , [Col_5040068565779153190]  [nvarchar] ( 50) NULL , [Col_5226164960908557387]  [nvarchar] ( 50) NULL , [Col_4998721771557464900]  [nvarchar] ( 50) NULL , [Col_5614717349457016048]  [bit] NULL , [Col_4848897338105661592]  [bit] NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_4688435891586898475]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4995912702823116106]  [nvarchar] ( 5) NULL ,  PRIMARY KEY CLUSTERED ( [frm202034Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'frm202034Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD frm202034Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4720739133189081212' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4720739133189081212 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5081194363345449817' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5081194363345449817 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4854957732111386219' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4854957732111386219 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4887723304404019372' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4887723304404019372 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5154172817984221498' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5154172817984221498 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5722945023967337425' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5722945023967337425 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5040068565779153190' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5040068565779153190 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5226164960908557387' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5226164960908557387 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4998721771557464900' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4998721771557464900 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5614717349457016048' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5614717349457016048 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4848897338105661592' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4848897338105661592 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4895068962898797083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4895068962898797083 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4688435891586898475' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4688435891586898475 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5474774259234621899' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5474774259234621899 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4995912702823116106' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4995912702823116106 nvarchar (5) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm202034]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm202034
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm202034] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS int,  @Col_5081194363345449817 AS nvarchar(10),  @Col_4854957732111386219 AS int,  @Col_4887723304404019372 AS nvarchar(50),  @Col_5154172817984221498 AS nvarchar(50),  @Col_5722945023967337425 AS nvarchar(50),  @Col_5040068565779153190 AS nvarchar(50),  @Col_5226164960908557387 AS nvarchar(50),  @Col_4998721771557464900 AS nvarchar(50),  @Col_5614717349457016048 AS bit,  @Col_4848897338105661592 AS bit,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm202034](Col_4720739133189081212,Col_5081194363345449817,Col_4854957732111386219,Col_4887723304404019372,Col_5154172817984221498,Col_5722945023967337425,Col_5040068565779153190,Col_5226164960908557387,Col_4998721771557464900,Col_5614717349457016048,Col_4848897338105661592,Col_4895068962898797083,Col_4688435891586898475,Col_5474774259234621899,Col_4995912702823116106) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_4854957732111386219,@Col_4887723304404019372,@Col_5154172817984221498,@Col_5722945023967337425,@Col_5040068565779153190,@Col_5226164960908557387,@Col_4998721771557464900,@Col_5614717349457016048,@Col_4848897338105661592,@Col_4895068962898797083,@Col_4688435891586898475,@Col_5474774259234621899,@Col_4995912702823116106 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm202034]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm202034
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm202034] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS int,  @Col_5081194363345449817 AS nvarchar(10),  @Col_4854957732111386219 AS int,  @Col_4887723304404019372 AS nvarchar(50),  @Col_5154172817984221498 AS nvarchar(50),  @Col_5722945023967337425 AS nvarchar(50),  @Col_5040068565779153190 AS nvarchar(50),  @Col_5226164960908557387 AS nvarchar(50),  @Col_4998721771557464900 AS nvarchar(50),  @Col_5614717349457016048 AS bit,  @Col_4848897338105661592 AS bit,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm202034] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_4854957732111386219 =  @Col_4854957732111386219, Col_4887723304404019372 =  @Col_4887723304404019372, Col_5154172817984221498 =  @Col_5154172817984221498, Col_5722945023967337425 =  @Col_5722945023967337425, Col_5040068565779153190 =  @Col_5040068565779153190, Col_5226164960908557387 =  @Col_5226164960908557387, Col_4998721771557464900 =  @Col_4998721771557464900, Col_5614717349457016048 =  @Col_5614717349457016048, Col_4848897338105661592 =  @Col_4848897338105661592, Col_4895068962898797083 =  @Col_4895068962898797083, Col_4688435891586898475 =  @Col_4688435891586898475, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4995912702823116106 =  @Col_4995912702823116106 WHERE [frm202034Id] = @PKFormId 
 END 
GO
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
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,15.6947237966663,14.7596784533337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="15.259719623332,58.4423873466666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" Margin="0,8,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5126414657779673565" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="75.81666667" Height="20" Margin="101.464227175858,8,25.7923545617836,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5459814118812540729" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
          <cm:PDatePicker Name="CurrDate" Width="120" Height="20" Margin="41.8010595840752,21.0000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4950588884094236537" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="139.474247826667" Height="20" Margin="14.3268117574086,8,44.065182454142,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4703328241842357957" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" Margin="42.4200009191489,3,6.99057233259146,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5311538154545928717" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
          <cm:tzLabel Name="Lable26" Content="مشتری" Width="52.773333333333341" Height="24.483333333333334" Margin="0,40.999999996667,21.0887512159254,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="174.04010829" Height="22" Margin="0,83.4833333300004,6.99057233259157,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25.000000000000007" Margin="26.6245611824826,66.4833333300004,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,38.1429863772275,12.1117320451175,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbService" Width="183.65333333666715" Height="22" Margin="13.5013648491908,75.3299022505608,5.91855022178356,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25.000000000000007" Margin="13.5013648491908,63.6263197105608,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
          <cm:tzLabel Name="Lable44" Content="گروه ثبت کننده " Width="98.22666667" Height="24.483333330000008" Margin="0,31.1186561605606,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" Margin="9.87256366333213,49.3299022505608,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666691" Height="24.483333333333334" Margin="0,40.999999996667,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="50.9504265048836,70.4833333300004,26.915815533334,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Grid.Column="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable30" Content="کد " Width="30.303333333333335" Height="24.483333333333334" Margin="0,58.9999999966669,17.0835184241844,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="165.60255346333275" Height="22.000000000000004" Margin="8,0,0,28.144058309439" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="67.610000000000014" Height="24.483333333333334" Margin="0,38.1429863772274,19.5522944041418,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="171.35822430666696" Height="22.000000000000007" Margin="0,75.3299022505608,16.9857020174749,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="24.999999999999996" Margin="9.52231571407577,63.6263197105609,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,23.1186561572272,12.0152632666689,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="176.41666666333447" Height="22" Margin="0,66.6263197105608,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909725041652514354" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153.00000000000003" Height="24.999999999999993" Margin="9.43431210488188,49.3299022505608,35.4319299333357,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5012879529886775460" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
          <cm:tzLabel Name="Lable25" Content="وضعیت ticket" Width="84.933333333333337" Height="24.483333333333331" Margin="0,42.0000000000001,12.1117320451174,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="119.99999999999996" Height="21.999999999999993" Margin="25.3861000491914,83.4833333300003,57.6871483584501,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="13.5013648491908,0,0,51.1440583094389" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
          <cm:tzLabel Name="Lable27" Content="نوع تیکت" Width="59.146666666666675" Height="24.483333333333334" Margin="0,49.9999999966668,28.6313999741423,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5288146048034297512" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="Cmbrequst" Width="168.79163191999996" Height="22" Margin="0,92.4833333300003,19.5522944041418,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4998721771557464900" Grid.Column="2" Grid.Row="0" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
          <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" Margin="9.52231571407577,80.4833333300003,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5536746931098071987" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="73.326666666666682" Height="24.483333333333334" Margin="108.114561185816,38.1429863772274,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="168.81666667" Height="22" Margin="0,75.3299022505608,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5610629158270476969" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="4.32622229581614,63.6263197105607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,18.9876154245543,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="36.4144025466654,0,44.9632198333334,34.08933247331" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="5" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="Lable59" Content="تا" Width="27.544856610000522" Height="23" Margin="0,20.4709487578876,21.8223575833346,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="0,0,26.9158155333339,34.0893324733099" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="4" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت صدور از" Width="87.63666666666667" Height="24.483333333333334" Margin="0,18.9876154245542,5.91855022511731,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable57" Content="تا" Width="30.393333330000104" Height="23" Margin="0,11.1383127845551,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" Margin="0,0,57.6871483584501,34.0893324733095" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="3" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" Margin="0,0,56.9772727300001,34.0893324733095" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable51" Content="نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,6.99057233259151,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5014580280989272697" />
          <cm:tzLookUpComboBox Name="cmbResultStatus" Width="154.81666667" Height="22" Margin="0,77.6616811245547,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="1" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25.000000000000007" Margin="26.6245611824827,60.0730827245549,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5276806715386994728" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
          <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25.000000000000014" Margin="26.7668884199999,97.6263197105609,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278696751676114572" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715595999996" Height="22.999999999999996" Margin="41.7574866533332,28.8762919600233,35.041429274184,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
          <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114.00000000000003" Height="22.999999999999993" Margin="41.6446426133332,84.8762919600233,35.041429274184,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4710686342849233362" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
          <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="168.79163192" Height="22" Margin="8.97794686999885,66.6263197105608,23.6080435899999,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzLabel Name="Lable5758" Content="نتیجه ارجاع" Width="119.99999999999999" Height="22.999999999999996" Margin="0,14.1429863772274,17.0835184241845,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5105612060315909849" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbResultRefer" Width="120" Height="22" Margin="0,0,29.041429274184,49.7211851854452" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4682115117938198336" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsResultStatus" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
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
</cm:TZBaseControl>',1,'2025/04/21 15:51:33', 'e2e140ed-de38-4f0b-af2d-574db3a47549', 0, N'', N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "4682115117938198336","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
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
          <cm:tzLabel Name="Lable23" Content="شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,15.6947237966663,14.7596784533337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="15.259719623332,58.4423873466666,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Grid.Column="5" Grid.Row="0" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" Margin="0,8,16.6585966000022,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5126414657779673565" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="75.81666667" Height="20" Margin="101.464227175858,8,25.7923545617836,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5459814118812540729" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
          <cm:PDatePicker Name="CurrDate" Width="120" Height="20" Margin="41.8010595840752,21.0000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4950588884094236537" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
          <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="139.474247826667" Height="20" Margin="14.3268117574086,8,44.065182454142,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4703328241842357957" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" Margin="42.4200009191489,3,6.99057233259146,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5311538154545928717" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
          <cm:tzLabel Name="Lable26" Content="مشتری" Width="52.773333333333341" Height="24.483333333333334" Margin="0,40.999999996667,21.0887512159254,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="174.04010829" Height="22" Margin="0,83.4833333300004,6.99057233259157,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25.000000000000007" Margin="26.6245611824826,66.4833333300004,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
          <cm:tzLabel Name="Lable55" Content="نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,38.1429863772275,12.1117320451175,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbService" Width="183.65333333666715" Height="22" Margin="13.5013648491908,75.3299022505608,5.91855022178356,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25.000000000000007" Margin="13.5013648491908,63.6263197105608,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
          <cm:tzLabel Name="Lable44" Content="گروه ثبت کننده " Width="98.22666667" Height="24.483333330000008" Margin="0,31.1186561605606,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" Margin="9.87256366333213,49.3299022505608,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
          <cm:tzLabel Name="Lable24" Content="شماره ticket" Width="82.176666666666691" Height="24.483333333333334" Margin="0,40.999999996667,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="50.9504265048836,70.4833333300004,26.915815533334,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Grid.Column="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable30" Content="کد " Width="30.303333333333335" Height="24.483333333333334" Margin="0,58.9999999966669,17.0835184241844,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="165.60255346333275" Height="22.000000000000004" Margin="8,0,0,28.144058309439" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable43" Content="زیرسرویس" Width="67.610000000000014" Height="24.483333333333334" Margin="0,38.1429863772274,19.5522944041418,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5429890452776562087" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbSubService" Width="171.35822430666696" Height="22.000000000000007" Margin="0,75.3299022505608,16.9857020174749,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5634760713754507600" Grid.Column="2" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
          <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="24.999999999999996" Margin="9.52231571407577,63.6263197105609,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692127204784513660" Grid.Column="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
          <cm:tzLabel Name="Lable58" Content="کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,23.1186561572272,12.0152632666689,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="176.41666666333447" Height="22" Margin="0,66.6263197105608,12.0152632700012,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909725041652514354" Grid.Column="4" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153.00000000000003" Height="24.999999999999993" Margin="9.43431210488188,49.3299022505608,35.4319299333357,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5012879529886775460" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
          <cm:tzLabel Name="Lable25" Content="وضعیت ticket" Width="84.933333333333337" Height="24.483333333333331" Margin="0,42.0000000000001,12.1117320451174,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="119.99999999999996" Height="21.999999999999993" Margin="25.3861000491914,83.4833333300003,57.6871483584501,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="13.5013648491908,0,0,51.1440583094389" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
          <cm:tzLabel Name="Lable27" Content="نوع تیکت" Width="59.146666666666675" Height="24.483333333333334" Margin="0,49.9999999966668,28.6313999741423,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5288146048034297512" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="Cmbrequst" Width="168.79163191999996" Height="22" Margin="0,92.4833333300003,19.5522944041418,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4998721771557464900" Grid.Column="2" Grid.Row="0" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
          <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" Margin="9.52231571407577,80.4833333300003,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5536746931098071987" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
          <cm:tzLabel Name="Lable4142" Content="گروه مشکل" Width="73.326666666666682" Height="24.483333333333334" Margin="108.114561185816,38.1429863772274,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="168.81666667" Height="22" Margin="0,75.3299022505608,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5610629158270476969" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="4.32622229581614,63.6263197105607,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
          <cm:tzLabel Name="lblRegisteredDate" Content="تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,18.9876154245543,14.7596784500004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="36.4144025466654,0,44.9632198333334,34.08933247331" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4895068962898797083" Grid.Column="5" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="Lable59" Content="تا" Width="27.544856610000522" Height="23" Margin="0,20.4709487578876,21.8223575833346,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4877654925528239734" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="0,0,26.9158155333339,34.0893324733099" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4688435891586898475" Grid.Column="4" Grid.Row="2" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content="ساعت صدور از" Width="87.63666666666667" Height="24.483333333333334" Margin="0,18.9876154245542,5.91855022511731,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable57" Content="تا" Width="30.393333330000104" Height="23" Margin="0,11.1383127845551,19.552294404142,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4935838449943848636" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" Margin="0,0,57.6871483584501,34.0893324733095" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="3" Grid.Row="2" />
          <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" Margin="0,0,56.9772727300001,34.0893324733095" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4995912702823116106" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable51" Content="نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" Margin="0,18.9876154278876,6.99057233259151,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" cm:ControlID="5014580280989272697" />
          <cm:tzLookUpComboBox Name="cmbResultStatus" Width="154.81666667" Height="22" Margin="0,77.6616811245547,14.6893453959244,0" HorizontalAlignment="Right" VerticalAlignment="Top" Grid.Column="1" Grid.Row="2" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
          <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25.000000000000007" Margin="26.6245611824827,60.0730827245549,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5276806715386994728" Grid.Column="1" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
          <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25.000000000000014" Margin="26.7668884199999,97.6263197105609,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5278696751676114572" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715595999996" Height="22.999999999999996" Margin="41.7574866533332,28.8762919600233,35.041429274184,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4865742882409106383" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
          <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114.00000000000003" Height="22.999999999999993" Margin="41.6446426133332,84.8762919600233,35.041429274184,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4710686342849233362" FontFamily="Tahoma" Grid.Column="0" Grid.Row="3" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
          <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="168.79163192" Height="22" Margin="8.97794686999885,66.6263197105608,23.6080435899999,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
          <cm:tzLabel Name="Lable5758" Content="نتیجه ارجاع" Width="119.99999999999999" Height="22.999999999999996" Margin="0,14.1429863772274,17.0835184241845,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5105612060315909849" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbResultRefer" Width="120" Height="22" Margin="0,0,29.041429274184,49.7211851854452" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4682115117938198336" Grid.Column="0" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsResultStatus" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
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
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/21 15:51:33', GUID = 'e2e140ed-de38-4f0b-af2d-574db3a47549', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "4682115117938198336","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201990
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm201990') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm201990] ( [frm201990Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [bigint] NULL , [Col_5081194363345449817]  [nvarchar] ( 50) NULL , [Col_5053119443844496676]  [int] NULL , [Col_5206205529288027938]  [nvarchar] ( 50) NULL , [Col_4866769076819097450]  [nvarchar] ( 50) NULL , [Col_5172994599657882546]  [nvarchar] ( 50) NULL , [Col_5610629158270476969]  [nvarchar] ( 50) NULL , [Col_4909725041652514354]  [nvarchar] ( 50) NULL , [Col_4854957732111386219]  [nvarchar] ( 50) NULL , [Col_5634760713754507600]  [nvarchar] ( 50) NULL , [Col_4998721771557464900]  [int] NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_4688435891586898475]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4995912702823116106]  [nvarchar] ( 5) NULL , [Col_4703328241842357957]  [bit] NULL , [Col_4950588884094236537]  [nvarchar] ( 10) NULL , [Col_4884950633172409629]  [int] NULL , [Col_5459814118812540729]  [bit] NULL , [Col_4682115117938198336]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm201990Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
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
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5459814118812540729' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5459814118812540729 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4682115117938198336' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4682115117938198336 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5459814118812540729 AS bit,  @Col_4682115117938198336 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm201990](Col_4720739133189081212,Col_5081194363345449817,Col_5053119443844496676,Col_5206205529288027938,Col_4866769076819097450,Col_5172994599657882546,Col_5610629158270476969,Col_4909725041652514354,Col_4854957732111386219,Col_5634760713754507600,Col_4998721771557464900,Col_4895068962898797083,Col_4688435891586898475,Col_5474774259234621899,Col_4995912702823116106,Col_4703328241842357957,Col_4950588884094236537,Col_4884950633172409629,Col_5459814118812540729,Col_4682115117938198336) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_5053119443844496676,@Col_5206205529288027938,@Col_4866769076819097450,@Col_5172994599657882546,@Col_5610629158270476969,@Col_4909725041652514354,@Col_4854957732111386219,@Col_5634760713754507600,@Col_4998721771557464900,@Col_4895068962898797083,@Col_4688435891586898475,@Col_5474774259234621899,@Col_4995912702823116106,@Col_4703328241842357957,@Col_4950588884094236537,@Col_4884950633172409629,@Col_5459814118812540729,@Col_4682115117938198336 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5459814118812540729 AS bit,  @Col_4682115117938198336 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm201990] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_5053119443844496676 =  @Col_5053119443844496676, Col_5206205529288027938 =  @Col_5206205529288027938, Col_4866769076819097450 =  @Col_4866769076819097450, Col_5172994599657882546 =  @Col_5172994599657882546, Col_5610629158270476969 =  @Col_5610629158270476969, Col_4909725041652514354 =  @Col_4909725041652514354, Col_4854957732111386219 =  @Col_4854957732111386219, Col_5634760713754507600 =  @Col_5634760713754507600, Col_4998721771557464900 =  @Col_4998721771557464900, Col_4895068962898797083 =  @Col_4895068962898797083, Col_4688435891586898475 =  @Col_4688435891586898475, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4995912702823116106 =  @Col_4995912702823116106, Col_4703328241842357957 =  @Col_4703328241842357957, Col_4950588884094236537 =  @Col_4950588884094236537, Col_4884950633172409629 =  @Col_4884950633172409629, Col_5459814118812540729 =  @Col_5459814118812540729, Col_4682115117938198336 =  @Col_4682115117938198336 WHERE [frm201990Id] = @PKFormId 
 END 
GO
