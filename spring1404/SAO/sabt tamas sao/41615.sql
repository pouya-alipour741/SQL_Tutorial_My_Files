GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41615) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41615, N'فرم جستجوی پیشرفته ثبت تماس',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="548" ControlID="5093303724272746547" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:Grid Width="906" Height="510.51666666666665" ControlID="4988043812969342820" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.165663615799473*" />
            <ColumnDefinition Width="0.162230581590774*" />
            <ColumnDefinition Width="0.167973257045314*" />
            <ColumnDefinition Width="0.167973257045315*" />
            <ColumnDefinition Width="0.169408925908949*" />
            <ColumnDefinition Width="0.166750362610175*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.197875138426925*" />
            <RowDefinition Height="0.203827389056074*" />
            <RowDefinition Height="0.198731704329673*" />
            <RowDefinition Height="0.198731704329672*" />
            <RowDefinition Height="0.200834063857656*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable4" Content="از تاریخ" Width="90" Height="23" Margin="0,0,8,70.018556085919" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5687558984518195657" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:PDatePicker Name="pdFromDate" Width="99" Height="20" Margin="0,45.08776849,44.27153258,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5116411242253816738" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLastMonth" cm:DataBindingField="LastMonthDate" />
          <cm:tzLabel Name="Lable7" Content="تا تاریخ" Width="120.00000000000001" Height="23" Margin="26.0143198083262,7.99999999999994,7.47016706518173,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5283820740049714489" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:PDatePicker Name="pdToDate" Width="120.00000000000001" Height="19.999999999999993" Margin="0,37.8705847200001,20.7094155151818,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5443343702835844093" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsCurrentDate" cm:DataBindingField="CurrentDate" />
          <cm:tzLabel Name="Lable10" Content="کد ملی" Width="119.99999999999999" Height="23" Margin="0,7.99999999999994,4.86873508167389,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5747660511231964279" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzTextBox Name="txtNationalCode" Width="114" Height="21" Margin="13.0071599013817,44.08776849,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5607544488836821075" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable13" Content="کارشناس" Width="120" Height="22.999999999999993" Margin="15.6085918844358,7.99999999999995,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5709278388937028222" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbExpert" Width="120" Height="22" Margin="6.50357995443619,43.0877684899999,25.6801909286183,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4867001722284742260" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzLabel Name="Lable20" Content="موضوع" Width="120" Height="23" Margin="15.6085918856773,13.8705847200001,11.372315035564,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5593115665284081169" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbSubject" Width="120" Height="22.000000000000014" Margin="10.3629813956773,43.0877684899998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4979197541549285935" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubjects" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
          <cm:tzDataGrid Name="gvAdvancedSearch" Width="787.95134588" Height="208.03579952" Margin="0,32.9642004778044,44.2715325799998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4906138666648206752" ItemsSource="{Binding ElementName=dsgvAdvancedSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="2" Grid.RowSpan="3" cm:BindingForm="dsgvAdvancedSearch">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="30" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="57" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="زمان ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="54" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Nationalcode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="Nationalcode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Nationalcode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowUpCode" DecimalMark="False" HeaderText="شماره پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowUpCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowUpCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="63" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FirstName" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="FirstName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FirstName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LastName" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="LastName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LastName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ContactNo" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="ContactNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ContactNo}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Topics" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="Topics">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Topics}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PremadeResponse" DecimalMark="False" HeaderText="موضوع پاسخ آماده" IsRowColorField="False" KeyField="False" SortMemberPath="PremadeResponse">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PremadeResponse}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="108" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubjectDescription" DecimalMark="False" HeaderText="شرح" IsRowColorField="False" KeyField="False" SortMemberPath="SubjectDescription">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubjectDescription}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultDescription" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="ResultDescription">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultDescription}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PortalUserID" DecimalMark="False" HeaderText="نام کاربر ثبت تماس" IsRowColorField="False" KeyField="False" SortMemberPath="PortalUserID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PortalUserID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="RelatedWFID" DataTextField="RelatedWFID" DecimalMark="False" HeaderText="شماره فرآیند مشابه" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="RelatedWFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding RelatedWFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding RelatedWFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="101" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="VerificationResult" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="VerificationResult">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding VerificationResult}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsgvAdvancedSearch" Content="dsgvAdvancedSearch" Width="110" Height="25.000000000000004" Margin="10.3629813956772,0,0,6.21718376293541" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5499827631097429699" Grid.Column="1" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_CallCentreAdvancedSearch">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExpert}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Expert" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Topic" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="109.99999999999997" Height="25" Margin="6.50357995443619,66.0877684899997,35.6801909286183,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5526633868654531095" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_GetExpert_SearchQuestionAnswer" />
          <cm:tzDataSource Name="dsSubjects" Content="dsSubjects" Width="110" Height="25" Margin="0,66.0877684899998,8.61792552556392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5753486069257101141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm21041 (@UserID) " />
          <cm:tzLabel Name="Lable18" Content=" " Width="120" Height="23.000000000000007" Margin="19.5519874099999,13.8705847200001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5682470767148708797" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" Margin="37.545617957161,0,0,11.9307875959191" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="4853964573206482881" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:Event="dsgvAdvancedSearch" />
          <cm:tzDataSource Name="dsLastMonth" Content="dsLastMonth" Width="69" Height="25" Margin="0,72.59134845,63.95098039,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4989023105299686917" Grid.Column="5" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_GetLastMonthDate" />
          <cm:tzDataSource Name="dsCurrentDate" Content="dsCurrentDate" Width="68" Height="25" Margin="0,72.59134845,63.7780429651815,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4941089199441495811" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select dbo.MiladiToShamsi(getdate()) CurrentDate" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/05/18 11:53:55', 'be41513c-4365-4f81-96e4-3cff70b9e415', 0, N'', N'{"formID": "41615" ,"components": [{"key": "4867001722284742260","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "4979197541549285935","label": "cmbSubject","value": "", "controlType": "dropdown","options":""},{"key":"4941089199441495811" , "dataSourceName":"dsCurrentDate" , "controlType": "datasource",  "selectQuery" :"select dbo.MiladiToShamsi(getdate()) CurrentDate" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5526633868654531095" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpert_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5499827631097429699" , "dataSourceName":"dsgvAdvancedSearch" , "controlType": "datasource",  "selectQuery" :"sp_cu_CallCentreAdvancedSearch" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4989023105299686917" , "dataSourceName":"dsLastMonth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLastMonthDate" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5753486069257101141" , "dataSourceName":"dsSubjects" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm21041 (@UserID) " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5607544488836821075","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجوی پیشرفته ثبت تماس',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="548" ControlID="5093303724272746547" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:Grid Width="906" Height="510.51666666666665" ControlID="4988043812969342820" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.165663615799473*" />
            <ColumnDefinition Width="0.162230581590774*" />
            <ColumnDefinition Width="0.167973257045314*" />
            <ColumnDefinition Width="0.167973257045315*" />
            <ColumnDefinition Width="0.169408925908949*" />
            <ColumnDefinition Width="0.166750362610175*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.197875138426925*" />
            <RowDefinition Height="0.203827389056074*" />
            <RowDefinition Height="0.198731704329673*" />
            <RowDefinition Height="0.198731704329672*" />
            <RowDefinition Height="0.200834063857656*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable4" Content="از تاریخ" Width="90" Height="23" Margin="0,0,8,70.018556085919" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5687558984518195657" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
          <cm:PDatePicker Name="pdFromDate" Width="99" Height="20" Margin="0,45.08776849,44.27153258,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5116411242253816738" Grid.Column="5" Grid.Row="0" cm:DataBinding="dsLastMonth" cm:DataBindingField="LastMonthDate" />
          <cm:tzLabel Name="Lable7" Content="تا تاریخ" Width="120.00000000000001" Height="23" Margin="26.0143198083262,7.99999999999994,7.47016706518173,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5283820740049714489" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
          <cm:PDatePicker Name="pdToDate" Width="120.00000000000001" Height="19.999999999999993" Margin="0,37.8705847200001,20.7094155151818,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5443343702835844093" Grid.Column="4" Grid.Row="0" cm:DataBinding="dsCurrentDate" cm:DataBindingField="CurrentDate" />
          <cm:tzLabel Name="Lable10" Content="کد ملی" Width="119.99999999999999" Height="23" Margin="0,7.99999999999994,4.86873508167389,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5747660511231964279" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzTextBox Name="txtNationalCode" Width="114" Height="21" Margin="13.0071599013817,44.08776849,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5607544488836821075" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable13" Content="کارشناس" Width="120" Height="22.999999999999993" Margin="15.6085918844358,7.99999999999995,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5709278388937028222" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbExpert" Width="120" Height="22" Margin="6.50357995443619,43.0877684899999,25.6801909286183,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4867001722284742260" Grid.Column="2" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          <cm:tzLabel Name="Lable20" Content="موضوع" Width="120" Height="23" Margin="15.6085918856773,13.8705847200001,11.372315035564,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5593115665284081169" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLookUpComboBox Name="cmbSubject" Width="120" Height="22.000000000000014" Margin="10.3629813956773,43.0877684899998,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4979197541549285935" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubjects" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
          <cm:tzDataGrid Name="gvAdvancedSearch" Width="787.95134588" Height="208.03579952" Margin="0,32.9642004778044,44.2715325799998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4906138666648206752" ItemsSource="{Binding ElementName=dsgvAdvancedSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="2" Grid.RowSpan="3" cm:BindingForm="dsgvAdvancedSearch">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="30" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="57" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="زمان ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="54" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Nationalcode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="Nationalcode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Nationalcode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FollowUpCode" DecimalMark="False" HeaderText="شماره پیگیری" IsRowColorField="False" KeyField="False" SortMemberPath="FollowUpCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FollowUpCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="63" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FirstName" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="FirstName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FirstName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LastName" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="LastName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LastName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ContactNo" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="ContactNo">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ContactNo}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Topics" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="Topics">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Topics}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="107" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PremadeResponse" DecimalMark="False" HeaderText="موضوع پاسخ آماده" IsRowColorField="False" KeyField="False" SortMemberPath="PremadeResponse">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PremadeResponse}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="108" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubjectDescription" DecimalMark="False" HeaderText="شرح" IsRowColorField="False" KeyField="False" SortMemberPath="SubjectDescription">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubjectDescription}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="102" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultDescription" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="ResultDescription">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultDescription}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="وضعیت فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PortalUserID" DecimalMark="False" HeaderText="نام کاربر ثبت تماس" IsRowColorField="False" KeyField="False" SortMemberPath="PortalUserID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PortalUserID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="79" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="RelatedWFID" DataTextField="RelatedWFID" DecimalMark="False" HeaderText="شماره فرآیند مشابه" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="RelatedWFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding RelatedWFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding RelatedWFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="101" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="VerificationResult" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="VerificationResult">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding VerificationResult}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsgvAdvancedSearch" Content="dsgvAdvancedSearch" Width="110" Height="25.000000000000004" Margin="10.3629813956772,0,0,6.21718376293541" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5499827631097429699" Grid.Column="1" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_CallCentreAdvancedSearch">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExpert}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Expert" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Topic" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="109.99999999999997" Height="25" Margin="6.50357995443619,66.0877684899997,35.6801909286183,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5526633868654531095" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_GetExpert_SearchQuestionAnswer" />
          <cm:tzDataSource Name="dsSubjects" Content="dsSubjects" Width="110" Height="25" Margin="0,66.0877684899998,8.61792552556392,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5753486069257101141" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm21041 (@UserID) " />
          <cm:tzLabel Name="Lable18" Content=" " Width="120" Height="23.000000000000007" Margin="19.5519874099999,13.8705847200001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5682470767148708797" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:IsVisibleItem="False" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="75" Height="23" Margin="37.545617957161,0,0,11.9307875959191" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="4853964573206482881" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" cm:Event="dsgvAdvancedSearch" />
          <cm:tzDataSource Name="dsLastMonth" Content="dsLastMonth" Width="69" Height="25" Margin="0,72.59134845,63.95098039,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4989023105299686917" Grid.Column="5" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_GetLastMonthDate" />
          <cm:tzDataSource Name="dsCurrentDate" Content="dsCurrentDate" Width="68" Height="25" Margin="0,72.59134845,63.7780429651815,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4941089199441495811" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select dbo.MiladiToShamsi(getdate()) CurrentDate" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/05/18 11:53:55', GUID = 'be41513c-4365-4f81-96e4-3cff70b9e415', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41615" ,"components": [{"key": "4867001722284742260","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "4979197541549285935","label": "cmbSubject","value": "", "controlType": "dropdown","options":""},{"key":"4941089199441495811" , "dataSourceName":"dsCurrentDate" , "controlType": "datasource",  "selectQuery" :"select dbo.MiladiToShamsi(getdate()) CurrentDate" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5526633868654531095" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpert_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5499827631097429699" , "dataSourceName":"dsgvAdvancedSearch" , "controlType": "datasource",  "selectQuery" :"sp_cu_CallCentreAdvancedSearch" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4989023105299686917" , "dataSourceName":"dsLastMonth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLastMonthDate" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5753486069257101141" , "dataSourceName":"dsSubjects" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm21041 (@UserID) " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5607544488836821075","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41615
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41615') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41615] ( [frm41615Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5607544488836821075]  [nvarchar] ( 50) NULL , [Col_4867001722284742260]  [nvarchar] ( 50) NULL , [Col_4979197541549285935]  [nvarchar] ( 50) NULL , [Col_5116411242253816738]  [nvarchar] ( 10) NULL , [Col_5443343702835844093]  [nvarchar] ( 10) NULL ,  PRIMARY KEY CLUSTERED ( [frm41615Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'frm41615Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD frm41615Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'Col_5607544488836821075' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD Col_5607544488836821075 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'Col_4867001722284742260' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD Col_4867001722284742260 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'Col_4979197541549285935' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD Col_4979197541549285935 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'Col_5116411242253816738' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD Col_5116411242253816738 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41615' AND COLUMN_NAME = 'Col_5443343702835844093' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41615] ADD Col_5443343702835844093 nvarchar (10) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41615]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41615
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41615] ( @PKFormId as bigint OUTPUT ,  @Col_5607544488836821075 AS nvarchar(50),  @Col_4867001722284742260 AS nvarchar(50),  @Col_4979197541549285935 AS nvarchar(50),  @Col_5116411242253816738 AS nvarchar(10),  @Col_5443343702835844093 AS nvarchar(10) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41615](Col_5607544488836821075,Col_4867001722284742260,Col_4979197541549285935,Col_5116411242253816738,Col_5443343702835844093) VALUES ( @Col_5607544488836821075,@Col_4867001722284742260,@Col_4979197541549285935,@Col_5116411242253816738,@Col_5443343702835844093 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41615]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41615
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41615] ( @PKFormId as bigint OUTPUT ,  @Col_5607544488836821075 AS nvarchar(50),  @Col_4867001722284742260 AS nvarchar(50),  @Col_4979197541549285935 AS nvarchar(50),  @Col_5116411242253816738 AS nvarchar(10),  @Col_5443343702835844093 AS nvarchar(10) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41615] SET Col_5607544488836821075 =  @Col_5607544488836821075, Col_4867001722284742260 =  @Col_4867001722284742260, Col_4979197541549285935 =  @Col_4979197541549285935, Col_5116411242253816738 =  @Col_5116411242253816738, Col_5443343702835844093 =  @Col_5443343702835844093 WHERE [frm41615Id] = @PKFormId 
 END 
GO
