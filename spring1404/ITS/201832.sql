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
          <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="14.9495927881004,41.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="82.176666666666677" Height="24.483333333333334" Margin="0,-0.820293680000134,8.21303355498725,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="30.1125863788039,0,36.518236071654,25.2836645771143" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5081194363345449817" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable26" Content=":بانک" Width="36.120000000000005" Height="24.483333333333334" Margin="0,8,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="169" Height="22" Margin="5.01078558562756,51.612542143333,9.37555428190092,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="26.7719796122947,37.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " />
          <cm:tzLabel Name="Lable55" Content=":نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,-0.820293680000077,10.4925565410392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="166" Height="22" Margin="0,0,10.4925565410384,18.7762018871143" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.2745080514801,48.612542143333,42.7231120177058,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:tzSelectQuery="select * from Tbl_CU_Service" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,8.00000000000006,7.12008732851916,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="167.79163192" Height="22" Margin="0,51.61254214,7.12008733185246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="125.38715596" Height="25" Margin="14.0268981816787,37.4833333333333,43.0625152718528,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT UserId, FullName FROM Users.TblProfiles" />
          <cm:tzLabel Name="Lable30" Content=":کد شعبه" Width="58.96" Height="24.483333333333334" Margin="0,12,23.9273684745296,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="160" Height="21" Margin="8,52.61254214,9.76945509786299,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5053119443844496676" FontSize="12" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,19.0786211062185,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="161.78960031333281" Height="22" Margin="0,0,8,20.404354646116" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="32.0729830447657,42.2076982428854,42.6662100566673,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM dbo.Tbl_Cu_ProblemGroup" />
          <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,16.724364909552,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="26.7719796122947,59.1994337828854,36.6143602552338,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4895068962898797083" Grid.Column="4" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable40" Content="تا" Width="23.595524039999987" Height="23" Margin="0,20.5619544395518,18.127587977706,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5469889688189875676" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="32.27450805148,0,32.7231120177059,31.4126191061164" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4875705021739424097" Grid.Column="3" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور" Width="76.65" Height="24.483333333333334" Margin="0,19.0786211062185,23.7619137418525,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:TzPersianTime Name="ptRegisteredTime" Width="52" Height="20.000000000000004" Margin="60.7131487516792,0,0,31.4126191061164" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable44" Content=":نوع ثبت " Width="56.510000000000005" Height="24.483333333333334" Margin="0,19.0786211062185,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbBatchFinished" Width="120" Height="22" Margin="30.1125863788041,0,36.5182360716538,20.4043546461159" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4909725041652514354" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBatchFinished" cm:DefaultValue="$اولی" cm:tzDisplayItem="BatchFinishedName" cm:tzValueItem="BatchFinishedID" />
          <cm:tzDataSource Name="dsBatchFinished" Content="dsBatchFinished" Width="110" Height="25" Margin="40.1125863788042,42.2076982428859,36.5182360716537,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5585389405455707919" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" />
          <cm:tzLabel Name="Lable41" Content=":نام شعبه" Width="60.646666666666668" Height="24.483333333333334" Margin="0,19.8384139438834,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4905267092464358396" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzTextBox Name="txtBranchName" Width="161" Height="22" Margin="7.7391931014331,59.856182533884,16,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5217194399413537243" Grid.Column="5" Grid.Row="2" />
          <cm:tzLabel Name="Lable5758" Content=":نوع شعبه" Width="62.603333333333339" Height="24.483333333333334" Margin="0,19.8384139438834,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="120" Height="22" Margin="45.5785467722949,59.8561825338841,17.8077930952336,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5625107840618892731" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="5.01078558562733,45.3217472772167,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:tzLabel Name="Lable25" Content=":وضعیت پذیرش تیکت" Width="115.07666666666667" Height="24.483333333333334" Margin="0,19.8384139438835,10.4925565410385,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="166.00000000000011" Height="22" Margin="0,59.856182533884,10.4925565410384,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:IsVisibleItem="True" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="18.7378311014794,51.8561825338841,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" />
          <cm:TZButton Name="btn" Content="جستجو" Width="113.88715595999999" Height="23.000000000000014" Margin="39.9549306633333,0,23.9273684745297,31.2690211071709" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5085118562169711603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" cm:Event="dsGrid" />
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
</cm:TZBaseControl>',1,'2025/04/20 13:47:57', 'a0cb5d5d-f84c-470c-aca3-a584899c813d', 0, N'', N'{"formID": "201832" ,"components": [{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbBatchFinished","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5585389405455707919" , "dataSourceName":"dsBatchFinished" , "controlType": "datasource",  "selectQuery" :"select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM dbo.Tbl_Cu_ProblemGroup" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"SELECT UserId, FullName FROM Users.TblProfiles" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from Tbl_CU_Service" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5217194399413537243","label": "txtBranchName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
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
          <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" Width="77.523333333333341" Height="24.483333333333334" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5611599856878086129" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="14.9495927881004,41.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4720739133189081212" Grid.Column="5" Grid.Row="0" />
          <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="82.176666666666677" Height="24.483333333333334" Margin="0,-0.820293680000134,8.21303355498725,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5751631579602051096" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" Margin="30.1125863788039,0,36.518236071654,25.2836645771143" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5081194363345449817" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable26" Content=":بانک" Width="36.120000000000005" Height="24.483333333333334" Margin="0,8,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5733544356522518769" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbBank" Width="169" Height="22" Margin="5.01078558562756,51.612542143333,9.37555428190092,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4866769076819097450" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
          <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" Margin="26.7719796122947,37.4833333333333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4947740875127604141" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " />
          <cm:tzLabel Name="Lable55" Content=":نام سرویس" Width="72.653333333333336" Height="24.483333333333334" Margin="0,-0.820293680000077,10.4925565410392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4959885443946943293" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbService" Width="166" Height="22" Margin="0,0,10.4925565410384,18.7762018871143" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5172994599657882546" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
          <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" Margin="32.2745080514801,48.612542143333,42.7231120177058,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5270925061741186330" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:tzSelectQuery="select * from Tbl_CU_Service" />
          <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="114.64333333333335" Height="24.483333333333334" Margin="0,8.00000000000006,7.12008732851916,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331477548801797718" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="167.79163192" Height="22" Margin="0,51.61254214,7.12008733185246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4854957732111386219" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="125.38715596" Height="25" Margin="14.0268981816787,37.4833333333333,43.0625152718528,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5402118367232801633" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT UserId, FullName FROM Users.TblProfiles" />
          <cm:tzLabel Name="Lable30" Content=":کد شعبه" Width="58.96" Height="24.483333333333334" Margin="0,12,23.9273684745296,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5237963644095228093" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtBranchId" Width="160" Height="21" Margin="8,52.61254214,9.76945509786299,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5053119443844496676" FontSize="12" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:Len="10" />
          <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" Width="73.326666666666668" Height="24.483333333333334" Margin="0,19.0786211062185,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4717754987366344189" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="161.78960031333281" Height="22" Margin="0,0,8,20.404354646116" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5610629158270476969" Grid.Column="5" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
          <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" Margin="32.0729830447657,42.2076982428854,42.6662100566673,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5494490826325421717" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT * FROM dbo.Tbl_Cu_ProblemGroup" />
          <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" Width="76.98" Height="24.483333333333334" Margin="0,16.724364909552,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5262685415673334101" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" Margin="26.7719796122947,59.1994337828854,36.6143602552338,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4895068962898797083" Grid.Column="4" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="Lable40" Content="تا" Width="23.595524039999987" Height="23" Margin="0,20.5619544395518,18.127587977706,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5469889688189875676" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:PDatePicker Name="pdRegisteredDateTo" Width="120.00000000000003" Height="20" Margin="32.27450805148,0,32.7231120177059,31.4126191061164" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4875705021739424097" Grid.Column="3" Grid.Row="1" cm:DefaultValue="$CurrentDate" />
          <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور" Width="76.65" Height="24.483333333333334" Margin="0,19.0786211062185,23.7619137418525,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5135930511966319362" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:TzPersianTime Name="ptRegisteredTime" Width="52" Height="20.000000000000004" Margin="60.7131487516792,0,0,31.4126191061164" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5474774259234621899" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable44" Content=":نوع ثبت " Width="56.510000000000005" Height="24.483333333333334" Margin="0,19.0786211062185,18.6667840649883,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4649871390430367497" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLookUpComboBox Name="cmbBatchFinished" Width="120" Height="22" Margin="30.1125863788041,0,36.5182360716538,20.4043546461159" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4909725041652514354" Grid.Column="1" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBatchFinished" cm:DefaultValue="$اولی" cm:tzDisplayItem="BatchFinishedName" cm:tzValueItem="BatchFinishedID" />
          <cm:tzDataSource Name="dsBatchFinished" Content="dsBatchFinished" Width="110" Height="25" Margin="40.1125863788042,42.2076982428859,36.5182360716537,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5585389405455707919" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" />
          <cm:tzLabel Name="Lable41" Content=":نام شعبه" Width="60.646666666666668" Height="24.483333333333334" Margin="0,19.8384139438834,22.3120988000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4905267092464358396" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
          <cm:tzTextBox Name="txtBranchName" Width="161" Height="22" Margin="7.7391931014331,59.856182533884,16,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5217194399413537243" Grid.Column="5" Grid.Row="2" />
          <cm:tzLabel Name="Lable5758" Content=":نوع شعبه" Width="62.603333333333339" Height="24.483333333333334" Margin="0,19.8384139438834,17.8077930952337,0" HorizontalAlignment="Right" VerticalAlignment="Top" FontFamily="Tahoma" Grid.Column="4" Grid.Row="2" cm:ControlID="5273351821395219620" />
          <cm:tzLookUpComboBox Name="cmbBranchType" Width="120" Height="22" Margin="45.5785467722949,59.8561825338841,17.8077930952336,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5625107840618892731" Grid.Column="4" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBranchType" cm:tzDisplayItem="BranchTypeName" cm:tzValueItem="BranchTypeRealID" />
          <cm:tzDataSource Name="dsBranchType" Content="dsBranchType" Width="110" Height="25" Margin="5.01078558562733,45.3217472772167,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5335776727315516869" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_Tbl_CU_Base_BranchType" />
          <cm:tzLabel Name="Lable25" Content=":وضعیت پذیرش تیکت" Width="115.07666666666667" Height="24.483333333333334" Margin="0,19.8384139438835,10.4925565410385,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4759944771073043398" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" cm:IsVisibleItem="True" />
          <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="166.00000000000011" Height="22" Margin="0,59.856182533884,10.4925565410384,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5206205529288027938" Grid.Column="3" Grid.Row="2" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:IsVisibleItem="True" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
          <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" Margin="18.7378311014794,51.8561825338841,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4954260394000299803" Grid.Column="3" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" />
          <cm:TZButton Name="btn" Content="جستجو" Width="113.88715595999999" Height="23.000000000000014" Margin="39.9549306633333,0,23.9273684745297,31.2690211071709" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5085118562169711603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" cm:Event="dsGrid" />
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
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/20 13:47:57', GUID = 'a0cb5d5d-f84c-470c-aca3-a584899c813d', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201832" ,"components": [{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbBatchFinished","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5625107840618892731","label": "cmbBranchType","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM Tbl_CU_BPR_Customer  WHERE ISNULL(ParentId,'''') = ''''  and isnull(status,0) = 1 AND  CustomerLevel = 1  ORDER BY CASE WHEN ISNULL(OrderId,'''') = ''''  THEN 2 ELSE 1 END, [Status] DESC, OrderId ASC  " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5585389405455707919" , "dataSourceName":"dsBatchFinished" , "controlType": "datasource",  "selectQuery" :"select 1 as BatchFinishedID,''سیستمی'' as BatchFinishedName union select 2 as BatchFinished,''دستی'' as BatchFinishedName union select -1 as BatchFinished,''هردو'' as BatchFinishedName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5335776727315516869" , "dataSourceName":"dsBranchType" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_Tbl_CU_Base_BranchType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_BPR_FaradisTicketViewSearch {@txtWFID},{@txtTicketNo}, {@cmbTicketStatus}, {@cmbBank}, {@txtBranchId},{@txtBranchName}, {@cmbService},{@cmbProblemGroup}, {@pdRegisteredDateFrom}, {@pdRegisteredDateTo}, {@ptRegisteredTime}, {@cmbBatchFinished}, {@cmbRegisteredUser},{@cmbBranchType}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"SELECT * FROM dbo.Tbl_Cu_ProblemGroup" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"SELECT UserId, FullName FROM Users.TblProfiles" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"select * from Tbl_CU_Service" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_BPR_FaradisTicketStatus]" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5217194399413537243","label": "txtBranchName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201832
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
