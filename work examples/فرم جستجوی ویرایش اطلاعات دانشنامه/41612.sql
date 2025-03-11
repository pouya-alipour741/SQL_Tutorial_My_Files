GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41612) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41612, N'فرم جستجوی ویرایش اطلاعات دانشنامه',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="788" Height="766.51666667" Background="White">
  <Canvas Width="758" Height="722">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>4616715599885583143</ID>
        <Name>جستجو</Name>
        <Condition>({@cmbGrade.Value} ==-1) &amp;&amp; ({@cmbStatus.Value} ==-1) &amp;&amp; ("{@txtCertificateCode.Value}" =="''''") &amp;&amp; ("{@txtLastName.Value}" =="''''") &amp;&amp; ("{@txtName.Value}" =="''''") &amp;&amp; ("{@txtNationalCode.Value}" =="''''") &amp;&amp; ({@txtWFID.Value} ==0)</Condition>
        <Description />
        <IsWarning>false</IsWarning>
        <Message>لطفا برای جستجو یکی از فیلتر ها را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4999314165285973943</ComponentID>
            <ComponentName>cmbGrade</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5078566341613952596</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4665258174038857660</ComponentID>
            <ComponentName>cmbStatus</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4918487532304009477</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5763236700777440872</ComponentID>
            <ComponentName>txtCertificateCode</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5037242568000371958</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4754283085601742608</ComponentID>
            <ComponentName>txtLastName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5371627087246783966</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4681364387995571441</ComponentID>
            <ComponentName>txtName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4902824650651823820</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4832492872165873989</ComponentID>
            <ComponentName>txtNationalCode</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5157315193110570184</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5039897711591715467</ComponentID>
            <ComponentName>txtWFID</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4717041424217278525</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="735.15326633" Height="706" ControlID="5532948526500456173" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas Width="708" Height="679.51666667">
        <cm:Grid Width="692" Height="663.51666667" ControlID="4940351007721581836" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.253316092672842*" />
            <ColumnDefinition Width="0.249997001894802*" />
            <ColumnDefinition Width="0.245095099896864*" />
            <ColumnDefinition Width="0.251591805535492*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199823366651241*" />
            <RowDefinition Height="0.201084981307457*" />
            <RowDefinition Height="0.195972651274216*" />
            <RowDefinition Height="0.201084981307456*" />
            <RowDefinition Height="0.20203401945963*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable4" Content="نام" Width="120" Height="23" Margin="32.4268570555603,13.2191176483334,21.6746723750001,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5017489580953587584" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzTextBox Name="txtName" Width="120" Height="20.999999999999996" Margin="0,0,35.5668292399998,38.5238792632086" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4681364387995571441" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="نام خانوادگی" Width="120" Height="23" Margin="0,0,28.1711821694397,88.8866243532086" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4954322455096190859" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzTextBox Name="txtLastName" Width="120" Height="21" Margin="0,73.0622549,28.1711821694397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4754283085601742608" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable8" Content="کد ملی" Width="120" Height="23" Margin="0,20.69950981,22.0653730308095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5365712417241971677" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtNationalCode" Width="120" Height="20.999999999999996" Margin="0,73.0622549,22.0653730308096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4832492872165873989" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable11" Content="مقطع" Width="120" Height="23" Margin="0,22.760434466791,28.08643709,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5423789384203877843" Grid.Column="3" Grid.Row="1" />
          <cm:tzLabel Name="Lable13" Content="شماره فرآیند" Width="120.00000000000003" Height="23" Margin="0,22.760434466791,22.0653730308096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5535337210795953175" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLabel Name="Lable14" Content="وضعیت فرآیند" Width="119.99999999999999" Height="23" Margin="0,29.2485294099996,16.8419575196067,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4932587522129676527" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="0,71.9172972067915,22.0653730308095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5039897711591715467" Grid.Column="1" Grid.Row="1" cm:DataType="Int" />
          <cm:tzDataGrid Name="gdvEncyclopediaInfoSearch" Width="546" Height="198.99999999999994" Margin="0,13.4008417322682,50.52761356,51.0535151142044" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5534993052958983209" ItemsSource="{Binding ElementName=dsgdvEncyclopediaInfoSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" Grid.RowSpan="2" cm:BindingForm="dsgdvEncyclopediaInfoSearch">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FamilyName" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FamilyName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FamilyName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtCertificateCode" DecimalMark="False" HeaderText="کد صحت" IsRowColorField="False" KeyField="False" SortMemberPath="txtCertificateCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtCertificateCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="38" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Grade" DecimalMark="False" HeaderText="مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="Grade">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Grade}" TextWrapping="Wrap" />
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
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzLookUpComboBox Name="cmbGrade" Width="120" Height="22" Margin="0,70.9172972067914,35.5668292399998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4999314165285973943" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGrade" cm:tzDisplayItem="EducationGradeTitle" cm:tzValueItem="EducationGradeID" />
          <cm:tzLookUpComboBox Name="cmbStatus" Width="120" Height="22" Margin="0,72.0622549,16.8419575196067,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4665258174038857660" Grid.Column="0" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:tzDisplayItem="LogStatusTitle" cm:tzValueItem="LogStatusID" />
          <cm:tzDataSource Name="dsgdvEncyclopediaInfoSearch" Content="dsgdvEncyclopediaInfoSearch" Width="110" Height="25.000000000000007" Margin="0,45.6982344803182,128.24184362081,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144408584450307682" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchInformation_Frm41612">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtLastName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFamilyName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtNationalCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbWFIDStatus" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbGrade}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbGrade" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtWFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @CurrentUserId" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsGrade" Content="dsGrade" Width="110" Height="25" Margin="13.5739158705604,0,0,6.50593930773169" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4953768210964707728" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_EducationGrade_frm23" />
          <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" Margin="0,53.2485294099996,50.1473680648034,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4674579005921904206" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_WFIDStatus_Frm41612" />
          <cm:tzLabel Name="Lable23" Content="کد صحت" Width="120" Height="23" Margin="0,30.2408266267914,19.6221625494397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5499724327514938607" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzTextBox Name="txtCertificateCode" Width="120" Height="21" Margin="0,71.9172972067916,28.1711821694397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5763236700777440872" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable28" Content=" " Width="120" Height="23" Margin="38.4527786099999,30.2408266267913,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5439791048691218579" Grid.Column="0" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:TZButton Name="Button28" Content="جستجو" Width="75" Height="30" Margin="0,69.9172972067916,66.243918309607,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4987897853091614265" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" cm:Event="dsgdvEncyclopediaInfoSearch" cm:Validations="4616715599885583143" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/12/21 16:36:35', '5e1685b0-208f-4018-8006-91ff12f2c04c', 0, N'', N'{"formID": "41612" ,"components": [{"key": "4999314165285973943","label": "cmbGrade","value": "", "controlType": "dropdown","options":""},{"key": "4665258174038857660","label": "cmbStatus","value": "", "controlType": "dropdown","options":""},{"key":"5144408584450307682" , "dataSourceName":"dsgdvEncyclopediaInfoSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchInformation_Frm41612" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4953768210964707728" , "dataSourceName":"dsGrade" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_EducationGrade_frm23" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4674579005921904206" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_WFIDStatus_Frm41612" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5763236700777440872","label": "txtCertificateCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4754283085601742608","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4681364387995571441","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832492872165873989","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5039897711591715467","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجوی ویرایش اطلاعات دانشنامه',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="788" Height="766.51666667" Background="White">
  <Canvas Width="758" Height="722">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>4616715599885583143</ID>
        <Name>جستجو</Name>
        <Condition>({@cmbGrade.Value} ==-1) &amp;&amp; ({@cmbStatus.Value} ==-1) &amp;&amp; ("{@txtCertificateCode.Value}" =="''''") &amp;&amp; ("{@txtLastName.Value}" =="''''") &amp;&amp; ("{@txtName.Value}" =="''''") &amp;&amp; ("{@txtNationalCode.Value}" =="''''") &amp;&amp; ({@txtWFID.Value} ==0)</Condition>
        <Description />
        <IsWarning>false</IsWarning>
        <Message>لطفا برای جستجو یکی از فیلتر ها را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4999314165285973943</ComponentID>
            <ComponentName>cmbGrade</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5078566341613952596</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4665258174038857660</ComponentID>
            <ComponentName>cmbStatus</ComponentName>
            <ComponentDataType>int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4918487532304009477</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>-1</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5763236700777440872</ComponentID>
            <ComponentName>txtCertificateCode</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5037242568000371958</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4754283085601742608</ComponentID>
            <ComponentName>txtLastName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5371627087246783966</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4681364387995571441</ComponentID>
            <ComponentName>txtName</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4902824650651823820</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>4832492872165873989</ComponentID>
            <ComponentName>txtNationalCode</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5157315193110570184</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5039897711591715467</ComponentID>
            <ComponentName>txtWFID</ComponentName>
            <ComponentDataType>Int</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4717041424217278525</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>0</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="735.15326633" Height="706" ControlID="5532948526500456173" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas Width="708" Height="679.51666667">
        <cm:Grid Width="692" Height="663.51666667" ControlID="4940351007721581836" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.253316092672842*" />
            <ColumnDefinition Width="0.249997001894802*" />
            <ColumnDefinition Width="0.245095099896864*" />
            <ColumnDefinition Width="0.251591805535492*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.199823366651241*" />
            <RowDefinition Height="0.201084981307457*" />
            <RowDefinition Height="0.195972651274216*" />
            <RowDefinition Height="0.201084981307456*" />
            <RowDefinition Height="0.20203401945963*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable4" Content="نام" Width="120" Height="23" Margin="32.4268570555603,13.2191176483334,21.6746723750001,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5017489580953587584" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzTextBox Name="txtName" Width="120" Height="20.999999999999996" Margin="0,0,35.5668292399998,38.5238792632086" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4681364387995571441" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="نام خانوادگی" Width="120" Height="23" Margin="0,0,28.1711821694397,88.8866243532086" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4954322455096190859" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzTextBox Name="txtLastName" Width="120" Height="21" Margin="0,73.0622549,28.1711821694397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4754283085601742608" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable8" Content="کد ملی" Width="120" Height="23" Margin="0,20.69950981,22.0653730308095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5365712417241971677" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzTextBox Name="txtNationalCode" Width="120" Height="20.999999999999996" Margin="0,73.0622549,22.0653730308096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4832492872165873989" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable11" Content="مقطع" Width="120" Height="23" Margin="0,22.760434466791,28.08643709,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5423789384203877843" Grid.Column="3" Grid.Row="1" />
          <cm:tzLabel Name="Lable13" Content="شماره فرآیند" Width="120.00000000000003" Height="23" Margin="0,22.760434466791,22.0653730308096,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5535337210795953175" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLabel Name="Lable14" Content="وضعیت فرآیند" Width="119.99999999999999" Height="23" Margin="0,29.2485294099996,16.8419575196067,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4932587522129676527" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="21" Margin="0,71.9172972067915,22.0653730308095,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5039897711591715467" Grid.Column="1" Grid.Row="1" cm:DataType="Int" />
          <cm:tzDataGrid Name="gdvEncyclopediaInfoSearch" Width="546" Height="198.99999999999994" Margin="0,13.4008417322682,50.52761356,51.0535151142044" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5534993052958983209" ItemsSource="{Binding ElementName=dsgdvEncyclopediaInfoSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="2" Grid.RowSpan="2" cm:BindingForm="dsgdvEncyclopediaInfoSearch">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FamilyName" DecimalMark="False" HeaderText="نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FamilyName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FamilyName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="48" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="txtCertificateCode" DecimalMark="False" HeaderText="کد صحت" IsRowColorField="False" KeyField="False" SortMemberPath="txtCertificateCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding txtCertificateCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="38" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Grade" DecimalMark="False" HeaderText="مقطع" IsRowColorField="False" KeyField="False" SortMemberPath="Grade">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Grade}" TextWrapping="Wrap" />
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
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzLookUpComboBox Name="cmbGrade" Width="120" Height="22" Margin="0,70.9172972067914,35.5668292399998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4999314165285973943" Grid.Column="3" Grid.Row="1" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGrade" cm:tzDisplayItem="EducationGradeTitle" cm:tzValueItem="EducationGradeID" />
          <cm:tzLookUpComboBox Name="cmbStatus" Width="120" Height="22" Margin="0,72.0622549,16.8419575196067,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4665258174038857660" Grid.Column="0" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:tzDisplayItem="LogStatusTitle" cm:tzValueItem="LogStatusID" />
          <cm:tzDataSource Name="dsgdvEncyclopediaInfoSearch" Content="dsgdvEncyclopediaInfoSearch" Width="110" Height="25.000000000000007" Margin="0,45.6982344803182,128.24184362081,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144408584450307682" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchInformation_Frm41612">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtLastName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFamilyName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtNationalCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbWFIDStatus" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbGrade}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbGrade" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @txtWFID" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @CurrentUserId" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsGrade" Content="dsGrade" Width="110" Height="25" Margin="13.5739158705604,0,0,6.50593930773169" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4953768210964707728" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_EducationGrade_frm23" />
          <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="110" Height="25" Margin="0,53.2485294099996,50.1473680648034,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4674579005921904206" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_WFIDStatus_Frm41612" />
          <cm:tzLabel Name="Lable23" Content="کد صحت" Width="120" Height="23" Margin="0,30.2408266267914,19.6221625494397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5499724327514938607" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzTextBox Name="txtCertificateCode" Width="120" Height="21" Margin="0,71.9172972067916,28.1711821694397,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5763236700777440872" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable28" Content=" " Width="120" Height="23" Margin="38.4527786099999,30.2408266267913,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5439791048691218579" Grid.Column="0" Grid.Row="1" cm:IsVisibleItem="True" />
          <cm:TZButton Name="Button28" Content="جستجو" Width="75" Height="30" Margin="0,69.9172972067916,66.243918309607,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4987897853091614265" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" cm:Event="dsgdvEncyclopediaInfoSearch" cm:Validations="4616715599885583143" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/12/21 16:36:35', GUID = '5e1685b0-208f-4018-8006-91ff12f2c04c', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41612" ,"components": [{"key": "4999314165285973943","label": "cmbGrade","value": "", "controlType": "dropdown","options":""},{"key": "4665258174038857660","label": "cmbStatus","value": "", "controlType": "dropdown","options":""},{"key":"5144408584450307682" , "dataSourceName":"dsgdvEncyclopediaInfoSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchInformation_Frm41612" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4953768210964707728" , "dataSourceName":"dsGrade" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_EducationGrade_frm23" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4674579005921904206" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_WFIDStatus_Frm41612" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5763236700777440872","label": "txtCertificateCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4754283085601742608","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4681364387995571441","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4832492872165873989","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5039897711591715467","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41612
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41612') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41612] ( [frm41612Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4681364387995571441]  [nvarchar] ( 50) NULL , [Col_4754283085601742608]  [nvarchar] ( 50) NULL , [Col_4832492872165873989]  [nvarchar] ( 50) NULL , [Col_5039897711591715467]  [int] NULL , [Col_4999314165285973943]  [nvarchar] ( 50) NULL , [Col_4665258174038857660]  [nvarchar] ( 50) NULL , [Col_5763236700777440872]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm41612Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'frm41612Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD frm41612Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_4681364387995571441' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_4681364387995571441 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_4754283085601742608' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_4754283085601742608 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_4832492872165873989' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_4832492872165873989 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_5039897711591715467' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_5039897711591715467 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_4999314165285973943' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_4999314165285973943 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_4665258174038857660' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_4665258174038857660 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41612' AND COLUMN_NAME = 'Col_5763236700777440872' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41612] ADD Col_5763236700777440872 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41612]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41612
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41612] ( @PKFormId as bigint OUTPUT ,  @Col_4681364387995571441 AS nvarchar(50),  @Col_4754283085601742608 AS nvarchar(50),  @Col_4832492872165873989 AS nvarchar(50),  @Col_5039897711591715467 AS int,  @Col_4999314165285973943 AS nvarchar(50),  @Col_4665258174038857660 AS nvarchar(50),  @Col_5763236700777440872 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41612](Col_4681364387995571441,Col_4754283085601742608,Col_4832492872165873989,Col_5039897711591715467,Col_4999314165285973943,Col_4665258174038857660,Col_5763236700777440872) VALUES ( @Col_4681364387995571441,@Col_4754283085601742608,@Col_4832492872165873989,@Col_5039897711591715467,@Col_4999314165285973943,@Col_4665258174038857660,@Col_5763236700777440872 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41612]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41612
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41612] ( @PKFormId as bigint OUTPUT ,  @Col_4681364387995571441 AS nvarchar(50),  @Col_4754283085601742608 AS nvarchar(50),  @Col_4832492872165873989 AS nvarchar(50),  @Col_5039897711591715467 AS int,  @Col_4999314165285973943 AS nvarchar(50),  @Col_4665258174038857660 AS nvarchar(50),  @Col_5763236700777440872 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41612] SET Col_4681364387995571441 =  @Col_4681364387995571441, Col_4754283085601742608 =  @Col_4754283085601742608, Col_4832492872165873989 =  @Col_4832492872165873989, Col_5039897711591715467 =  @Col_5039897711591715467, Col_4999314165285973943 =  @Col_4999314165285973943, Col_4665258174038857660 =  @Col_4665258174038857660, Col_5763236700777440872 =  @Col_5763236700777440872 WHERE [frm41612Id] = @PKFormId 
 END 
GO
