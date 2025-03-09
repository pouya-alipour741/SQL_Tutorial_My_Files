GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31264) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31264, N'گزارش عملکرد میز خدمت فناوری اطلاعات-فاز 2',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1558" Height="937.51666667" Background="White">
  <Canvas Width="1532" Height="913">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="1516" Height="896" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="7.9999999999999147" Canvas.Top="9.0000000000000426" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1488" Height="858.51666667" Background="#FFD7E4F2" BorderBrush="#FFD5DFE5" ControlID="5253751524000330582" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable5" Content=":از تاریخ" ControlID="4810449434411966148" Canvas.Left="1402.21" Canvas.Top="11.53772427666668" />
            <cm:PDatePicker Name="prcFromDate" Width="165" Height="20" ControlID="5464986043886275934" TabIndex="1" Canvas.Left="1256.6134202" Canvas.Top="4.6654632" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:tzLabel Name="Lable9" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="1054.5257829000016" Canvas.Top="11.021057606666847" cm:ControlID="5091682343098369777" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="147.51826932" Height="27" ControlID="5657872315074103558" Canvas.Left="8" Canvas.Top="100.50439094" cm:Event="dsSearch,dsAverageTicketsDonePerDateRange" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5719051335511428408" Canvas.Left="7.9999999999997158" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @RegUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ActionUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatusEghdamat}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFFrom}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDFrom" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFTo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDTo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDesc}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Desc" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable39" Content=":نوع درخواست" Width="NaN" Height="NaN" ControlID="4877390428600572878" FontFamily="Tahoma" Canvas.Left="1054.5257829000013" Canvas.Top="37.02105760000002" />
            <cm:tzLookUpComboBox Name="cmbRequestKind" Width="219.99999999999932" Height="22" ControlID="4647773901884335145" Canvas.Left="825.59926774666837" Canvas.Top="41.987724266666646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dsEditGrid" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
            <cm:tzLookUpComboBox Name="cmbSubGroup" Width="220" Height="22" ControlID="4838564445226209905" Canvas.Left="1173.0833333333335" Canvas.Top="37.021057609999986" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
            <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1226.0244520566669" Canvas.Top="34.021057609999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM138" />
            <cm:tzLabel Name="Lable9091" Content=":عنوان درخواست" Width="98.476666669999844" Height="23" ControlID="5679302047551643551" Canvas.Left="701.04270113000177" Canvas.Top="36.021057610000014" />
            <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="220" Height="22" ControlID="5266482798981468614" Canvas.Left="480.04270113000206" Canvas.Top="42.0210576100003" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsFieldName,dsNeedCertificate,dsEditGrid,dsCompare" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
            <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="865.79760109000085" Canvas.Top="34.021057610000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable67" Content=":زيرگروه" Width="NaN" Height="NaN" ControlID="5225666388272332073" FontFamily="Tahoma" Canvas.Left="1402.0833333333335" Canvas.Top="37.021057610000014" />
            <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="519.66854621000061" Canvas.Top="43.021057610000355" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:PDatePicker Name="prcToDate" Width="154.64583192" Height="20" TabIndex="2" Canvas.Left="920.36078572666793" Canvas.Top="7.50439094000018" cm:ControlID="4771070049794054603" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable79" Content=":کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="710.5593678000015" Canvas.Top="11.53772427666668" cm:ControlID="4723719339189814022" />
            <cm:tzLookUpComboBox Name="cmbUser" Width="219.99999999999869" Height="22" ControlID="4814664482230452174" Canvas.Left="480.04270113000337" Canvas.Top="5.5043909400000643" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsUser" Content="dsUser" Width="110" Height="25" ControlID="5387686726848626359" Canvas.Left="498.98863637000034" Canvas.Top="2.5043909400000643" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetExpertUsers_FRM31264" />
            <cm:tzLabel Name="Lable90" Content=":وضعيت فرآیند" Width="NaN" Height="NaN" ControlID="5096547280940749852" FontFamily="Tahoma" Canvas.Left="1400.8600000000001" Canvas.Top="70.504390933333283" />
            <cm:tzLookUpComboBox Name="cmbStatusEghdamat" Width="218.77666666666659" Height="22" ControlID="5085386696290327415" Canvas.Left="1173.0833333333335" Canvas.Top="70.50439094" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsCanTReg,dsStatus4" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" ControlID="5202716452179788894" Canvas.Left="1226.0244520566664" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" />
            <cm:tzLabel Name="Lable21" Content=":کاربر اقدام کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1054.5257829000013" Canvas.Top="70.504390933333312" cm:ControlID="4743089464622777831" />
            <cm:tzLookUpComboBox Name="cmbActionUser" Width="219.99999999999869" Height="22" Canvas.Left="825.59926774666894" Canvas.Top="72.987724266666646" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5360246278547633509" cm:DataBinding="dsEghdam" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable23" Content=":شرح درخواست" Width="98.476666669999844" Height="23" Canvas.Left="701.04270113000177" Canvas.Top="71.021057610000355" cm:ControlID="5671975513299112230" />
            <cm:tzTextBox Name="txtDesc" Width="219.999999999997" Height="21" ControlID="5452408332231075706" Canvas.Left="480.04270113000518" Canvas.Top="73.0210576100003" />
            <cm:tzLabel Name="Lable53" Content=":تاریخ بستن فرآیند از" Width="NaN" Height="NaN" Canvas.Left="1046.5992677466677" Canvas.Top="106.53772427666706" cm:ControlID="4723512399233345620" />
            <cm:PDatePicker Name="pdEndWFFrom" Width="149" Height="20" TabIndex="2" Canvas.Left="926.006617646668" Canvas.Top="103.0210576100003" cm:ControlID="5230226762261664435" cm:DefaultValue="" />
            <cm:tzDataSource Name="dsEghdam" Content="dsEghdam" Width="110" Height="25" ControlID="5453950973762427790" Canvas.Left="854.64987381000094" Canvas.Top="69.0210576100003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetActionUsers_FRM31264" />
            <cm:tzLabel Name="Lable56" Content=":شماره فرآیند" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1400.8600000000004" Canvas.Top="103.02105760666669" cm:ControlID="5195765181082358445" />
            <cm:tzTextBox Name="txtWFID" Width="218.77666666666642" Height="21" ControlID="5487463135379127114" Canvas.Left="1173.0833333333335" Canvas.Top="106.50439094" cm:DataType="BigInt" />
            <cm:tzLabel Name="Lable104" Content=":تاریخ بستن فرآیند تا" Width="NaN" Height="NaN" Canvas.Left="701.04270113000211" Canvas.Top="106.537724276667" cm:ControlID="5648210819390458334" />
            <cm:PDatePicker Name="pdEndWFTo" Width="148" Height="20" TabIndex="2" Canvas.Left="579.92450359000009" Canvas.Top="103.0210576100003" cm:ControlID="5180185013363300688" cm:DefaultValue="" />
            <cm:tzDataGrid Name="GridView37" Width="1460" Height="678.16501155666663" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4618518354916110492" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="150.86832178" cm:BindingForm="dsSearch" cm:KeyField="ServingTableID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNO" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNO">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNO}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableID" DecimalMark="False" HeaderText="ServingTableID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestKind" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestKind">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestKind}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestSubject" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="91" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Description" DecimalMark="False" HeaderText="شرح  درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Description">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Description}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EghadmFullName" DecimalMark="False" HeaderText="کاربر اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="EghadmFullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EghadmFullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusPublicDesc" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="StatusPublicDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusPublicDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="86" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prdRegDate" DecimalMark="False" HeaderText="تاریخ ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prdRegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prdRegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prtRegTime" DecimalMark="False" HeaderText="ساعت ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prtRegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prtRegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ورود به کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NextDate" DecimalMark="False" HeaderText="تاریخ خروج از کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="NextDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NextDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="72" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ بستن فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="124" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Datedifff" DecimalMark="False" HeaderText="مدت زمان انجام(دقیقه)" IsRowColorField="False" KeyField="False" SortMemberPath="Datedifff">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Datedifff}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableScoreTitle" DecimalMark="False" HeaderText="امتیاز" IsRowColorField="False" KeyField="False" SortMemberPath="ServingTableScoreTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableScoreTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzLabel Name="Lable44" Content=":میانگین زمان انجام کلیه ی تیکت ها در بازه ی انتخاب شده(ساعت کاری)" Width="326" Height="23" ControlID="5084478789802753828" Canvas.Left="137.97014925" Canvas.Top="4.50439094" />
            <cm:tzTextBox Name="txtAverageTicketsDonePerDateRange" Width="96.029850749999966" Height="21" ControlID="5554965300775520075" Canvas.Left="40.9402985" Canvas.Top="6.50439094" cm:DataBinding="dsAverageTicketsDonePerDateRange" cm:DataBindingField="TicketsInActorCartable_AverageTime_WorkHours" cm:IsEnableItem="False" />
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="4705150657088715811" Canvas.Left="1209.7713397166651" Canvas.Top="-3.3345368000000235" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:tzDataSource Name="dsAverageTicketsDonePerDateRange" Content="dsAverageTicketsDonePerDateRange" Width="110" Height="25" ControlID="5085566583689321772" Canvas.Left="150.97014924999996" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/12/19 13:54:11', '10f8b961-859e-4e15-a671-45b5fceadd43', 0, N'', N'{"formID": "31264" ,"components": [{"key": "5360246278547633509","label": "cmbActionUser","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5085386696290327415","label": "cmbStatusEghdamat","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4814664482230452174","label": "cmbUser","value": "", "controlType": "dropdown","options":""},{"key":"5085566583689321772" , "dataSourceName":"dsAverageTicketsDonePerDateRange" , "controlType": "datasource",  "selectQuery" :"sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5453950973762427790" , "dataSourceName":"dsEghdam" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetActionUsers_FRM31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4705150657088715811" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5719051335511428408" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387686726848626359" , "dataSourceName":"dsUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetExpertUsers_FRM31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5554965300775520075","label": "txtAverageTicketsDonePerDateRange","controlType": "textbox", "type": "" , "DataBindingField" : "TicketsInActorCartable_AverageTime_WorkHours"},{"value": "","key": "5452408332231075706","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5487463135379127114","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'گزارش عملکرد میز خدمت فناوری اطلاعات-فاز 2',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1558" Height="937.51666667" Background="White">
  <Canvas Width="1532" Height="913">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="1516" Height="896" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="7.9999999999999147" Canvas.Top="9.0000000000000426" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1488" Height="858.51666667" Background="#FFD7E4F2" BorderBrush="#FFD5DFE5" ControlID="5253751524000330582" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable5" Content=":از تاریخ" ControlID="4810449434411966148" Canvas.Left="1402.21" Canvas.Top="11.53772427666668" />
            <cm:PDatePicker Name="prcFromDate" Width="165" Height="20" ControlID="5464986043886275934" TabIndex="1" Canvas.Left="1256.6134202" Canvas.Top="4.6654632" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:tzLabel Name="Lable9" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="1054.5257829000016" Canvas.Top="11.021057606666847" cm:ControlID="5091682343098369777" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="147.51826932" Height="27" ControlID="5657872315074103558" Canvas.Left="8" Canvas.Top="100.50439094" cm:Event="dsSearch,dsAverageTicketsDonePerDateRange" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5719051335511428408" Canvas.Left="7.9999999999997158" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @RegUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ActionUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatusEghdamat}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFFrom}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDFrom" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFTo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDTo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDesc}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Desc" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable39" Content=":نوع درخواست" Width="NaN" Height="NaN" ControlID="4877390428600572878" FontFamily="Tahoma" Canvas.Left="1054.5257829000013" Canvas.Top="37.02105760000002" />
            <cm:tzLookUpComboBox Name="cmbRequestKind" Width="219.99999999999932" Height="22" ControlID="4647773901884335145" Canvas.Left="825.59926774666837" Canvas.Top="41.987724266666646" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dsEditGrid" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
            <cm:tzLookUpComboBox Name="cmbSubGroup" Width="220" Height="22" ControlID="4838564445226209905" Canvas.Left="1173.0833333333335" Canvas.Top="37.021057609999986" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
            <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1226.0244520566669" Canvas.Top="34.021057609999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM138" />
            <cm:tzLabel Name="Lable9091" Content=":عنوان درخواست" Width="98.476666669999844" Height="23" ControlID="5679302047551643551" Canvas.Left="701.04270113000177" Canvas.Top="36.021057610000014" />
            <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="220" Height="22" ControlID="5266482798981468614" Canvas.Left="480.04270113000206" Canvas.Top="42.0210576100003" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsFieldName,dsNeedCertificate,dsEditGrid,dsCompare" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
            <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="865.79760109000085" Canvas.Top="34.021057610000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable67" Content=":زيرگروه" Width="NaN" Height="NaN" ControlID="5225666388272332073" FontFamily="Tahoma" Canvas.Left="1402.0833333333335" Canvas.Top="37.021057610000014" />
            <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="519.66854621000061" Canvas.Top="43.021057610000355" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:PDatePicker Name="prcToDate" Width="154.64583192" Height="20" TabIndex="2" Canvas.Left="920.36078572666793" Canvas.Top="7.50439094000018" cm:ControlID="4771070049794054603" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable79" Content=":کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="710.5593678000015" Canvas.Top="11.53772427666668" cm:ControlID="4723719339189814022" />
            <cm:tzLookUpComboBox Name="cmbUser" Width="219.99999999999869" Height="22" ControlID="4814664482230452174" Canvas.Left="480.04270113000337" Canvas.Top="5.5043909400000643" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsUser" Content="dsUser" Width="110" Height="25" ControlID="5387686726848626359" Canvas.Left="498.98863637000034" Canvas.Top="2.5043909400000643" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetExpertUsers_FRM31264" />
            <cm:tzLabel Name="Lable90" Content=":وضعيت فرآیند" Width="NaN" Height="NaN" ControlID="5096547280940749852" FontFamily="Tahoma" Canvas.Left="1400.8600000000001" Canvas.Top="70.504390933333283" />
            <cm:tzLookUpComboBox Name="cmbStatusEghdamat" Width="218.77666666666659" Height="22" ControlID="5085386696290327415" Canvas.Left="1173.0833333333335" Canvas.Top="70.50439094" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsCanTReg,dsStatus4" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" ControlID="5202716452179788894" Canvas.Left="1226.0244520566664" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" />
            <cm:tzLabel Name="Lable21" Content=":کاربر اقدام کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1054.5257829000013" Canvas.Top="70.504390933333312" cm:ControlID="4743089464622777831" />
            <cm:tzLookUpComboBox Name="cmbActionUser" Width="219.99999999999869" Height="22" Canvas.Left="825.59926774666894" Canvas.Top="72.987724266666646" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5360246278547633509" cm:DataBinding="dsEghdam" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable23" Content=":شرح درخواست" Width="98.476666669999844" Height="23" Canvas.Left="701.04270113000177" Canvas.Top="71.021057610000355" cm:ControlID="5671975513299112230" />
            <cm:tzTextBox Name="txtDesc" Width="219.999999999997" Height="21" ControlID="5452408332231075706" Canvas.Left="480.04270113000518" Canvas.Top="73.0210576100003" />
            <cm:tzLabel Name="Lable53" Content=":تاریخ بستن فرآیند از" Width="NaN" Height="NaN" Canvas.Left="1046.5992677466677" Canvas.Top="106.53772427666706" cm:ControlID="4723512399233345620" />
            <cm:PDatePicker Name="pdEndWFFrom" Width="149" Height="20" TabIndex="2" Canvas.Left="926.006617646668" Canvas.Top="103.0210576100003" cm:ControlID="5230226762261664435" cm:DefaultValue="" />
            <cm:tzDataSource Name="dsEghdam" Content="dsEghdam" Width="110" Height="25" ControlID="5453950973762427790" Canvas.Left="854.64987381000094" Canvas.Top="69.0210576100003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetActionUsers_FRM31264" />
            <cm:tzLabel Name="Lable56" Content=":شماره فرآیند" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1400.8600000000004" Canvas.Top="103.02105760666669" cm:ControlID="5195765181082358445" />
            <cm:tzTextBox Name="txtWFID" Width="218.77666666666642" Height="21" ControlID="5487463135379127114" Canvas.Left="1173.0833333333335" Canvas.Top="106.50439094" cm:DataType="BigInt" />
            <cm:tzLabel Name="Lable104" Content=":تاریخ بستن فرآیند تا" Width="NaN" Height="NaN" Canvas.Left="701.04270113000211" Canvas.Top="106.537724276667" cm:ControlID="5648210819390458334" />
            <cm:PDatePicker Name="pdEndWFTo" Width="148" Height="20" TabIndex="2" Canvas.Left="579.92450359000009" Canvas.Top="103.0210576100003" cm:ControlID="5180185013363300688" cm:DefaultValue="" />
            <cm:tzDataGrid Name="GridView37" Width="1460" Height="678.16501155666663" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4618518354916110492" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="150.86832178" cm:BindingForm="dsSearch" cm:KeyField="ServingTableID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNO" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNO">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNO}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableID" DecimalMark="False" HeaderText="ServingTableID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestKind" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestKind">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestKind}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestSubject" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="91" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Description" DecimalMark="False" HeaderText="شرح  درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Description">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Description}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EghadmFullName" DecimalMark="False" HeaderText="کاربر اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="EghadmFullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EghadmFullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusPublicDesc" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="StatusPublicDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusPublicDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="86" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prdRegDate" DecimalMark="False" HeaderText="تاریخ ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prdRegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prdRegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prtRegTime" DecimalMark="False" HeaderText="ساعت ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prtRegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prtRegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ورود به کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NextDate" DecimalMark="False" HeaderText="تاریخ خروج از کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="NextDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NextDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="72" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ بستن فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="124" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Datedifff" DecimalMark="False" HeaderText="مدت زمان انجام(دقیقه)" IsRowColorField="False" KeyField="False" SortMemberPath="Datedifff">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Datedifff}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableScoreTitle" DecimalMark="False" HeaderText="امتیاز" IsRowColorField="False" KeyField="False" SortMemberPath="ServingTableScoreTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableScoreTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzLabel Name="Lable44" Content=":میانگین زمان انجام کلیه ی تیکت ها در بازه ی انتخاب شده(ساعت کاری)" Width="326" Height="23" ControlID="5084478789802753828" Canvas.Left="137.97014925" Canvas.Top="4.50439094" />
            <cm:tzTextBox Name="txtAverageTicketsDonePerDateRange" Width="96.029850749999966" Height="21" ControlID="5554965300775520075" Canvas.Left="40.9402985" Canvas.Top="6.50439094" cm:DataBinding="dsAverageTicketsDonePerDateRange" cm:DataBindingField="TicketsInActorCartable_AverageTime_WorkHours" cm:IsEnableItem="False" />
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="4705150657088715811" Canvas.Left="1209.7713397166651" Canvas.Top="-3.3345368000000235" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:tzDataSource Name="dsAverageTicketsDonePerDateRange" Content="dsAverageTicketsDonePerDateRange" Width="110" Height="25" ControlID="5085566583689321772" Canvas.Left="150.97014924999996" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/12/19 13:54:11', GUID = '10f8b961-859e-4e15-a671-45b5fceadd43', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "31264" ,"components": [{"key": "5360246278547633509","label": "cmbActionUser","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5085386696290327415","label": "cmbStatusEghdamat","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4814664482230452174","label": "cmbUser","value": "", "controlType": "dropdown","options":""},{"key":"5085566583689321772" , "dataSourceName":"dsAverageTicketsDonePerDateRange" , "controlType": "datasource",  "selectQuery" :"sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5453950973762427790" , "dataSourceName":"dsEghdam" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetActionUsers_FRM31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4705150657088715811" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5719051335511428408" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM138" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387686726848626359" , "dataSourceName":"dsUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetExpertUsers_FRM31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5554965300775520075","label": "txtAverageTicketsDonePerDateRange","controlType": "textbox", "type": "" , "DataBindingField" : "TicketsInActorCartable_AverageTime_WorkHours"},{"value": "","key": "5452408332231075706","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5487463135379127114","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 31264
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31264') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31264] ( [frm31264Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5452408332231075706]  [nvarchar] ( 50) NULL , [Col_5487463135379127114]  [bigint] NULL , [Col_4647773901884335145]  [nvarchar] ( 50) NULL , [Col_4838564445226209905]  [nvarchar] ( 50) NULL , [Col_5266482798981468614]  [nvarchar] ( 50) NULL , [Col_4814664482230452174]  [nvarchar] ( 50) NULL , [Col_5085386696290327415]  [int] NULL , [Col_5360246278547633509]  [nvarchar] ( 50) NULL , [Col_5464986043886275934]  [nvarchar] ( 10) NULL , [Col_4771070049794054603]  [nvarchar] ( 10) NULL , [Col_5230226762261664435]  [nvarchar] ( 10) NULL , [Col_5180185013363300688]  [nvarchar] ( 10) NULL , [Col_5554965300775520075]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm31264Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'frm31264Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD frm31264Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5452408332231075706' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5452408332231075706 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5487463135379127114' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5487463135379127114 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_4647773901884335145' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_4647773901884335145 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_4838564445226209905' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_4838564445226209905 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5266482798981468614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5266482798981468614 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_4814664482230452174' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_4814664482230452174 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5085386696290327415' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5085386696290327415 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5360246278547633509' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5360246278547633509 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5464986043886275934' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5464986043886275934 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_4771070049794054603' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_4771070049794054603 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5230226762261664435' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5230226762261664435 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5180185013363300688' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5180185013363300688 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31264' AND COLUMN_NAME = 'Col_5554965300775520075' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31264] ADD Col_5554965300775520075 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31264]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31264
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31264] ( @PKFormId as bigint OUTPUT ,  @Col_5452408332231075706 AS nvarchar(50),  @Col_5487463135379127114 AS bigint,  @Col_4647773901884335145 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_4814664482230452174 AS nvarchar(50),  @Col_5085386696290327415 AS int,  @Col_5360246278547633509 AS nvarchar(50),  @Col_5464986043886275934 AS nvarchar(10),  @Col_4771070049794054603 AS nvarchar(10),  @Col_5230226762261664435 AS nvarchar(10),  @Col_5180185013363300688 AS nvarchar(10),  @Col_5554965300775520075 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31264](Col_5452408332231075706,Col_5487463135379127114,Col_4647773901884335145,Col_4838564445226209905,Col_5266482798981468614,Col_4814664482230452174,Col_5085386696290327415,Col_5360246278547633509,Col_5464986043886275934,Col_4771070049794054603,Col_5230226762261664435,Col_5180185013363300688,Col_5554965300775520075) VALUES ( @Col_5452408332231075706,@Col_5487463135379127114,@Col_4647773901884335145,@Col_4838564445226209905,@Col_5266482798981468614,@Col_4814664482230452174,@Col_5085386696290327415,@Col_5360246278547633509,@Col_5464986043886275934,@Col_4771070049794054603,@Col_5230226762261664435,@Col_5180185013363300688,@Col_5554965300775520075 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31264]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31264
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31264] ( @PKFormId as bigint OUTPUT ,  @Col_5452408332231075706 AS nvarchar(50),  @Col_5487463135379127114 AS bigint,  @Col_4647773901884335145 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_4814664482230452174 AS nvarchar(50),  @Col_5085386696290327415 AS int,  @Col_5360246278547633509 AS nvarchar(50),  @Col_5464986043886275934 AS nvarchar(10),  @Col_4771070049794054603 AS nvarchar(10),  @Col_5230226762261664435 AS nvarchar(10),  @Col_5180185013363300688 AS nvarchar(10),  @Col_5554965300775520075 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31264] SET Col_5452408332231075706 =  @Col_5452408332231075706, Col_5487463135379127114 =  @Col_5487463135379127114, Col_4647773901884335145 =  @Col_4647773901884335145, Col_4838564445226209905 =  @Col_4838564445226209905, Col_5266482798981468614 =  @Col_5266482798981468614, Col_4814664482230452174 =  @Col_4814664482230452174, Col_5085386696290327415 =  @Col_5085386696290327415, Col_5360246278547633509 =  @Col_5360246278547633509, Col_5464986043886275934 =  @Col_5464986043886275934, Col_4771070049794054603 =  @Col_4771070049794054603, Col_5230226762261664435 =  @Col_5230226762261664435, Col_5180185013363300688 =  @Col_5180185013363300688, Col_5554965300775520075 =  @Col_5554965300775520075 WHERE [frm31264Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31270) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31270, N'گزارش عملکرد میز خدمت منابع انسانی-فاز 2',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1558" Height="937.51666667" Background="White">
  <Canvas Width="1532" Height="913">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="1516" Height="896" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="7.9999999999999787" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1488" Height="858.51666667" Background="#FFD7E4F2" BorderBrush="#FFD5DFE5" ControlID="5253751524000330582" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable5" Content=":از تاریخ" ControlID="4810449434411966148" Canvas.Left="1402.21" Canvas.Top="3.5377242766666512" />
            <cm:PDatePicker Name="prcFromDate" Width="165" Height="20" ControlID="5464986043886275934" TabIndex="1" Canvas.Left="1256.6134202" Canvas.Top="4.6654632" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:tzLabel Name="Lable9" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="1073.5619694833354" Canvas.Top="0.18212986333334325" cm:ControlID="5091682343098369777" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="147.51826932" Height="27" ControlID="5657872315074103558" Canvas.Left="8" Canvas.Top="100.50439094" cm:Event="dsSearch,dsAverageTicketsDonePerDateRange" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5719051335511428408" Canvas.Left="25.999999999999659" Canvas.Top="62.504390943333277" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Tbl_Cu_ServingTablSecondPhase_Log_Frm31264_HumanResource">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @RegUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ActionUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatusEghdamat}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFFrom}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDFrom" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFTo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDTo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDesc}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Desc" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable39" Content=":نوع درخواست" Width="NaN" Height="NaN" ControlID="4877390428600572878" FontFamily="Tahoma" Canvas.Left="1047.2521465400009" Canvas.Top="37.021057599999963" />
            <cm:tzLookUpComboBox Name="cmbRequestKind" Width="219.99999999999932" Height="22" ControlID="4647773901884335145" Canvas.Left="818.252146540001" Canvas.Top="38.987724266666589" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dsEditGrid" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
            <cm:tzLookUpComboBox Name="cmbSubGroup" Width="220" Height="22" ControlID="4838564445226209905" Canvas.Left="1173.0833333333335" Canvas.Top="37.021057609999986" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
            <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1226.0244520566669" Canvas.Top="34.021057609999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141_HumanResource" />
            <cm:tzLabel Name="Lable9091" Content=":عنوان درخواست" Width="98.476666669999844" Height="23" ControlID="5679302047551643551" Canvas.Left="689.67210627000168" Canvas.Top="42.537724276666722" />
            <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="220" Height="22" ControlID="5266482798981468614" Canvas.Left="468.67210627000173" Canvas.Top="42.021057610000071" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsFieldName,dsNeedCertificate,dsEditGrid,dsCompare" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
            <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="833.11819735000108" Canvas.Top="38.987724266666646" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable67" Content=":زيرگروه" Width="NaN" Height="NaN" ControlID="5225666388272332073" FontFamily="Tahoma" Canvas.Left="1402.0833333333335" Canvas.Top="37.021057610000014" />
            <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="470.11466209000486" Canvas.Top="39.021057610000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:PDatePicker Name="prcToDate" Width="154.64583192" Height="20" TabIndex="2" Canvas.Left="917.91613756333527" Canvas.Top="4.6654631966666233" cm:ControlID="4771070049794054603" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable79" Content=":کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="691.11466209000184" Canvas.Top="8.5377242766666264" cm:ControlID="4723719339189814022" />
            <cm:tzLookUpComboBox Name="cmbUser" Width="219.99999999999869" Height="22" ControlID="4814664482230452174" Canvas.Left="470.11466209000321" Canvas.Top="11.021057609999959" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsUser" Content="dsUser" Width="110" Height="25" ControlID="5387686726848626359" Canvas.Left="512.85684721000007" Canvas.Top="8.0210576099999571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetExpertUsers_FRM31264_HumanResource" />
            <cm:tzLabel Name="Lable90" Content=":وضعيت فرآیند" Width="NaN" Height="NaN" ControlID="5096547280940749852" FontFamily="Tahoma" Canvas.Left="1400.8600000000001" Canvas.Top="70.504390933333283" />
            <cm:tzLookUpComboBox Name="cmbStatusEghdamat" Width="218.77666666666659" Height="22" ControlID="5085386696290327415" Canvas.Left="1173.0833333333335" Canvas.Top="70.50439094" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsCanTReg,dsStatus4" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" ControlID="5202716452179788894" Canvas.Left="1226.0244520566664" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" />
            <cm:tzLabel Name="Lable21" Content=":کاربر اقدام کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1047.2521465400007" Canvas.Top="70.504390933333255" cm:ControlID="4743089464622777831" />
            <cm:tzLookUpComboBox Name="cmbActionUser" Width="219.99999999999869" Height="22" Canvas.Left="818.25214654000172" Canvas.Top="72.987724266666589" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5360246278547633509" cm:DataBinding="dsEghdam" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable23" Content=":شرح درخواست" Width="98.476666669999844" Height="23" Canvas.Left="699.11466209000173" Canvas.Top="74.537724276666722" cm:ControlID="5671975513299112230" />
            <cm:tzTextBox Name="txtDesc" Width="219.999999999997" Height="21" ControlID="5452408332231075706" Canvas.Left="470.11466209000474" Canvas.Top="73.021057610000071" />
            <cm:tzLabel Name="Lable53" Content=":تاریخ بستن فرآیند از" Width="NaN" Height="NaN" Canvas.Left="1047.2521465400005" Canvas.Top="106.53772427666675" cm:ControlID="4723512399233345620" />
            <cm:PDatePicker Name="pdEndWFFrom" Width="149" Height="20" TabIndex="2" Canvas.Left="923.56196948333525" Canvas.Top="103.02105761000007" cm:ControlID="5230226762261664435" cm:DefaultValue="" />
            <cm:tzDataSource Name="dsEghdam" Content="dsEghdam" Width="110" Height="25" ControlID="5453950973762427790" Canvas.Left="812.56196948333547" Canvas.Top="77.021057610000071" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetActionUsers_FRM31264_HumanResource" />
            <cm:tzLabel Name="Lable56" Content=":شماره فرآیند" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1400.8600000000004" Canvas.Top="103.02105760666669" cm:ControlID="5195765181082358445" />
            <cm:tzTextBox Name="txtWFID" Width="218.77666666666642" Height="21" ControlID="5487463135379127114" Canvas.Left="1173.0833333333335" Canvas.Top="106.50439094" cm:DataType="BigInt" />
            <cm:tzLabel Name="Lable104" Content=":تاریخ بستن فرآیند تا" Width="NaN" Height="NaN" Canvas.Left="699.87196948333542" Canvas.Top="106.53772427666672" cm:ControlID="5648210819390458334" />
            <cm:PDatePicker Name="pdEndWFTo" Width="148" Height="20" TabIndex="2" Canvas.Left="574.76908739" Canvas.Top="103.02105761000006" cm:ControlID="5180185013363300688" cm:DefaultValue="" />
            <cm:tzDataGrid Name="GridView37" Width="1460" Height="678.16501155666663" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4618518354916110492" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="145.83498844" cm:BindingForm="dsSearch" cm:KeyField="ServingTableID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNO" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNO">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNO}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableID" DecimalMark="False" HeaderText="ServingTableID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestKind" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestKind">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestKind}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestSubject" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="91" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Description" DecimalMark="False" HeaderText="شرح  درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Description">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Description}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EghadmFullName" DecimalMark="False" HeaderText="کاربر اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="EghadmFullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EghadmFullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusPublicDesc" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="StatusPublicDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusPublicDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="86" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prdRegDate" DecimalMark="False" HeaderText="تاریخ ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prdRegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prdRegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prtRegTime" DecimalMark="False" HeaderText="ساعت ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prtRegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prtRegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ورود به کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NextDate" DecimalMark="False" HeaderText="تاریخ خروج از کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="NextDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NextDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="72" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ بستن فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="124" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Datedifff" DecimalMark="False" HeaderText="مدت زمان انجام(دقیقه)" IsRowColorField="False" KeyField="False" SortMemberPath="Datedifff">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Datedifff}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableScoreTitle" DecimalMark="False" HeaderText="امتیاز" IsRowColorField="False" KeyField="False" SortMemberPath="ServingTableScoreTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableScoreTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="4705150657088715811" Canvas.Left="1201.9084724766651" Canvas.Top="-0.33453680333337843" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:tzLabel Name="Lable75" Content=":میانگین زمان انجام کلیه ی تیکت ها در بازه ی انتخاب شده(ساعت کاری)" Width="326" Height="23" ControlID="5185903400389742163" Canvas.Left="135.11466209000332" Canvas.Top="10.021057609999955" />
            <cm:tzTextBox Name="txtAverageTicketsDonePerDateRange" Width="96" Height="21" ControlID="4811023313624809021" Canvas.Left="35.518269320004663" Canvas.Top="12.0210576099999" cm:DataBinding="dsAverageTicketsDonePerDateRange" cm:DataBindingField="TicketsInActorCartable_AverageTime_WorkHours" cm:IsEnableItem="False" />
            <cm:tzDataSource Name="dsAverageTicketsDonePerDateRange" Content="dsAverageTicketsDonePerDateRange" Width="110" Height="25" ControlID="5315945658250237462" Canvas.Left="168.61538462" Canvas.Top="62.504390943333362" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/12/19 13:58:54', 'df66dd6d-4a9f-4b88-8d46-d8fd19863898', 0, N'', N'{"formID": "31270" ,"components": [{"key": "5360246278547633509","label": "cmbActionUser","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5085386696290327415","label": "cmbStatusEghdamat","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4814664482230452174","label": "cmbUser","value": "", "controlType": "dropdown","options":""},{"key":"5315945658250237462" , "dataSourceName":"dsAverageTicketsDonePerDateRange" , "controlType": "datasource",  "selectQuery" :"sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5453950973762427790" , "dataSourceName":"dsEghdam" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetActionUsers_FRM31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4705150657088715811" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5719051335511428408" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Tbl_Cu_ServingTablSecondPhase_Log_Frm31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387686726848626359" , "dataSourceName":"dsUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetExpertUsers_FRM31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "4811023313624809021","label": "txtAverageTicketsDonePerDateRange","controlType": "textbox", "type": "" , "DataBindingField" : "TicketsInActorCartable_AverageTime_WorkHours"},{"value": "","key": "5452408332231075706","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5487463135379127114","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'گزارش عملکرد میز خدمت منابع انسانی-فاز 2',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1558" Height="937.51666667" Background="White">
  <Canvas Width="1532" Height="913">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="1516" Height="896" Background="#FFB9D1EA" BorderBrush="#FFD5DFE5" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="7.9999999999999787" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1488" Height="858.51666667" Background="#FFD7E4F2" BorderBrush="#FFD5DFE5" ControlID="5253751524000330582" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable5" Content=":از تاریخ" ControlID="4810449434411966148" Canvas.Left="1402.21" Canvas.Top="3.5377242766666512" />
            <cm:PDatePicker Name="prcFromDate" Width="165" Height="20" ControlID="5464986043886275934" TabIndex="1" Canvas.Left="1256.6134202" Canvas.Top="4.6654632" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:tzLabel Name="Lable9" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="1073.5619694833354" Canvas.Top="0.18212986333334325" cm:ControlID="5091682343098369777" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="147.51826932" Height="27" ControlID="5657872315074103558" Canvas.Left="8" Canvas.Top="100.50439094" cm:Event="dsSearch,dsAverageTicketsDonePerDateRange" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5719051335511428408" Canvas.Left="25.999999999999659" Canvas.Top="62.504390943333277" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Tbl_Cu_ServingTablSecondPhase_Log_Frm31264_HumanResource">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroupID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKindID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @RegUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ActionUserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatusEghdamat}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFFrom}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDFrom" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdEndWFTo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @EndWFIDTo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDesc}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Desc" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable39" Content=":نوع درخواست" Width="NaN" Height="NaN" ControlID="4877390428600572878" FontFamily="Tahoma" Canvas.Left="1047.2521465400009" Canvas.Top="37.021057599999963" />
            <cm:tzLookUpComboBox Name="cmbRequestKind" Width="219.99999999999932" Height="22" ControlID="4647773901884335145" Canvas.Left="818.252146540001" Canvas.Top="38.987724266666589" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestKind" cm:Event="dsRequestSubject,dsEditGrid" cm:tzDisplayItem="RequestKindTitle" cm:tzValueItem="RequestKindID" />
            <cm:tzLookUpComboBox Name="cmbSubGroup" Width="220" Height="22" ControlID="4838564445226209905" Canvas.Left="1173.0833333333335" Canvas.Top="37.021057609999986" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubGroup" cm:Event="dsRequestKind,dsRequestSubject,dsEditGrid" cm:tzDisplayItem="SubGroupTitle" cm:tzValueItem="SubGroupID" />
            <cm:tzDataSource Name="dsSubGroup" Content="dsSubGroup" Width="110" Height="25" ControlID="5420835286157687371" Canvas.Left="1226.0244520566669" Canvas.Top="34.021057609999986" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_CmbSubGroup_FRM141_HumanResource" />
            <cm:tzLabel Name="Lable9091" Content=":عنوان درخواست" Width="98.476666669999844" Height="23" ControlID="5679302047551643551" Canvas.Left="689.67210627000168" Canvas.Top="42.537724276666722" />
            <cm:tzLookUpComboBox Name="cmbRequestSubject" Width="220" Height="22" ControlID="5266482798981468614" Canvas.Left="468.67210627000173" Canvas.Top="42.021057610000071" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRequestSubject" cm:Event="dsFieldName,dsNeedCertificate,dsEditGrid,dsCompare" cm:tzDisplayItem="RequestSubjectName" cm:tzValueItem="RequestSubjectID" />
            <cm:tzDataSource Name="dsRequestKind" Content="dsRequestKind" Width="110" Height="25" ControlID="5266257721166981374" Canvas.Left="833.11819735000108" Canvas.Top="38.987724266666646" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestKind_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbSubGroupID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable67" Content=":زيرگروه" Width="NaN" Height="NaN" ControlID="5225666388272332073" FontFamily="Tahoma" Canvas.Left="1402.0833333333335" Canvas.Top="37.021057610000014" />
            <cm:tzDataSource Name="dsRequestSubject" Content="dsRequestSubject" Width="110" Height="25" ControlID="5522209844206548929" Canvas.Left="470.11466209000486" Canvas.Top="39.021057610000014" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubGroup}" IsOutputParameter="False" ParameterType="int" SpParamName=" @SubGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRequestKind}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestKind" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:PDatePicker Name="prcToDate" Width="154.64583192" Height="20" TabIndex="2" Canvas.Left="917.91613756333527" Canvas.Top="4.6654631966666233" cm:ControlID="4771070049794054603" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable79" Content=":کاربر ثبت کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="691.11466209000184" Canvas.Top="8.5377242766666264" cm:ControlID="4723719339189814022" />
            <cm:tzLookUpComboBox Name="cmbUser" Width="219.99999999999869" Height="22" ControlID="4814664482230452174" Canvas.Left="470.11466209000321" Canvas.Top="11.021057609999959" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUser" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsUser" Content="dsUser" Width="110" Height="25" ControlID="5387686726848626359" Canvas.Left="512.85684721000007" Canvas.Top="8.0210576099999571" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetExpertUsers_FRM31264_HumanResource" />
            <cm:tzLabel Name="Lable90" Content=":وضعيت فرآیند" Width="NaN" Height="NaN" ControlID="5096547280940749852" FontFamily="Tahoma" Canvas.Left="1400.8600000000001" Canvas.Top="70.504390933333283" />
            <cm:tzLookUpComboBox Name="cmbStatusEghdamat" Width="218.77666666666659" Height="22" ControlID="5085386696290327415" Canvas.Left="1173.0833333333335" Canvas.Top="70.50439094" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:Event="dsCanTReg,dsStatus4" cm:tzDisplayItem="StatusPublicDescItems" cm:tzValueItem="StatusPublicDescID" />
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" ControlID="5202716452179788894" Canvas.Left="1226.0244520566664" Canvas.Top="62.504390943333306" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" />
            <cm:tzLabel Name="Lable21" Content=":کاربر اقدام کننده" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1047.2521465400007" Canvas.Top="70.504390933333255" cm:ControlID="4743089464622777831" />
            <cm:tzLookUpComboBox Name="cmbActionUser" Width="219.99999999999869" Height="22" Canvas.Left="818.25214654000172" Canvas.Top="72.987724266666589" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5360246278547633509" cm:DataBinding="dsEghdam" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable23" Content=":شرح درخواست" Width="98.476666669999844" Height="23" Canvas.Left="699.11466209000173" Canvas.Top="74.537724276666722" cm:ControlID="5671975513299112230" />
            <cm:tzTextBox Name="txtDesc" Width="219.999999999997" Height="21" ControlID="5452408332231075706" Canvas.Left="470.11466209000474" Canvas.Top="73.021057610000071" />
            <cm:tzLabel Name="Lable53" Content=":تاریخ بستن فرآیند از" Width="NaN" Height="NaN" Canvas.Left="1047.2521465400005" Canvas.Top="106.53772427666675" cm:ControlID="4723512399233345620" />
            <cm:PDatePicker Name="pdEndWFFrom" Width="149" Height="20" TabIndex="2" Canvas.Left="923.56196948333525" Canvas.Top="103.02105761000007" cm:ControlID="5230226762261664435" cm:DefaultValue="" />
            <cm:tzDataSource Name="dsEghdam" Content="dsEghdam" Width="110" Height="25" ControlID="5453950973762427790" Canvas.Left="812.56196948333547" Canvas.Top="77.021057610000071" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_GetActionUsers_FRM31264_HumanResource" />
            <cm:tzLabel Name="Lable56" Content=":شماره فرآیند" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="1400.8600000000004" Canvas.Top="103.02105760666669" cm:ControlID="5195765181082358445" />
            <cm:tzTextBox Name="txtWFID" Width="218.77666666666642" Height="21" ControlID="5487463135379127114" Canvas.Left="1173.0833333333335" Canvas.Top="106.50439094" cm:DataType="BigInt" />
            <cm:tzLabel Name="Lable104" Content=":تاریخ بستن فرآیند تا" Width="NaN" Height="NaN" Canvas.Left="699.87196948333542" Canvas.Top="106.53772427666672" cm:ControlID="5648210819390458334" />
            <cm:PDatePicker Name="pdEndWFTo" Width="148" Height="20" TabIndex="2" Canvas.Left="574.76908739" Canvas.Top="103.02105761000006" cm:ControlID="5180185013363300688" cm:DefaultValue="" />
            <cm:tzDataGrid Name="GridView37" Width="1460" Height="678.16501155666663" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4618518354916110492" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="145.83498844" cm:BindingForm="dsSearch" cm:KeyField="ServingTableID" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNO" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNO">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNO}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableID" DecimalMark="False" HeaderText="ServingTableID" IsRowColorField="False" KeyField="True" SortMemberPath="ServingTableID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestKind" DecimalMark="False" HeaderText="نوع درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestKind">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestKind}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtRequestSubject" DecimalMark="False" HeaderText="عنوان درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="txtRequestSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtRequestSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="91" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Description" DecimalMark="False" HeaderText="شرح  درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Description">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Description}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EghadmFullName" DecimalMark="False" HeaderText="کاربر اقدام کننده" IsRowColorField="False" KeyField="False" SortMemberPath="EghadmFullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EghadmFullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusPublicDesc" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="StatusPublicDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusPublicDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="86" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prdRegDate" DecimalMark="False" HeaderText="تاریخ ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prdRegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prdRegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="prtRegTime" DecimalMark="False" HeaderText="ساعت ثبت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="prtRegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding prtRegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ورود به کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NextDate" DecimalMark="False" HeaderText="تاریخ خروج از کارتابل" IsRowColorField="False" KeyField="False" SortMemberPath="NextDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NextDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="72" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ بستن فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="124" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Datedifff" DecimalMark="False" HeaderText="مدت زمان انجام(دقیقه)" IsRowColorField="False" KeyField="False" SortMemberPath="Datedifff">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Datedifff}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ServingTableScoreTitle" DecimalMark="False" HeaderText="امتیاز" IsRowColorField="False" KeyField="False" SortMemberPath="ServingTableScoreTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ServingTableScoreTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="4705150657088715811" Canvas.Left="1201.9084724766651" Canvas.Top="-0.33453680333337843" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:tzLabel Name="Lable75" Content=":میانگین زمان انجام کلیه ی تیکت ها در بازه ی انتخاب شده(ساعت کاری)" Width="326" Height="23" ControlID="5185903400389742163" Canvas.Left="135.11466209000332" Canvas.Top="10.021057609999955" />
            <cm:tzTextBox Name="txtAverageTicketsDonePerDateRange" Width="96" Height="21" ControlID="4811023313624809021" Canvas.Left="35.518269320004663" Canvas.Top="12.0210576099999" cm:DataBinding="dsAverageTicketsDonePerDateRange" cm:DataBindingField="TicketsInActorCartable_AverageTime_WorkHours" cm:IsEnableItem="False" />
            <cm:tzDataSource Name="dsAverageTicketsDonePerDateRange" Content="dsAverageTicketsDonePerDateRange" Width="110" Height="25" ControlID="5315945658250237462" Canvas.Left="168.61538462" Canvas.Top="62.504390943333362" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/12/19 13:58:54', GUID = 'df66dd6d-4a9f-4b88-8d46-d8fd19863898', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "31270" ,"components": [{"key": "5360246278547633509","label": "cmbActionUser","value": "", "controlType": "dropdown","options":""},{"key": "4647773901884335145","label": "cmbRequestKind","value": "", "controlType": "dropdown","options":""},{"key": "5266482798981468614","label": "cmbRequestSubject","value": "", "controlType": "dropdown","options":""},{"key": "5085386696290327415","label": "cmbStatusEghdamat","value": "", "controlType": "dropdown","options":""},{"key": "4838564445226209905","label": "cmbSubGroup","value": "", "controlType": "dropdown","options":""},{"key": "4814664482230452174","label": "cmbUser","value": "", "controlType": "dropdown","options":""},{"key":"5315945658250237462" , "dataSourceName":"dsAverageTicketsDonePerDateRange" , "controlType": "datasource",  "selectQuery" :"sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5453950973762427790" , "dataSourceName":"dsEghdam" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetActionUsers_FRM31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4705150657088715811" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5266257721166981374" , "dataSourceName":"dsRequestKind" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestKind_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5522209844206548929" , "dataSourceName":"dsRequestSubject" , "controlType": "datasource",  "selectQuery" :"Sp_CU_cmbRequestSubjectDependsOnOtherFields_FRM141" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5719051335511428408" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Tbl_Cu_ServingTablSecondPhase_Log_Frm31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5202716452179788894" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_CU_Tbl_CU_Base_StatusPublicServiceDesc_Frm31264" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5420835286157687371" , "dataSourceName":"dsSubGroup" , "controlType": "datasource",  "selectQuery" :"Sp_CU_CmbSubGroup_FRM141_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5387686726848626359" , "dataSourceName":"dsUser" , "controlType": "datasource",  "selectQuery" :"Sp_CU_GetExpertUsers_FRM31264_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "4811023313624809021","label": "txtAverageTicketsDonePerDateRange","controlType": "textbox", "type": "" , "DataBindingField" : "TicketsInActorCartable_AverageTime_WorkHours"},{"value": "","key": "5452408332231075706","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5487463135379127114","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 31270
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31270') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31270] ( [frm31270Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5452408332231075706]  [nvarchar] ( 50) NULL , [Col_5487463135379127114]  [bigint] NULL , [Col_4647773901884335145]  [nvarchar] ( 50) NULL , [Col_4838564445226209905]  [nvarchar] ( 50) NULL , [Col_5266482798981468614]  [nvarchar] ( 50) NULL , [Col_4814664482230452174]  [nvarchar] ( 50) NULL , [Col_5085386696290327415]  [int] NULL , [Col_5360246278547633509]  [nvarchar] ( 50) NULL , [Col_5464986043886275934]  [nvarchar] ( 10) NULL , [Col_4771070049794054603]  [nvarchar] ( 10) NULL , [Col_5230226762261664435]  [nvarchar] ( 10) NULL , [Col_5180185013363300688]  [nvarchar] ( 10) NULL , [Col_5449985398519001140]  [nvarchar] ( 50) NULL , [Col_5280973472518559276]  [nvarchar] ( 50) NULL , [Col_5118047894716094182]  [nvarchar] ( 50) NULL , [Col_5304924138082365069]  [nvarchar] ( 50) NULL , [Col_5632306370217737447]  [nvarchar] ( 50) NULL , [Col_5724768256357827142]  [bit] NULL , [Col_4796465593261347269]  [bit] NULL , [Col_5123126826982239140]  [bit] NULL , [Col_5044550050811715400]  [nvarchar] ( 10) NULL , [Col_5362534824624050671]  [nvarchar] ( 5) NULL , [Col_5626431145858321694]  [nvarchar] ( 50) NULL , [Col_4811023313624809021]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm31270Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'frm31270Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD frm31270Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5452408332231075706' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5452408332231075706 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5487463135379127114' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5487463135379127114 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4647773901884335145' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4647773901884335145 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4838564445226209905' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4838564445226209905 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5266482798981468614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5266482798981468614 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4814664482230452174' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4814664482230452174 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5085386696290327415' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5085386696290327415 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5360246278547633509' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5360246278547633509 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5464986043886275934' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5464986043886275934 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4771070049794054603' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4771070049794054603 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5230226762261664435' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5230226762261664435 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5180185013363300688' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5180185013363300688 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5449985398519001140' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5449985398519001140 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5280973472518559276' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5280973472518559276 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5118047894716094182' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5118047894716094182 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5304924138082365069' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5304924138082365069 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5632306370217737447' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5632306370217737447 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5724768256357827142' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5724768256357827142 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4796465593261347269' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4796465593261347269 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5123126826982239140' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5123126826982239140 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5044550050811715400' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5044550050811715400 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5362534824624050671' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5362534824624050671 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_5626431145858321694' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_5626431145858321694 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31270' AND COLUMN_NAME = 'Col_4811023313624809021' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31270] ADD Col_4811023313624809021 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31270]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31270
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31270] ( @PKFormId as bigint OUTPUT ,  @Col_5452408332231075706 AS nvarchar(50),  @Col_5487463135379127114 AS bigint,  @Col_4647773901884335145 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_4814664482230452174 AS nvarchar(50),  @Col_5085386696290327415 AS int,  @Col_5360246278547633509 AS nvarchar(50),  @Col_5464986043886275934 AS nvarchar(10),  @Col_4771070049794054603 AS nvarchar(10),  @Col_5230226762261664435 AS nvarchar(10),  @Col_5180185013363300688 AS nvarchar(10),  @Col_5449985398519001140 AS nvarchar(50),  @Col_5280973472518559276 AS nvarchar(50),  @Col_5118047894716094182 AS nvarchar(50),  @Col_5304924138082365069 AS nvarchar(50),  @Col_5632306370217737447 AS nvarchar(50),  @Col_5724768256357827142 AS bit,  @Col_4796465593261347269 AS bit,  @Col_5123126826982239140 AS bit,  @Col_5044550050811715400 AS nvarchar(10),  @Col_5362534824624050671 AS nvarchar(5),  @Col_5626431145858321694 AS nvarchar(50),  @Col_4811023313624809021 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31270](Col_5452408332231075706,Col_5487463135379127114,Col_4647773901884335145,Col_4838564445226209905,Col_5266482798981468614,Col_4814664482230452174,Col_5085386696290327415,Col_5360246278547633509,Col_5464986043886275934,Col_4771070049794054603,Col_5230226762261664435,Col_5180185013363300688,Col_5449985398519001140,Col_5280973472518559276,Col_5118047894716094182,Col_5304924138082365069,Col_5632306370217737447,Col_5724768256357827142,Col_4796465593261347269,Col_5123126826982239140,Col_5044550050811715400,Col_5362534824624050671,Col_5626431145858321694,Col_4811023313624809021) VALUES ( @Col_5452408332231075706,@Col_5487463135379127114,@Col_4647773901884335145,@Col_4838564445226209905,@Col_5266482798981468614,@Col_4814664482230452174,@Col_5085386696290327415,@Col_5360246278547633509,@Col_5464986043886275934,@Col_4771070049794054603,@Col_5230226762261664435,@Col_5180185013363300688,@Col_5449985398519001140,@Col_5280973472518559276,@Col_5118047894716094182,@Col_5304924138082365069,@Col_5632306370217737447,@Col_5724768256357827142,@Col_4796465593261347269,@Col_5123126826982239140,@Col_5044550050811715400,@Col_5362534824624050671,@Col_5626431145858321694,@Col_4811023313624809021 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31270]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31270
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31270] ( @PKFormId as bigint OUTPUT ,  @Col_5452408332231075706 AS nvarchar(50),  @Col_5487463135379127114 AS bigint,  @Col_4647773901884335145 AS nvarchar(50),  @Col_4838564445226209905 AS nvarchar(50),  @Col_5266482798981468614 AS nvarchar(50),  @Col_4814664482230452174 AS nvarchar(50),  @Col_5085386696290327415 AS int,  @Col_5360246278547633509 AS nvarchar(50),  @Col_5464986043886275934 AS nvarchar(10),  @Col_4771070049794054603 AS nvarchar(10),  @Col_5230226762261664435 AS nvarchar(10),  @Col_5180185013363300688 AS nvarchar(10),  @Col_5449985398519001140 AS nvarchar(50),  @Col_5280973472518559276 AS nvarchar(50),  @Col_5118047894716094182 AS nvarchar(50),  @Col_5304924138082365069 AS nvarchar(50),  @Col_5632306370217737447 AS nvarchar(50),  @Col_5724768256357827142 AS bit,  @Col_4796465593261347269 AS bit,  @Col_5123126826982239140 AS bit,  @Col_5044550050811715400 AS nvarchar(10),  @Col_5362534824624050671 AS nvarchar(5),  @Col_5626431145858321694 AS nvarchar(50),  @Col_4811023313624809021 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31270] SET Col_5452408332231075706 =  @Col_5452408332231075706, Col_5487463135379127114 =  @Col_5487463135379127114, Col_4647773901884335145 =  @Col_4647773901884335145, Col_4838564445226209905 =  @Col_4838564445226209905, Col_5266482798981468614 =  @Col_5266482798981468614, Col_4814664482230452174 =  @Col_4814664482230452174, Col_5085386696290327415 =  @Col_5085386696290327415, Col_5360246278547633509 =  @Col_5360246278547633509, Col_5464986043886275934 =  @Col_5464986043886275934, Col_4771070049794054603 =  @Col_4771070049794054603, Col_5230226762261664435 =  @Col_5230226762261664435, Col_5180185013363300688 =  @Col_5180185013363300688, Col_5449985398519001140 =  @Col_5449985398519001140, Col_5280973472518559276 =  @Col_5280973472518559276, Col_5118047894716094182 =  @Col_5118047894716094182, Col_5304924138082365069 =  @Col_5304924138082365069, Col_5632306370217737447 =  @Col_5632306370217737447, Col_5724768256357827142 =  @Col_5724768256357827142, Col_4796465593261347269 =  @Col_4796465593261347269, Col_5123126826982239140 =  @Col_5123126826982239140, Col_5044550050811715400 =  @Col_5044550050811715400, Col_5362534824624050671 =  @Col_5362534824624050671, Col_5626431145858321694 =  @Col_5626431145858321694, Col_4811023313624809021 =  @Col_4811023313624809021 WHERE [frm31270Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31265) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31265, N'گزارش کارشناسان میز خدمت فناوری اطلاعات-فاز 2',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="554" Background="#FFB9D1EA" BorderBrush="#FFDEEFF7" ControlID="4980910234751559512" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="906" Height="516.51666666666665" Background="#FFDEEFF7" ControlID="4676928735627378629" FontFamily="Tahoma" Canvas.Left="7.9999999999999893" Canvas.Top="8.0000000000000036" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="gdvSearch" Width="878" Height="441.747851" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4644367702739975548" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="45.285482329999979" cm:BindingForm="dsSearch" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalShode" DecimalMark="False" HeaderText="تیکت های حل شده" IsRowColorField="False" KeyField="False" SortMemberPath="HalShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RadShode" DecimalMark="False" HeaderText="تیکت های رد شده" IsRowColorField="False" KeyField="False" SortMemberPath="RadShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RadShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Peymankar" DecimalMark="False" HeaderText="تیکت های باز" IsRowColorField="False" KeyField="False" SortMemberPath="Peymankar">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Peymankar}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tekrari" DecimalMark="False" HeaderText="تیکت های تکراری" IsRowColorField="False" KeyField="False" SortMemberPath="Tekrari">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tekrari}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SumAll" DecimalMark="False" HeaderText="تعداد کل" IsRowColorField="False" KeyField="False" SortMemberPath="SumAll">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SumAll}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AvgTimeTicketsDonePerUser_WorkDays" DecimalMark="False" HeaderText="میانگین زمان انجام کلیه ی تیکت ها کاربر در بازه ی انتخاب شده(ساعت کاری)" IsRowColorField="False" KeyField="False" SortMemberPath="AvgTimeTicketsDonePerUser_WorkDays">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AvgTimeTicketsDonePerUser_WorkDays}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:PDatePicker Name="prdFromDate" Width="138" Height="20" ControlID="5139475232617689808" Canvas.Left="728.82808023000007" Canvas.Top="13.16227315999998" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:PDatePicker Name="prdToDate" Width="138" Height="20" Canvas.Left="544.55873925000037" Canvas.Top="13.16227315999998" cm:ControlID="5440397701875399151" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable36" Content=":از تاریخ" ControlID="4817803763741733736" Canvas.Left="845.56802292" Canvas.Top="8.6789398266665181" />
            <cm:tzLabel Name="Lable37" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="659.73707737000041" Canvas.Top="8.6789398266666318" cm:ControlID="4626847951268530229" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5268451117329257876" Canvas.Left="8" Canvas.Top="159.95310410999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="5718710616553723986" Canvas.Left="8" Canvas.Top="111.22817573999993" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" ControlID="5304938971409178917" Canvas.Left="8" Canvas.Top="13.285482329999965" cm:Event="dsSearch" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/12/19 13:57:31', '755841e0-7a09-427e-a493-217b871fcfce', 0, N'', N'{"formID": "31265" ,"components": [{"key":"5718710616553723986" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5268451117329257876" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'گزارش کارشناسان میز خدمت فناوری اطلاعات-فاز 2',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="554" Background="#FFB9D1EA" BorderBrush="#FFDEEFF7" ControlID="4980910234751559512" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="906" Height="516.51666666666665" Background="#FFDEEFF7" ControlID="4676928735627378629" FontFamily="Tahoma" Canvas.Left="7.9999999999999893" Canvas.Top="8.0000000000000036" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="gdvSearch" Width="878" Height="441.747851" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4644367702739975548" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="45.285482329999979" cm:BindingForm="dsSearch" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalShode" DecimalMark="False" HeaderText="تیکت های حل شده" IsRowColorField="False" KeyField="False" SortMemberPath="HalShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RadShode" DecimalMark="False" HeaderText="تیکت های رد شده" IsRowColorField="False" KeyField="False" SortMemberPath="RadShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RadShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Peymankar" DecimalMark="False" HeaderText="تیکت های باز" IsRowColorField="False" KeyField="False" SortMemberPath="Peymankar">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Peymankar}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tekrari" DecimalMark="False" HeaderText="تیکت های تکراری" IsRowColorField="False" KeyField="False" SortMemberPath="Tekrari">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tekrari}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SumAll" DecimalMark="False" HeaderText="تعداد کل" IsRowColorField="False" KeyField="False" SortMemberPath="SumAll">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SumAll}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AvgTimeTicketsDonePerUser_WorkDays" DecimalMark="False" HeaderText="میانگین زمان انجام کلیه ی تیکت ها کاربر در بازه ی انتخاب شده(ساعت کاری)" IsRowColorField="False" KeyField="False" SortMemberPath="AvgTimeTicketsDonePerUser_WorkDays">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AvgTimeTicketsDonePerUser_WorkDays}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:PDatePicker Name="prdFromDate" Width="138" Height="20" ControlID="5139475232617689808" Canvas.Left="728.82808023000007" Canvas.Top="13.16227315999998" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:PDatePicker Name="prdToDate" Width="138" Height="20" Canvas.Left="544.55873925000037" Canvas.Top="13.16227315999998" cm:ControlID="5440397701875399151" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable36" Content=":از تاریخ" ControlID="4817803763741733736" Canvas.Left="845.56802292" Canvas.Top="8.6789398266665181" />
            <cm:tzLabel Name="Lable37" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="659.73707737000041" Canvas.Top="8.6789398266666318" cm:ControlID="4626847951268530229" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5268451117329257876" Canvas.Left="8" Canvas.Top="159.95310410999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="5718710616553723986" Canvas.Left="8" Canvas.Top="111.22817573999993" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" ControlID="5304938971409178917" Canvas.Left="8" Canvas.Top="13.285482329999965" cm:Event="dsSearch" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/12/19 13:57:31', GUID = '755841e0-7a09-427e-a493-217b871fcfce', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "31265" ,"components": [{"key":"5718710616553723986" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5268451117329257876" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 31265
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31265') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31265] ( [frm31265Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5139475232617689808]  [nvarchar] ( 10) NULL , [Col_5440397701875399151]  [nvarchar] ( 10) NULL ,  PRIMARY KEY CLUSTERED ( [frm31265Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31265' AND COLUMN_NAME = 'frm31265Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31265] ADD frm31265Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31265' AND COLUMN_NAME = 'Col_5139475232617689808' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31265] ADD Col_5139475232617689808 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31265' AND COLUMN_NAME = 'Col_5440397701875399151' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31265] ADD Col_5440397701875399151 nvarchar (10) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31265]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31265
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31265] ( @PKFormId as bigint OUTPUT ,  @Col_5139475232617689808 AS nvarchar(10),  @Col_5440397701875399151 AS nvarchar(10) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31265](Col_5139475232617689808,Col_5440397701875399151) VALUES ( @Col_5139475232617689808,@Col_5440397701875399151 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31265]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31265
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31265] ( @PKFormId as bigint OUTPUT ,  @Col_5139475232617689808 AS nvarchar(10),  @Col_5440397701875399151 AS nvarchar(10) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31265] SET Col_5139475232617689808 =  @Col_5139475232617689808, Col_5440397701875399151 =  @Col_5440397701875399151 WHERE [frm31265Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31271) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31271, N'گزارش کارشناسان میز خدمت منابع انسانی-فاز 2',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="554" Background="#FFB9D1EA" BorderBrush="#FFDEEFF7" ControlID="4980910234751559512" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="906" Height="516.51666666666665" Background="#FFDEEFF7" ControlID="4676928735627378629" FontFamily="Tahoma" Canvas.Left="7.9999999999999893" Canvas.Top="8.0000000000000036" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="gdvSearch" Width="878" Height="441.747851" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4644367702739975548" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="-11.171919769999921" Canvas.Top="45.285482333333277" cm:BindingForm="dsSearch" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalShode" DecimalMark="False" HeaderText="تیکت های حل شده" IsRowColorField="False" KeyField="False" SortMemberPath="HalShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RadShode" DecimalMark="False" HeaderText="تیکت های رد شده" IsRowColorField="False" KeyField="False" SortMemberPath="RadShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RadShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Peymankar" DecimalMark="False" HeaderText="تیکت های باز" IsRowColorField="False" KeyField="False" SortMemberPath="Peymankar">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Peymankar}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tekrari" DecimalMark="False" HeaderText="تیکت های تکراری" IsRowColorField="False" KeyField="False" SortMemberPath="Tekrari">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tekrari}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SumAll" DecimalMark="False" HeaderText="تعداد کل" IsRowColorField="False" KeyField="False" SortMemberPath="SumAll">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SumAll}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AvgTimeTicketsDonePerUser_WorkDays" DecimalMark="False" HeaderText="میانگین زمان انجام کلیه ی تیکت ها کاربر در بازه ی انتخاب شده(ساعت کاری)" IsRowColorField="False" KeyField="False" SortMemberPath="AvgTimeTicketsDonePerUser_WorkDays">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AvgTimeTicketsDonePerUser_WorkDays}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:PDatePicker Name="prdFromDate" Width="138" Height="20" ControlID="5139475232617689808" Canvas.Left="728.82808023000007" Canvas.Top="13.16227315999998" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:PDatePicker Name="prdToDate" Width="138" Height="20" Canvas.Left="544.55873925000037" Canvas.Top="13.16227315999998" cm:ControlID="5440397701875399151" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable36" Content=":از تاریخ" ControlID="4817803763741733736" Canvas.Left="845.56802292" Canvas.Top="8.6789398266665181" />
            <cm:tzLabel Name="Lable37" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="659.73707737000041" Canvas.Top="8.6789398266666318" cm:ControlID="4626847951268530229" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5268451117329257876" Canvas.Left="8" Canvas.Top="159.95310410999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="5718710616553723986" Canvas.Left="8" Canvas.Top="111.22817573999993" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" ControlID="5304938971409178917" Canvas.Left="8" Canvas.Top="13.285482329999965" cm:Event="dsSearch" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/12/19 17:59:44', '550c2096-0a70-464e-b49d-57b044ea32fb', 0, N'', N'{"formID": "31271" ,"components": [{"key":"5718710616553723986" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5268451117329257876" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'گزارش کارشناسان میز خدمت منابع انسانی-فاز 2',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="554" Background="#FFB9D1EA" BorderBrush="#FFDEEFF7" ControlID="4980910234751559512" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox3" Width="906" Height="516.51666666666665" Background="#FFDEEFF7" ControlID="4676928735627378629" FontFamily="Tahoma" Canvas.Left="7.9999999999999893" Canvas.Top="8.0000000000000036" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="gdvSearch" Width="878" Height="441.747851" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4644367702739975548" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="-11.171919769999921" Canvas.Top="45.285482333333277" cm:BindingForm="dsSearch" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="109" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="HalShode" DecimalMark="False" HeaderText="تیکت های حل شده" IsRowColorField="False" KeyField="False" SortMemberPath="HalShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding HalShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RadShode" DecimalMark="False" HeaderText="تیکت های رد شده" IsRowColorField="False" KeyField="False" SortMemberPath="RadShode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RadShode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="76" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Peymankar" DecimalMark="False" HeaderText="تیکت های باز" IsRowColorField="False" KeyField="False" SortMemberPath="Peymankar">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Peymankar}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="97" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tekrari" DecimalMark="False" HeaderText="تیکت های تکراری" IsRowColorField="False" KeyField="False" SortMemberPath="Tekrari">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tekrari}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SumAll" DecimalMark="False" HeaderText="تعداد کل" IsRowColorField="False" KeyField="False" SortMemberPath="SumAll">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SumAll}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="AvgTimeTicketsDonePerUser_WorkDays" DecimalMark="False" HeaderText="میانگین زمان انجام کلیه ی تیکت ها کاربر در بازه ی انتخاب شده(ساعت کاری)" IsRowColorField="False" KeyField="False" SortMemberPath="AvgTimeTicketsDonePerUser_WorkDays">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding AvgTimeTicketsDonePerUser_WorkDays}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:PDatePicker Name="prdFromDate" Width="138" Height="20" ControlID="5139475232617689808" Canvas.Left="728.82808023000007" Canvas.Top="13.16227315999998" cm:DataBinding="dsGetLastMounth" cm:DataBindingField="Column1" />
            <cm:PDatePicker Name="prdToDate" Width="138" Height="20" Canvas.Left="544.55873925000037" Canvas.Top="13.16227315999998" cm:ControlID="5440397701875399151" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable36" Content=":از تاریخ" ControlID="4817803763741733736" Canvas.Left="845.56802292" Canvas.Top="8.6789398266665181" />
            <cm:tzLabel Name="Lable37" Content=":تا تاریخ" Width="NaN" Height="NaN" Canvas.Left="659.73707737000041" Canvas.Top="8.6789398266666318" cm:ControlID="4626847951268530229" />
            <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5268451117329257876" Canvas.Left="8" Canvas.Top="159.95310410999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsGetLastMounth" Content="dsGetLastMounth" Width="110" Height="25" ControlID="5718710616553723986" Canvas.Left="8" Canvas.Top="111.22817573999993" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT dbo.GetLastMonthsDate()" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" ControlID="5304938971409178917" Canvas.Left="8" Canvas.Top="13.285482329999965" cm:Event="dsSearch" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/12/19 17:59:44', GUID = '550c2096-0a70-464e-b49d-57b044ea32fb', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "31271" ,"components": [{"key":"5718710616553723986" , "dataSourceName":"dsGetLastMounth" , "controlType": "datasource",  "selectQuery" :"SELECT dbo.GetLastMonthsDate()" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5268451117329257876" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 31271
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31271') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31271] ( [frm31271Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5139475232617689808]  [nvarchar] ( 10) NULL , [Col_5440397701875399151]  [nvarchar] ( 10) NULL , [Col_5155199525285587675]  [nvarchar] ( 50) NULL , [Col_4620521116104905490]  [nvarchar] ( 10) NULL , [Col_5760455004982444893]  [nvarchar] ( 10) NULL , [Col_5564568821607488888]  [nvarchar] ( 50) NULL , [Col_5016544959308963579]  [nvarchar] ( 50) NULL , [Col_5743724819478826360]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm31271Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'frm31271Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD frm31271Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5139475232617689808' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5139475232617689808 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5440397701875399151' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5440397701875399151 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5155199525285587675' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5155199525285587675 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_4620521116104905490' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_4620521116104905490 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5760455004982444893' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5760455004982444893 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5564568821607488888' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5564568821607488888 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5016544959308963579' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5016544959308963579 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31271' AND COLUMN_NAME = 'Col_5743724819478826360' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31271] ADD Col_5743724819478826360 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31271]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31271
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31271] ( @PKFormId as bigint OUTPUT ,  @Col_5139475232617689808 AS nvarchar(10),  @Col_5440397701875399151 AS nvarchar(10),  @Col_5155199525285587675 AS nvarchar(50),  @Col_4620521116104905490 AS nvarchar(10),  @Col_5760455004982444893 AS nvarchar(10),  @Col_5564568821607488888 AS nvarchar(50),  @Col_5016544959308963579 AS nvarchar(50),  @Col_5743724819478826360 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31271](Col_5139475232617689808,Col_5440397701875399151,Col_5155199525285587675,Col_4620521116104905490,Col_5760455004982444893,Col_5564568821607488888,Col_5016544959308963579,Col_5743724819478826360) VALUES ( @Col_5139475232617689808,@Col_5440397701875399151,@Col_5155199525285587675,@Col_4620521116104905490,@Col_5760455004982444893,@Col_5564568821607488888,@Col_5016544959308963579,@Col_5743724819478826360 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31271]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31271
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31271] ( @PKFormId as bigint OUTPUT ,  @Col_5139475232617689808 AS nvarchar(10),  @Col_5440397701875399151 AS nvarchar(10),  @Col_5155199525285587675 AS nvarchar(50),  @Col_4620521116104905490 AS nvarchar(10),  @Col_5760455004982444893 AS nvarchar(10),  @Col_5564568821607488888 AS nvarchar(50),  @Col_5016544959308963579 AS nvarchar(50),  @Col_5743724819478826360 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31271] SET Col_5139475232617689808 =  @Col_5139475232617689808, Col_5440397701875399151 =  @Col_5440397701875399151, Col_5155199525285587675 =  @Col_5155199525285587675, Col_4620521116104905490 =  @Col_4620521116104905490, Col_5760455004982444893 =  @Col_5760455004982444893, Col_5564568821607488888 =  @Col_5564568821607488888, Col_5016544959308963579 =  @Col_5016544959308963579, Col_5743724819478826360 =  @Col_5743724819478826360 WHERE [frm31271Id] = @PKFormId 
 END 
GO
