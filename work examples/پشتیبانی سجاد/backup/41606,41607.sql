GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41606) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41606, N'پاسخ های آماده درخواست پشتیبانی',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:Grid Width="924" Height="554" ControlID="5318419757201397511" Canvas.Left="18" Canvas.Top="8">
      <Grid.RowDefinitions>
        <RowDefinition Height="0.221002810037302*" />
        <RowDefinition Height="0.778997189962698*" />
      </Grid.RowDefinitions>
      <cm:tzLabel Name="Lable3" Content="موضوع اصلی" Width="75.046666666666681" Height="24.483333333333348" Margin="0,39.6593817666665,18.7596446966818,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5076447265214466956" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="110" Height="25.000000000000007" Margin="32.5949901633338,92.3422812700001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5207340050635669024" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm41606 (@UserID)" />
      <cm:tzTextBox Name="txtUserID" Width="139" Height="21" Margin="0,0,495.24263218,83.7761749939988" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4933789186363820479" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:Event="dsMainSubject" cm:IsVisibleItem="False" />
      <cm:tzDataGrid Name="gvPremadeResponses" Width="549" Height="187" Margin="0,101.683477309335,35,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5748817850940583254" ItemsSource="{Binding ElementName=dsgvPremadeResponses, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:BindingForm="dsgvPremadeResponses" cm:EventForAdd="dsgvPremadeResponses" cm:EventForEdit="dsgvPremadeResponses" cm:Form="41607" cm:FormName="فرم پایه تعریف پاسخ های آماده درخواست پشتیبانی" cm:KeyField="PremadeResponses_ID" cm:ParamValues="4936476346195877437¢MainSubject" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
        <cm:tzDataGrid.Resources>
          <cm:MainCommands x:Key="MainCommands" />
          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
        </cm:tzDataGrid.Resources>
        <cm:tzDataGrid.Columns>
          <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PremadeResponses_ID" DecimalMark="False" HeaderText="PremadeResponses_ID" IsRowColorField="False" KeyField="True" SortMemberPath="PremadeResponses_ID">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PremadeResponses_ID}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="فعالیت اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="94" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestType" DecimalMark="False" HeaderText="عنوان درخواست " IsRowColorField="False" KeyField="False" SortMemberPath="RequestType">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestType}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="37" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Response" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Response">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Response}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="status">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding status}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
        </cm:tzDataGrid.Columns>
      </cm:tzDataGrid>
      <cm:tzDataSource Name="dsgvPremadeResponses" Content="dsgvPremadeResponses" Width="110" Height="25" Margin="0,0,461.40764212,213.17984842" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5325081676817357846" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec sp_cu_gvPremadeResponses_frm41606 {@cmbMainSubject},(@UserID)" />
      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="119.99999999999999" Height="21.999999999999993" Margin="0,42.1427150999999,124.979429813348,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4936476346195877437" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:Event="dsgvPremadeResponses,dschkFilledMainSubject" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
      <cm:tzDataSource Name="dschkFilledMainSubject" Content="dschkFilledMainSubject" Width="56" Height="25" Margin="564,33.75833333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4733857338082025567" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if ({@cmbMainSubject} = '''' or {@cmbMainSubject} = -1) select cast(1 as bit) res else select cast(0 as bit) res" />
      <cm:TZCheckBox Name="chkFilledMainSubject" Content="TZCheckBox" Width="45.999999999999993" Height="20" Margin="0,71.3422812700001,52.6208678193593,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4756151329983957276" Grid.Column="0" Grid.Row="0" cm:DataBinding="dschkFilledMainSubject" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5748817850940583254#" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
      <Grid.ColumnDefinitions>
        <ColumnDefinition Width="0.717122151319653*" />
        <ColumnDefinition Width="0.282877848680347*" />
      </Grid.ColumnDefinitions>
    </cm:Grid>
  </Canvas>
</cm:TZBaseControl>',1,'1403/10/29 15:43:53', 'c5ec7a30-126c-4e69-8819-8053032a018c', 0, N'', N'{"formID": "41606" ,"components": [{"value": "","key": "4756151329983957276","label": "chkFilledMainSubject","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"key": "4936476346195877437","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key":"4733857338082025567" , "dataSourceName":"dschkFilledMainSubject" , "controlType": "datasource",  "selectQuery" :"if ({@cmbMainSubject} = '''' or {@cmbMainSubject} = -1) select cast(1 as bit) res else select cast(0 as bit) res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5325081676817357846" , "dataSourceName":"dsgvPremadeResponses" , "controlType": "datasource",  "selectQuery" :"exec sp_cu_gvPremadeResponses_frm41606 {@cmbMainSubject},(@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5207340050635669024" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm41606 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4933789186363820479","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'پاسخ های آماده درخواست پشتیبانی',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <cm:Grid Width="924" Height="554" ControlID="5318419757201397511" Canvas.Left="18" Canvas.Top="8">
      <Grid.RowDefinitions>
        <RowDefinition Height="0.221002810037302*" />
        <RowDefinition Height="0.778997189962698*" />
      </Grid.RowDefinitions>
      <cm:tzLabel Name="Lable3" Content="موضوع اصلی" Width="75.046666666666681" Height="24.483333333333348" Margin="0,39.6593817666665,18.7596446966818,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5076447265214466956" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="110" Height="25.000000000000007" Margin="32.5949901633338,92.3422812700001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5207340050635669024" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetMainSubject_frm41606 (@UserID)" />
      <cm:tzTextBox Name="txtUserID" Width="139" Height="21" Margin="0,0,495.24263218,83.7761749939988" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4933789186363820479" Grid.Column="0" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:Event="dsMainSubject" cm:IsVisibleItem="False" />
      <cm:tzDataGrid Name="gvPremadeResponses" Width="549" Height="187" Margin="0,101.683477309335,35,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5748817850940583254" ItemsSource="{Binding ElementName=dsgvPremadeResponses, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:BindingForm="dsgvPremadeResponses" cm:EventForAdd="dsgvPremadeResponses" cm:EventForEdit="dsgvPremadeResponses" cm:Form="41607" cm:FormName="فرم پایه تعریف پاسخ های آماده درخواست پشتیبانی" cm:KeyField="PremadeResponses_ID" cm:ParamValues="4936476346195877437¢MainSubject" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="-1">
        <cm:tzDataGrid.Resources>
          <cm:MainCommands x:Key="MainCommands" />
          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
        </cm:tzDataGrid.Resources>
        <cm:tzDataGrid.Columns>
          <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="PremadeResponses_ID" DecimalMark="False" HeaderText="PremadeResponses_ID" IsRowColorField="False" KeyField="True" SortMemberPath="PremadeResponses_ID">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding PremadeResponses_ID}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="فعالیت اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="94" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RequestType" DecimalMark="False" HeaderText="عنوان درخواست " IsRowColorField="False" KeyField="False" SortMemberPath="RequestType">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RequestType}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="37" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Response" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Response">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Response}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
          <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="status">
            <cm:tzDataGridTemplateColumn.CellTemplate>
              <cm:TzDataTemplate>
                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding status}" TextWrapping="Wrap" />
              </cm:TzDataTemplate>
            </cm:tzDataGridTemplateColumn.CellTemplate>
          </cm:tzDataGridTemplateColumn>
        </cm:tzDataGrid.Columns>
      </cm:tzDataGrid>
      <cm:tzDataSource Name="dsgvPremadeResponses" Content="dsgvPremadeResponses" Width="110" Height="25" Margin="0,0,461.40764212,213.17984842" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5325081676817357846" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="exec sp_cu_gvPremadeResponses_frm41606 {@cmbMainSubject},(@UserID)" />
      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="119.99999999999999" Height="21.999999999999993" Margin="0,42.1427150999999,124.979429813348,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4936476346195877437" Grid.Column="1" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:Event="dsgvPremadeResponses,dschkFilledMainSubject" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
      <cm:tzDataSource Name="dschkFilledMainSubject" Content="dschkFilledMainSubject" Width="56" Height="25" Margin="564,33.75833333,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4733857338082025567" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if ({@cmbMainSubject} = '''' or {@cmbMainSubject} = -1) select cast(1 as bit) res else select cast(0 as bit) res" />
      <cm:TZCheckBox Name="chkFilledMainSubject" Content="TZCheckBox" Width="45.999999999999993" Height="20" Margin="0,71.3422812700001,52.6208678193593,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4756151329983957276" Grid.Column="0" Grid.Row="0" cm:DataBinding="dschkFilledMainSubject" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5748817850940583254#" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
      <Grid.ColumnDefinitions>
        <ColumnDefinition Width="0.717122151319653*" />
        <ColumnDefinition Width="0.282877848680347*" />
      </Grid.ColumnDefinitions>
    </cm:Grid>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/10/29 15:43:53', GUID = 'c5ec7a30-126c-4e69-8819-8053032a018c', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41606" ,"components": [{"value": "","key": "4756151329983957276","label": "chkFilledMainSubject","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"key": "4936476346195877437","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key":"4733857338082025567" , "dataSourceName":"dschkFilledMainSubject" , "controlType": "datasource",  "selectQuery" :"if ({@cmbMainSubject} = '''' or {@cmbMainSubject} = -1) select cast(1 as bit) res else select cast(0 as bit) res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5325081676817357846" , "dataSourceName":"dsgvPremadeResponses" , "controlType": "datasource",  "selectQuery" :"exec sp_cu_gvPremadeResponses_frm41606 {@cmbMainSubject},(@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5207340050635669024" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetMainSubject_frm41606 (@UserID)" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4933789186363820479","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41606
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41606') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41606] ( [frm41606Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4933789186363820479]  [nvarchar] ( 50) NULL , [Col_4936476346195877437]  [nvarchar] ( 50) NULL , [Col_4756151329983957276]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm41606Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41606' AND COLUMN_NAME = 'frm41606Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41606] ADD frm41606Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41606' AND COLUMN_NAME = 'Col_4933789186363820479' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41606] ADD Col_4933789186363820479 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41606' AND COLUMN_NAME = 'Col_4936476346195877437' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41606] ADD Col_4936476346195877437 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41606' AND COLUMN_NAME = 'Col_4756151329983957276' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41606] ADD Col_4756151329983957276 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41606]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41606
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41606] ( @PKFormId as bigint OUTPUT ,  @Col_4933789186363820479 AS nvarchar(50),  @Col_4936476346195877437 AS nvarchar(50),  @Col_4756151329983957276 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41606](Col_4933789186363820479,Col_4936476346195877437,Col_4756151329983957276) VALUES ( @Col_4933789186363820479,@Col_4936476346195877437,@Col_4756151329983957276 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41606]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41606
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41606] ( @PKFormId as bigint OUTPUT ,  @Col_4933789186363820479 AS nvarchar(50),  @Col_4936476346195877437 AS nvarchar(50),  @Col_4756151329983957276 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41606] SET Col_4933789186363820479 =  @Col_4933789186363820479, Col_4936476346195877437 =  @Col_4936476346195877437, Col_4756151329983957276 =  @Col_4756151329983957276 WHERE [frm41606Id] = @PKFormId 
 END 
GO
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41607) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41607, N'فرم پایه تعریف پاسخ های آماده درخواست پشتیبانی',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5335754513536237669</ID>
        <Name>MainSubject</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="719" Height="336" Background="#FF12ABD1" BorderBrush="#FF070707" ControlID="4728099207496675246" Canvas.Left="115.2835443" Canvas.Top="122.75833333" cm:Header="">
      <Canvas>
        <cm:Grid Width="691" Height="308" ControlID="5260485815322963706" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.385136468504627*" />
            <ColumnDefinition Width="0.373371924746744*" />
            <ColumnDefinition Width="0.241491606748629*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.228950216461039*" />
            <RowDefinition Height="0.331168831168831*" />
            <RowDefinition Height="0.327922077922078*" />
            <RowDefinition Height="0.111958874448052*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable3" Content="موضوع اصلی" Width="75" Height="24.48333333" Margin="83.8707002633026,7.99999999999999,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5114025106004432066" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable5" Content="عنوان درخواست" Width="89" Height="24.48333333" Margin="47.8707002633029,14,29.9999999999998,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5495263361587021193" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable7" Content="پاسخ" Width="44" Height="24.48333333" Margin="100.870700263303,20.5166666666669,21.9999999999994,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5031072397526824377" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzTextBox Name="txtMainSubject" Width="120" Height="21" Margin="24.8707002633031,0,21.9999999999995,15.03333334" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4781473934816942684" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsRecoveredMainSubject" cm:DataBindingField="Name" cm:DefaultValue="@@MainSubject" cm:Event="dsRecoveredMainSubject" cm:IsEnableItem="False" cm:Persistable="True" cm:PersistFieldName="MainSubject" />
          <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="42.00498035430909" Height="15.098340034484863" Margin="94.8657199089936,11.3849932955152,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4796154223235079582" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" cm:DefaultValue="True" cm:Persistable="True" cm:PersistFieldName="Status" />
          <cm:tzDataSource Name="dsRecoveredMainSubject" Content="dsRecoveredMainSubject" Width="58.000000000000007" Height="25" Margin="0,0,104.74177215,37.03333334" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5433583936544774254" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" />
          <cm:tzTextBox Name="txtUserID" Width="120" Height="21" Margin="0,12.48333333,52.8710718866971,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4820877390337943060" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="UserID" />
          <cm:tzTextBox Name="txtMainSubjectID" Width="120" Height="21" Margin="0,24.48333333,29.4128440366973,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5077630523876558823" Grid.Column="1" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="@@MainSubject" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="MainSubjectID" />
          <cm:tzTextBox Name="txtRequestType" Width="481" Height="21" Margin="0,0,30,25.9999999999999" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5377042739550064811" Grid.Column="0" Grid.ColumnSpan="3" Grid.Row="1" cm:Len="100" cm:Persistable="True" cm:PersistFieldName="RequestType" />
          <cm:tzTextBox Name="txtResponse" Width="481" Height="42" Margin="0,0,30,12.9999999999999" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4931345524520181736" Grid.Column="0" Grid.ColumnSpan="3" Grid.Row="2" cm:IsMulitiLine="True" cm:Len="1000" cm:Persistable="True" cm:PersistFieldName="Response" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'1403/10/29 15:43:55', '6c877d96-c38c-4739-9c2a-0d502fc2ed2b', 1, N'', N'{"formID": "41607" ,"components": [{"value": "True","key": "4796154223235079582","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5433583936544774254" , "dataSourceName":"dsRecoveredMainSubject" , "controlType": "datasource",  "selectQuery" :"select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "@@MainSubject","key": "4781473934816942684","label": "txtMainSubject","controlType": "textbox", "type": "" , "DataBindingField" : "Name"},{"value": "@@MainSubject","key": "5077630523876558823","label": "txtMainSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5377042739550064811","label": "txtRequestType","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931345524520181736","label": "txtResponse","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4820877390337943060","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم پایه تعریف پاسخ های آماده درخواست پشتیبانی',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="570">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5335754513536237669</ID>
        <Name>MainSubject</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="719" Height="336" Background="#FF12ABD1" BorderBrush="#FF070707" ControlID="4728099207496675246" Canvas.Left="115.2835443" Canvas.Top="122.75833333" cm:Header="">
      <Canvas>
        <cm:Grid Width="691" Height="308" ControlID="5260485815322963706" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.385136468504627*" />
            <ColumnDefinition Width="0.373371924746744*" />
            <ColumnDefinition Width="0.241491606748629*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.228950216461039*" />
            <RowDefinition Height="0.331168831168831*" />
            <RowDefinition Height="0.327922077922078*" />
            <RowDefinition Height="0.111958874448052*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable3" Content="موضوع اصلی" Width="75" Height="24.48333333" Margin="83.8707002633026,7.99999999999999,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5114025106004432066" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable5" Content="عنوان درخواست" Width="89" Height="24.48333333" Margin="47.8707002633029,14,29.9999999999998,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5495263361587021193" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable7" Content="پاسخ" Width="44" Height="24.48333333" Margin="100.870700263303,20.5166666666669,21.9999999999994,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5031072397526824377" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzTextBox Name="txtMainSubject" Width="120" Height="21" Margin="24.8707002633031,0,21.9999999999995,15.03333334" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4781473934816942684" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsRecoveredMainSubject" cm:DataBindingField="Name" cm:DefaultValue="@@MainSubject" cm:Event="dsRecoveredMainSubject" cm:IsEnableItem="False" cm:Persistable="True" cm:PersistFieldName="MainSubject" />
          <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="42.00498035430909" Height="15.098340034484863" Margin="94.8657199089936,11.3849932955152,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4796154223235079582" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" cm:DefaultValue="True" cm:Persistable="True" cm:PersistFieldName="Status" />
          <cm:tzDataSource Name="dsRecoveredMainSubject" Content="dsRecoveredMainSubject" Width="58.000000000000007" Height="25" Margin="0,0,104.74177215,37.03333334" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5433583936544774254" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" />
          <cm:tzTextBox Name="txtUserID" Width="120" Height="21" Margin="0,12.48333333,52.8710718866971,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4820877390337943060" Grid.Column="0" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="UserID" />
          <cm:tzTextBox Name="txtMainSubjectID" Width="120" Height="21" Margin="0,24.48333333,29.4128440366973,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5077630523876558823" Grid.Column="1" Grid.Row="0" cm:DataType="Int" cm:DefaultValue="@@MainSubject" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="MainSubjectID" />
          <cm:tzTextBox Name="txtRequestType" Width="481" Height="21" Margin="0,0,30,25.9999999999999" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5377042739550064811" Grid.Column="0" Grid.ColumnSpan="3" Grid.Row="1" cm:Len="100" cm:Persistable="True" cm:PersistFieldName="RequestType" />
          <cm:tzTextBox Name="txtResponse" Width="481" Height="42" Margin="0,0,30,12.9999999999999" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4931345524520181736" Grid.Column="0" Grid.ColumnSpan="3" Grid.Row="2" cm:IsMulitiLine="True" cm:Len="1000" cm:Persistable="True" cm:PersistFieldName="Response" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/10/29 15:43:55', GUID = '6c877d96-c38c-4739-9c2a-0d502fc2ed2b', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "41607" ,"components": [{"value": "True","key": "4796154223235079582","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5433583936544774254" , "dataSourceName":"dsRecoveredMainSubject" , "controlType": "datasource",  "selectQuery" :"select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "@@MainSubject","key": "4781473934816942684","label": "txtMainSubject","controlType": "textbox", "type": "" , "DataBindingField" : "Name"},{"value": "@@MainSubject","key": "5077630523876558823","label": "txtMainSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5377042739550064811","label": "txtRequestType","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931345524520181736","label": "txtResponse","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4820877390337943060","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41607
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41607') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41607] ( [frm41607Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4796154223235079582]  [bit] NULL , [Col_4781473934816942684]  [nvarchar] ( 50) NULL , [Col_4820877390337943060]  [int] NULL , [Col_5077630523876558823]  [int] NULL , [Col_5377042739550064811]  [nvarchar] ( 100) NULL , [Col_4931345524520181736]  [nvarchar] ( 1000) NULL ,  PRIMARY KEY CLUSTERED ( [frm41607Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'frm41607Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD frm41607Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_4796154223235079582' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_4796154223235079582 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_4781473934816942684' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_4781473934816942684 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_4820877390337943060' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_4820877390337943060 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_5077630523876558823' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_5077630523876558823 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_5377042739550064811' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_5377042739550064811 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41607' AND COLUMN_NAME = 'Col_4931345524520181736' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41607] ADD Col_4931345524520181736 nvarchar (1000) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41607]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41607
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41607] ( @PKFormId as bigint OUTPUT ,  @Col_4796154223235079582 AS bit,  @Col_4781473934816942684 AS nvarchar(50),  @Col_4820877390337943060 AS int,  @Col_5077630523876558823 AS int,  @Col_5377042739550064811 AS nvarchar(100),  @Col_4931345524520181736 AS nvarchar(1000) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41607](Col_4796154223235079582,Col_4781473934816942684,Col_4820877390337943060,Col_5077630523876558823,Col_5377042739550064811,Col_4931345524520181736) VALUES ( @Col_4796154223235079582,@Col_4781473934816942684,@Col_4820877390337943060,@Col_5077630523876558823,@Col_5377042739550064811,@Col_4931345524520181736 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41607]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41607
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41607] ( @PKFormId as bigint OUTPUT ,  @Col_4796154223235079582 AS bit,  @Col_4781473934816942684 AS nvarchar(50),  @Col_4820877390337943060 AS int,  @Col_5077630523876558823 AS int,  @Col_5377042739550064811 AS nvarchar(100),  @Col_4931345524520181736 AS nvarchar(1000) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41607] SET Col_4796154223235079582 =  @Col_4796154223235079582, Col_4781473934816942684 =  @Col_4781473934816942684, Col_4820877390337943060 =  @Col_4820877390337943060, Col_5077630523876558823 =  @Col_5077630523876558823, Col_5377042739550064811 =  @Col_5377042739550064811, Col_4931345524520181736 =  @Col_4931345524520181736 WHERE [frm41607Id] = @PKFormId 
 END 
GO
