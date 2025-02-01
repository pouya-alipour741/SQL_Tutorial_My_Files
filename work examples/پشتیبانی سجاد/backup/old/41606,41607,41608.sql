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
</cm:TZBaseControl>',0,'1403/11/01 16:29:37', '6c877d96-c38c-4739-9c2a-0d502fc2ed2b', 1, N'', N'{"formID": "41607" ,"components": [{"value": "True","key": "4796154223235079582","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5433583936544774254" , "dataSourceName":"dsRecoveredMainSubject" , "controlType": "datasource",  "selectQuery" :"select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "@@MainSubject","key": "4781473934816942684","label": "txtMainSubject","controlType": "textbox", "type": "" , "DataBindingField" : "Name"},{"value": "@@MainSubject","key": "5077630523876558823","label": "txtMainSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5377042739550064811","label": "txtRequestType","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931345524520181736","label": "txtResponse","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4820877390337943060","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
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
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/11/01 16:29:37', GUID = '6c877d96-c38c-4739-9c2a-0d502fc2ed2b', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "41607" ,"components": [{"value": "True","key": "4796154223235079582","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5433583936544774254" , "dataSourceName":"dsRecoveredMainSubject" , "controlType": "datasource",  "selectQuery" :"select   (select Name from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name from   Workflow.TblWorkflow w1 where  WorkflowId = {$MainSubject}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "@@MainSubject","key": "4781473934816942684","label": "txtMainSubject","controlType": "textbox", "type": "" , "DataBindingField" : "Name"},{"value": "@@MainSubject","key": "5077630523876558823","label": "txtMainSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5377042739550064811","label": "txtRequestType","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4931345524520181736","label": "txtResponse","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4820877390337943060","label": "txtUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41607
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
GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41608) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41608, N'فرم جستجو پیشرفته فرایند درخواست پشتیبانی کاربران دانشگاهی',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1237" Height="982" Background="White">
  <Canvas Width="1202" Height="941">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5211001432694439916</ID>
        <Name>اجباری بودن انتخاب موضوع اصلی توسط کاربر سخاوت</Name>
        <Condition>({@chbMandatory.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا موضوع اصلی را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5535282148874238508</ComponentID>
            <ComponentName>chbMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4691025292262180213</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4871765432273767830</ID>
        <Name>بازه تاریخ نا معتبر </Name>
        <Condition>({@CheckBox79.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد "تاریخ تا" باید بزرگتر از مقدار "تاریخ از" باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5217826183179546043</ComponentID>
            <ComponentName>CheckBox79</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5370120232168315963</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1186" Height="925" Background="#FF06427F" ControlID="4763975330562137876" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1158" Height="888.51666666666665" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" BorderThickness="2,2,2,2" ControlID="4892098589973136482" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLookUpComboBox Name="cmbMainSubject" Width="296.95333333000013" Height="22" ControlID="5530768454771502173" Canvas.Left="732" Canvas.Top="7.7665032033334569" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataType="Int" cm:DefaultValue="$سومی" cm:Event="dsMandatory,dsSelectReadyAnswer" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
            <cm:tzTextBox Name="txtFollowUpCode" Width="140.34333334000007" Height="21" ControlID="5093936520403204420" Canvas.Left="467.87999999999988" Canvas.Top="76.766503203333457" cm:DataType="BigInt" />
            <cm:tzTextBox Name="txtWFID" Width="140.93360995999998" Height="21" ControlID="4870872938434230307" Canvas.Left="207" Canvas.Top="9.0000000000000568" cm:DataType="BigInt" />
            <cm:PDatePicker Name="prcFromDate" Width="122" Height="20" ControlID="5532716221540078605" Canvas.Left="10.569999999999936" Canvas.Top="9" cm:DataBinding="dsGetLastMonth" cm:DataBindingField="LastMonthDate" cm:DefaultValue="" />
            <cm:tzLookUpComboBox Name="cmbStatus" Width="296.95333332999991" Height="22" ControlID="4674183520383499921" Canvas.Left="732.00000000000023" Canvas.Top="43.766503203333457" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dstest" cm:tzDisplayItem="TITLE" cm:tzValueItem="ID" />
            <cm:tzLabel Name="Lable19" Content=":موضوع اصلی" Width="85" Height="23" ControlID="4812987709243253871" Canvas.Left="1029.95333333" Canvas.Top="6.7665032033334569" />
            <cm:tzLabel Name="Lable20" Content=":درخواست کننده" Width="97.82333333" Height="23" FontFamily="Tahoma" Canvas.Left="609.22333334" Canvas.Top="6.0000000000000568" cm:ControlID="5367005362290951205" />
            <cm:tzLookUpComboBox Name="cmbUsers" Width="140.34333334" Height="22" Canvas.Left="467.88" Canvas.Top="7" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5461781533024897420" cm:DataBinding="dsUsers" cm:DataType="BigInt" cm:Event="dstest" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
            <cm:tzLabel Name="Lable21" Content=":شماره فرایند" Width="97.82333333333321" Height="23" ControlID="5148159131173335180" FontFamily="Tahoma" Canvas.Left="348.93360996" Canvas.Top="7.0000000000000568" />
            <cm:tzLabel Name="Lable27" Content=":تاریخ ثبت از" Width="120" Height="23" ControlID="5287410012608906663" FontFamily="Tahoma" Canvas.Left="98" Canvas.Top="6" />
            <cm:tzLabel Name="Lable28" Content=":تاریخ ثبت تا" Width="120" Height="23" FontFamily="Tahoma" Canvas.Left="98" Canvas.Top="42" cm:ControlID="5236310694022798982" />
            <cm:PDatePicker Name="prcToDate" Width="122" Height="20" Canvas.Left="10.569999999999936" Canvas.Top="45" cm:ControlID="5018823071972296921" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable29" Content=":کد پیگیری" Width="63" Height="23" ControlID="4901662744236561897" FontFamily="Tahoma" Canvas.Left="609.22333334000007" Canvas.Top="77.000000000000284" />
            <cm:tzDataGrid Name="gdvQuestionAnswer" Width="1127.43" Height="377.62762795" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5759209888664748611" ItemsSource="{Binding ElementName=dsSearchQuestionAnswer, Path=DataItems}" Canvas.Left="10.57" Canvas.Top="223.40570539" cm:AllowPaging="False" cm:BindingForm="dsSearchQuestionAnswer" cm:Event="dsSelectwfid,dsSelectKey" cm:IsSearchable="True" cm:KeyField="id" cm:MultiSelect="True" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="id" DecimalMark="False" HeaderText="id" IsRowColorField="False" KeyField="True" SortMemberPath="id">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding id}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NumRow" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="NumRow">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NumRow}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WfID" DataTextField="WfID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WfID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WfID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WfID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="400" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descript" DecimalMark="False" HeaderText="درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Descript">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descript}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کارشناس " IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت " IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت " IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام درخواست کننده" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="Attachment" DataTextField="Link" DecimalMark="False" HeaderText="تصویر خطا" HyperLinkType="URL" IsRowColorField="False" KeyField="False" SortMemberPath="Link">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Link}" Command="{Binding Source={StaticResource MainCommands}, Path=ShowExtenalLink}" CommandParameter="{Binding Attachment}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="fileID" DataTextField="Link" DecimalMark="False" HeaderText="فایل" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="Link">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Link}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding fileID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Mobile" DecimalMark="False" HeaderText="موبایل" IsRowColorField="False" KeyField="False" SortMemberPath="Mobile">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Mobile}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Email" DecimalMark="False" HeaderText="پست الکترونیک" IsRowColorField="False" KeyField="False" SortMemberPath="Email">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Email}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="مرحله فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceStatusName" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceStatusName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceStatusName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="TazarvSupport" DataTextField="TazarvSupport" DecimalMark="False" HeaderText="شماره فرآیند پشتیبانی تذرو" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TazarvSupport">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding TazarvSupport}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding TazarvSupport}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsSearchQuestionAnswer" Content="dsSearchQuestionAnswer" Width="138.93" Height="25" ControlID="5702593750632146706" Canvas.Left="10.56999999999988" Canvas.Top="576.03333334000013" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_advancedSearch_frm41608">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubject" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUsers}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPersonName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PersonName" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbWFStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @WFStep" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFNumber" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @FollowUpCode" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExpert}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ExpertUserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZButton Name="Button27" Content="جستجو" Width="121.99999999999994" Height="23" ControlID="4653949925474350596" Canvas.Left="10.57" Canvas.Top="75" cm:Event="dsSearchQuestionAnswer" cm:Validations="5522189699535112073" />
            <cm:tzLabel Name="Lable39" Content="وضعیت فرایند:" ControlID="4747610422058340706" FlowDirection="RightToLeft" Canvas.Left="1034.67333333" Canvas.Top="41.516666666666779" />
            <cm:TzGroupBox Name="GroupBox59" Width="1127.43" Height="107.40570539" ControlID="5759606125225975486" Canvas.Left="10.57" Canvas.Top="107" cm:Header="پاسخ گروهی">
              <Canvas>
                <cm:tzTextBox Name="txtDesc" Width="1003.4442663100001" Height="48.51666667" ControlID="5441581822824964256" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="33.40570539" cm:DataBinding="dsSelectAnswer" cm:DataBindingField="Answer" cm:Event="dsEnableBtn" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLookUpComboBox Name="cmbReadyAnswer" Width="291.23148954" Height="22" ControlID="4945194059781672514" Canvas.Left="716.82277677" Canvas.Top="3.055897143333425" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectReadyAnswer" cm:Event="dsSelectAnswer" cm:tzDisplayItem="Title" cm:tzValueItem="ReadSaoAnswerID" />
                <cm:tzLabel Name="Lable117" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="1017.05426631" Canvas.Top="0.57256381000009071" cm:ControlID="5289141937530042459" cm:IsVisibleItem="True" />
                <cm:tzLabel Name="Lable37" Content=":نتيجه نهايي" Width="73.5" Height="23" ControlID="4716404251340696191" Canvas.Left="1017.05426631" Canvas.Top="34.289393940000082" />
                <cm:TZButton Name="Button101" Content="ارسال" Width="110" Height="23" ControlID="4906707026216213102" Canvas.Left="8" Canvas.Top="0.28939394" cm:Event="dsDoneTask" />
                <cm:tzDataSource Name="dsSelectReadyAnswer" Content="dsSelectReadyAnswer" Width="136.83048543999982" Height="25" ControlID="4939650566442929498" Canvas.Left="-5.22815533999983" Canvas.Top="274.97337287" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer_Frm31108">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsEnable" Content="dsEnable" Width="136.83048543999982" Height="25" ControlID="5641455391768574097" Canvas.Left="-5.22815533999966" Canvas.Top="308.97337287000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@txtSelectedWFID}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" />
                <cm:tzTextBox Name="txtSelectedWFID" Width="120" Height="21" ControlID="5373575373096167126" Canvas.Left="132.6023301" Canvas.Top="209.5865679300002" cm:DataBinding="dsSelectwfid" cm:DataBindingField="WFID" cm:Event="dsEnable,dsHistory,dsSelectReadyAnswer" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsUsers" Content="dsUsers" Width="136.83048544" Height="25" ControlID="5507545221695674995" Canvas.Left="-5.2281553400000007" Canvas.Top="384.90258901" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetUsers_SearchQuestionAnswer" />
                <cm:tzDataSource Name="dsGetLastMonth" Content="dsGetLastMonth" Width="136.83048543999985" Height="25" ControlID="5332918379506863424" Canvas.Left="-5.22815533999983" Canvas.Top="173.08705502" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLastMonthDate" />
                <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="136.83048543999982" Height="25" ControlID="4791881557067791466" Canvas.Left="-5.22815533999983" Canvas.Top="139.08705502" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetMainSubject_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzTextBox Name="TextBox110" Width="255" Height="21" ControlID="5077739450199891529" Canvas.Left="253.6023301" Canvas.Top="173.08705502" cm:DataBinding="dsSelectKey" cm:DataBindingField="Ids" cm:IsVisibleItem="False" />
                <cm:TZCheckBox Name="CheckBox79" Content="TZCheckBox" Width="77" Height="20" ControlID="5217826183179546043" Canvas.Left="145.61542199" Canvas.Top="3.28939394" cm:DataBinding="dschkBothDates" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </Canvas>
            </cm:TzGroupBox>
            <cm:tzDataGrid Name="GridView48" Width="1127.43" Height="226.99999998999988" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5676967287719873975" ItemsSource="{Binding ElementName=dsHistory, Path=DataItems}" Canvas.Left="10.57" Canvas.Top="633.03333334000013" cm:BindingForm="dsHistory">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WorkFlowInstanceID" DataTextField="WorkFlowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowInstanceID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WorkFlowInstanceID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WorkFlowInstanceID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی/نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemType" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descrpit" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Descrpit">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descrpit}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="نتیجه نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsHistory" Content="dsHistory" Width="138.93000000000046" Height="25" ControlID="5061681583334321950" Canvas.Left="10.56999999999907" Canvas.Top="470.20809062" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_SearchHistoryWF_ForSaoSupport">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtSelectedWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable92" Content="سوابق درخواست" Width="98" Height="29.999999999999886" ControlID="5283030800096502873" Canvas.Left="1040" Canvas.Top="602.03333334000013" />
            <cm:tzLookUpComboBox Name="cmbWFStatus" Width="296.95333332999991" Height="22" Canvas.Left="732.00000000000023" Canvas.Top="78.00000000000027" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5632517775665576963" cm:DataBinding="dsWFStatus" cm:DataType="Int" cm:DefaultValue="" cm:Event="dstest" cm:tzDisplayItem="LogStatusTitle" cm:tzValueItem="LogStatusID" />
            <cm:tzLabel Name="Lable51" Content="مرحله فرایند:" Width="NaN" Height="NaN" FlowDirection="RightToLeft" Canvas.Left="1029.95333333" Canvas.Top="75.516666666666922" cm:ControlID="4659181156762773051" />
            <cm:tzDataSource Name="dsWFStatus" Content="dsWFStatus" Width="137.93000000000052" Height="25" Canvas.Left="10.569999999999482" Canvas.Top="644.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5512409615792043579" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetWFStepStatus_SearchQuestionAnswer" />
            <cm:tzLabel Name="Lable43" Content=":کارشناس" Width="NaN" Height="23" FontFamily="Tahoma" Canvas.Left="356.00000000000006" Canvas.Top="42" cm:ControlID="4690968011499242314" />
            <cm:tzLookUpComboBox Name="cmbExpert" Width="140" Height="22" Canvas.Left="207" Canvas.Top="43" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4861667107116646382" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Event="dstest" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="137.93000000000046" Height="25" ControlID="5608065563350752282" Canvas.Left="10.569999999999538" Canvas.Top="610.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetExpert_SearchQuestionAnswer" />
            <cm:tzLabel Name="Lable57" Content="" Width="50.5" Height="23" ControlID="4666004102284941627" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="219" Canvas.Top="77" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDoing" />
            <cm:tzLabel Name="Lable59" Content=": درجریان کارشناس" Width="142.37999999999988" Height="31" ControlID="5651134915341198117" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="270.5" Canvas.Top="77.000000000000284" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDoing" />
            <cm:tzLabel Name="Lable5859" Content=": خاتمه کارشناس" Width="142.37999999999988" Height="31" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="270.49999999999977" Canvas.Top="109.00000000000057" cm:ControlID="5001467706302622414" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDone" />
            <cm:tzLabel Name="chkBothDates" Content="" Width="50.5" Height="23" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="218.99999999999977" Canvas.Top="109.00000000000028" cm:ControlID="5435895887011556948" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDone" />
            <cm:tzDataSource Name="dsEnableBtn" Content="dsEnableBtn" Width="138.93" Height="25" Canvas.Left="10.569999999999538" Canvas.Top="542.03333334000013" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5621094784908548751" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@txtDesc}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" />
            <cm:TZCheckBox Name="chkEnable" Content="chkEnable" Width="120" Height="20" ControlID="5494030831401772440" Canvas.Left="149.49999999999972" Canvas.Top="431.83531704333348" cm:DataBinding="dsEnable" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5759606125225975486#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsSelectAnswer" Content="dsSelectAnswer" Width="137.93000000000046" Height="25" ControlID="4915910715601269065" Canvas.Left="10.569999999999538" Canvas.Top="361.13195057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " />
            <cm:tzDataSource Name="dsSelectwfid" Content="dsSelectwfid" Width="137.93000000000046" Height="25" ControlID="5554416210975577959" Canvas.Left="10.569999999999538" Canvas.Top="327.13195057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetSelectedWFID_SearchQustionAnswer {@gdvQuestionAnswer.MultiSelectedItem}">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@gdvQuestionAnswer}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="137.93000000000046" Height="25" ControlID="5555178140555476126" Canvas.Left="10.569999999999538" Canvas.Top="231.4854369" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetWFStatus_SearchQuestionAnswer" />
            <cm:tzDataSource Name="dsMandatory" Content="dsMandatory" Width="137.93000000000046" Height="25" ControlID="5710389612768430219" Canvas.Left="10.569999999999538" Canvas.Top="678.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Mandatory_Frm31108">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName="  @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @WorkFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsDoneTask" Content="dsDoneTask" Width="137.93000000000046" Height="25" ControlID="5458078811527254674" Canvas.Left="10.569999999999538" Canvas.Top="712.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="" cm:RunQueryMode="Text" cm:tzSelectQuery="">
              <cm:tzDataSource.ServiceValue>
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="workflowInstanceIDList" ArgumentType="System.String" ComponentName="txtSelectedWFID" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="5373575373096167126" WebAddress="سازمان امور دانشجویان" />
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="userID" ArgumentType="System.Int64" ComponentName="(@UserID)" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="2" WebAddress="سازمان امور دانشجویان" />
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="Descript" ArgumentType="System.String" ComponentName="txtDesc" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="5441581822824964256" WebAddress="سازمان امور دانشجویان" />
              </cm:tzDataSource.ServiceValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox57" Width="114" Height="21" ControlID="5481516451968864003" Canvas.Left="149.5" Canvas.Top="716.03333334000013" cm:DataBinding="dsDoneTask" cm:DataBindingField="ReturnValue" cm:Event="dsSearchQuestionAnswer" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chkEnableBtn" Content="chkEnableBtn" Width="74" Height="20" Canvas.Left="149.5" Canvas.Top="547.03333334" cm:ControlID="4804405904545522683" cm:DataBinding="dsEnableBtn" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4906707026216213102#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsSelectKey" Content="dsSelectKey" Width="115.99999999999983" Height="25" ControlID="4871665541454949817" Canvas.Left="153.5" Canvas.Top="294.98885767" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@gdvQuestionAnswer.MultiSelectedItem} AS Ids" />
            <cm:tzDataSource Name="dschkBothDates" Content="dschkBothDates" Width="64.000000000000057" Height="25" ControlID="5237446907459564521" Canvas.Left="159.5" Canvas.Top="75" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@prcFromDate} &gt;= {@prcToDate} select cast(1 as bit) res else select cast(0 as bit) res" />
            <cm:tzTextBox Name="txtPersonName" Width="140" Height="21" ControlID="5367381440050801974" Canvas.Left="468.22333334000041" Canvas.Top="44" cm:Len="100" />
            <cm:tzLabel Name="Lable76" Content=":نام درخواست کننده" Width="NaN" Height="23" ControlID="5710212494110844303" FontFamily="Tahoma" Canvas.Left="609.22333334000041" Canvas.Top="42.000000000000057" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TZCheckBox Name="chbMandatory" Content="chbMandatory" Width="77" Height="20" ControlID="5535282148874238508" FontFamily="Tahoma" Canvas.Left="160.6178317" Canvas.Top="496.33802588" cm:DataBinding="dsMandatory" cm:DataBindingField="res" cm:IsVisibleItem="False" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'1403/11/08 13:37:44', 'da0617d6-4267-4722-8140-fbbafe1cd2f3', 0, N'', N'{"formID": "41608" ,"components": [{"value": "","key": "5535282148874238508","label": "chbMandatory","controlType": "checkbox","caption": "chbMandatory" ,"DataBindingField" : "res"},{"value": "","key": "5217826183179546043","label": "CheckBox79","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5494030831401772440","label": "chkEnable","controlType": "checkbox","caption": "chkEnable" ,"DataBindingField" : "Res"},{"value": "","key": "4804405904545522683","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Res"},{"key": "4861667107116646382","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "5530768454771502173","label": "cmbMainSubject","value": "$سومی", "controlType": "dropdown","options":""},{"key": "4945194059781672514","label": "cmbReadyAnswer","value": "", "controlType": "dropdown","options":""},{"key": "4674183520383499921","label": "cmbStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5461781533024897420","label": "cmbUsers","value": "", "controlType": "dropdown","options":""},{"key": "5632517775665576963","label": "cmbWFStatus","value": "", "controlType": "dropdown","options":""},{"key":"5237446907459564521" , "dataSourceName":"dschkBothDates" , "controlType": "datasource",  "selectQuery" :"if {@prcFromDate} >= {@prcToDate} select cast(1 as bit) res else select cast(0 as bit) res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5458078811527254674" , "dataSourceName":"dsDoneTask" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5641455391768574097" , "dataSourceName":"dsEnable" , "controlType": "datasource",  "selectQuery" :"if {@txtSelectedWFID}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5621094784908548751" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"if {@txtDesc}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5608065563350752282" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpert_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5332918379506863424" , "dataSourceName":"dsGetLastMonth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLastMonthDate" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5061681583334321950" , "dataSourceName":"dsHistory" , "controlType": "datasource",  "selectQuery" :"SP_CU_SearchHistoryWF_ForSaoSupport" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetMainSubject_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5710389612768430219" , "dataSourceName":"dsMandatory" , "controlType": "datasource",  "selectQuery" :"SP_CU_Mandatory_Frm31108" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5702593750632146706" , "dataSourceName":"dsSearchQuestionAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_advancedSearch_frm41608" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4915910715601269065" , "dataSourceName":"dsSelectAnswer" , "controlType": "datasource",  "selectQuery" :"SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4871665541454949817" , "dataSourceName":"dsSelectKey" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvQuestionAnswer.MultiSelectedItem} AS Ids" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4939650566442929498" , "dataSourceName":"dsSelectReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer_Frm31108" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5554416210975577959" , "dataSourceName":"dsSelectwfid" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetSelectedWFID_SearchQustionAnswer {@gdvQuestionAnswer.MultiSelectedItem}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5555178140555476126" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetWFStatus_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5507545221695674995" , "dataSourceName":"dsUsers" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUsers_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5512409615792043579" , "dataSourceName":"dsWFStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetWFStepStatus_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5077739450199891529","label": "TextBox110","controlType": "textbox", "type": "" , "DataBindingField" : "Ids"},{"value": "","key": "5481516451968864003","label": "TextBox57","controlType": "textbox", "type": "" , "DataBindingField" : "ReturnValue"},{"value": "","key": "5441581822824964256","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Answer"},{"value": "","key": "5093936520403204420","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5367381440050801974","label": "txtPersonName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5373575373096167126","label": "txtSelectedWFID","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "4870872938434230307","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجو پیشرفته فرایند درخواست پشتیبانی کاربران دانشگاهی',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1237" Height="982" Background="White">
  <Canvas Width="1202" Height="941">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5211001432694439916</ID>
        <Name>اجباری بودن انتخاب موضوع اصلی توسط کاربر سخاوت</Name>
        <Condition>({@chbMandatory.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا موضوع اصلی را انتخاب کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5535282148874238508</ComponentID>
            <ComponentName>chbMandatory</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4691025292262180213</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4871765432273767830</ID>
        <Name>بازه تاریخ نا معتبر </Name>
        <Condition>({@CheckBox79.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد "تاریخ تا" باید بزرگتر از مقدار "تاریخ از" باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5217826183179546043</ComponentID>
            <ComponentName>CheckBox79</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5370120232168315963</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="1186" Height="925" Background="#FF06427F" ControlID="4763975330562137876" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="1158" Height="888.51666666666665" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" BorderThickness="2,2,2,2" ControlID="4892098589973136482" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLookUpComboBox Name="cmbMainSubject" Width="296.95333333000013" Height="22" ControlID="5530768454771502173" Canvas.Left="732" Canvas.Top="7.7665032033334569" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataType="Int" cm:DefaultValue="$سومی" cm:Event="dsMandatory,dsSelectReadyAnswer" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
            <cm:tzTextBox Name="txtFollowUpCode" Width="140.34333334000007" Height="21" ControlID="5093936520403204420" Canvas.Left="467.87999999999988" Canvas.Top="76.766503203333457" cm:DataType="BigInt" />
            <cm:tzTextBox Name="txtWFID" Width="140.93360995999998" Height="21" ControlID="4870872938434230307" Canvas.Left="207" Canvas.Top="9.0000000000000568" cm:DataType="BigInt" />
            <cm:PDatePicker Name="prcFromDate" Width="122" Height="20" ControlID="5532716221540078605" Canvas.Left="10.569999999999936" Canvas.Top="9" cm:DataBinding="dsGetLastMonth" cm:DataBindingField="LastMonthDate" cm:DefaultValue="" />
            <cm:tzLookUpComboBox Name="cmbStatus" Width="296.95333332999991" Height="22" ControlID="4674183520383499921" Canvas.Left="732.00000000000023" Canvas.Top="43.766503203333457" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dstest" cm:tzDisplayItem="TITLE" cm:tzValueItem="ID" />
            <cm:tzLabel Name="Lable19" Content=":موضوع اصلی" Width="85" Height="23" ControlID="4812987709243253871" Canvas.Left="1029.95333333" Canvas.Top="6.7665032033334569" />
            <cm:tzLabel Name="Lable20" Content=":درخواست کننده" Width="97.82333333" Height="23" FontFamily="Tahoma" Canvas.Left="609.22333334" Canvas.Top="6.0000000000000568" cm:ControlID="5367005362290951205" />
            <cm:tzLookUpComboBox Name="cmbUsers" Width="140.34333334" Height="22" Canvas.Left="467.88" Canvas.Top="7" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5461781533024897420" cm:DataBinding="dsUsers" cm:DataType="BigInt" cm:Event="dstest" cm:tzDisplayItem="Name" cm:tzValueItem="ID" />
            <cm:tzLabel Name="Lable21" Content=":شماره فرایند" Width="97.82333333333321" Height="23" ControlID="5148159131173335180" FontFamily="Tahoma" Canvas.Left="348.93360996" Canvas.Top="7.0000000000000568" />
            <cm:tzLabel Name="Lable27" Content=":تاریخ ثبت از" Width="120" Height="23" ControlID="5287410012608906663" FontFamily="Tahoma" Canvas.Left="98" Canvas.Top="6" />
            <cm:tzLabel Name="Lable28" Content=":تاریخ ثبت تا" Width="120" Height="23" FontFamily="Tahoma" Canvas.Left="98" Canvas.Top="42" cm:ControlID="5236310694022798982" />
            <cm:PDatePicker Name="prcToDate" Width="122" Height="20" Canvas.Left="10.569999999999936" Canvas.Top="45" cm:ControlID="5018823071972296921" cm:DefaultValue="$CurrentDate" />
            <cm:tzLabel Name="Lable29" Content=":کد پیگیری" Width="63" Height="23" ControlID="4901662744236561897" FontFamily="Tahoma" Canvas.Left="609.22333334000007" Canvas.Top="77.000000000000284" />
            <cm:tzDataGrid Name="gdvQuestionAnswer" Width="1127.43" Height="377.62762795" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5759209888664748611" ItemsSource="{Binding ElementName=dsSearchQuestionAnswer, Path=DataItems}" Canvas.Left="10.57" Canvas.Top="223.40570539" cm:AllowPaging="False" cm:BindingForm="dsSearchQuestionAnswer" cm:Event="dsSelectwfid,dsSelectKey" cm:IsSearchable="True" cm:KeyField="id" cm:MultiSelect="True" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="id" DecimalMark="False" HeaderText="id" IsRowColorField="False" KeyField="True" SortMemberPath="id">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding id}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NumRow" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="NumRow">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NumRow}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WfID" DataTextField="WfID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WfID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WfID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WfID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="400" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descript" DecimalMark="False" HeaderText="درخواست" IsRowColorField="False" KeyField="False" SortMemberPath="Descript">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descript}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="کارشناس " IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت " IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت " IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Name" DecimalMark="False" HeaderText="نام درخواست کننده" IsRowColorField="False" KeyField="False" SortMemberPath="Name">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Name}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="Attachment" DataTextField="Link" DecimalMark="False" HeaderText="تصویر خطا" HyperLinkType="URL" IsRowColorField="False" KeyField="False" SortMemberPath="Link">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Link}" Command="{Binding Source={StaticResource MainCommands}, Path=ShowExtenalLink}" CommandParameter="{Binding Attachment}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="fileID" DataTextField="Link" DecimalMark="False" HeaderText="فایل" HyperLinkType="FileID" IsRowColorField="False" KeyField="False" SortMemberPath="Link">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding Link}" Command="{Binding Source={StaticResource MainCommands}, Path=Show}" CommandParameter="{Binding fileID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Mobile" DecimalMark="False" HeaderText="موبایل" IsRowColorField="False" KeyField="False" SortMemberPath="Mobile">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Mobile}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Email" DecimalMark="False" HeaderText="پست الکترونیک" IsRowColorField="False" KeyField="False" SortMemberPath="Email">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Email}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="LogStatusTitle" DecimalMark="False" HeaderText="مرحله فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="LogStatusTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding LogStatusTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="45" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceStatusName" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceStatusName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceStatusName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="TazarvSupport" DataTextField="TazarvSupport" DecimalMark="False" HeaderText="شماره فرآیند پشتیبانی تذرو" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TazarvSupport">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding TazarvSupport}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding TazarvSupport}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsSearchQuestionAnswer" Content="dsSearchQuestionAnswer" Width="138.93" Height="25" ControlID="5702593750632146706" Canvas.Left="10.56999999999988" Canvas.Top="576.03333334000013" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_advancedSearch_frm41608">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubject" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUsers}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @UserID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtPersonName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PersonName" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @Status" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbWFStatus}" IsOutputParameter="False" ParameterType="int" SpParamName=" @WFStep" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @WFNumber" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFollowUpCode}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @FollowUpCode" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@prcToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbExpert}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ExpertUserID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TZButton Name="Button27" Content="جستجو" Width="121.99999999999994" Height="23" ControlID="4653949925474350596" Canvas.Left="10.57" Canvas.Top="75" cm:Event="dsSearchQuestionAnswer" cm:Validations="5522189699535112073" />
            <cm:tzLabel Name="Lable39" Content="وضعیت فرایند:" ControlID="4747610422058340706" FlowDirection="RightToLeft" Canvas.Left="1034.67333333" Canvas.Top="41.516666666666779" />
            <cm:TzGroupBox Name="GroupBox59" Width="1127.43" Height="107.40570539" ControlID="5759606125225975486" Canvas.Left="10.57" Canvas.Top="107" cm:Header="پاسخ گروهی">
              <Canvas>
                <cm:tzTextBox Name="txtDesc" Width="1003.4442663100001" Height="48.51666667" ControlID="5441581822824964256" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="33.40570539" cm:DataBinding="dsSelectAnswer" cm:DataBindingField="Answer" cm:Event="dsEnableBtn" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLookUpComboBox Name="cmbReadyAnswer" Width="291.23148954" Height="22" ControlID="4945194059781672514" Canvas.Left="716.82277677" Canvas.Top="3.055897143333425" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSelectReadyAnswer" cm:Event="dsSelectAnswer" cm:tzDisplayItem="Title" cm:tzValueItem="ReadSaoAnswerID" />
                <cm:tzLabel Name="Lable117" Content=":پاسخ آماده" Width="NaN" Height="NaN" Canvas.Left="1017.05426631" Canvas.Top="0.57256381000009071" cm:ControlID="5289141937530042459" cm:IsVisibleItem="True" />
                <cm:tzLabel Name="Lable37" Content=":نتيجه نهايي" Width="73.5" Height="23" ControlID="4716404251340696191" Canvas.Left="1017.05426631" Canvas.Top="34.289393940000082" />
                <cm:TZButton Name="Button101" Content="ارسال" Width="110" Height="23" ControlID="4906707026216213102" Canvas.Left="8" Canvas.Top="0.28939394" cm:Event="dsDoneTask" />
                <cm:tzDataSource Name="dsSelectReadyAnswer" Content="dsSelectReadyAnswer" Width="136.83048543999982" Height="25" ControlID="4939650566442929498" Canvas.Left="-5.22815533999983" Canvas.Top="274.97337287" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer_Frm31108">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @WFID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzDataSource Name="dsEnable" Content="dsEnable" Width="136.83048543999982" Height="25" ControlID="5641455391768574097" Canvas.Left="-5.22815533999966" Canvas.Top="308.97337287000005" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@txtSelectedWFID}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" />
                <cm:tzTextBox Name="txtSelectedWFID" Width="120" Height="21" ControlID="5373575373096167126" Canvas.Left="132.6023301" Canvas.Top="209.5865679300002" cm:DataBinding="dsSelectwfid" cm:DataBindingField="WFID" cm:Event="dsEnable,dsHistory,dsSelectReadyAnswer" cm:IsVisibleItem="False" />
                <cm:tzDataSource Name="dsUsers" Content="dsUsers" Width="136.83048544" Height="25" ControlID="5507545221695674995" Canvas.Left="-5.2281553400000007" Canvas.Top="384.90258901" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetUsers_SearchQuestionAnswer" />
                <cm:tzDataSource Name="dsGetLastMonth" Content="dsGetLastMonth" Width="136.83048543999985" Height="25" ControlID="5332918379506863424" Canvas.Left="-5.22815533999983" Canvas.Top="173.08705502" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetLastMonthDate" />
                <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="136.83048543999982" Height="25" ControlID="4791881557067791466" Canvas.Left="-5.22815533999983" Canvas.Top="139.08705502" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetMainSubject_frm21041">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzTextBox Name="TextBox110" Width="255" Height="21" ControlID="5077739450199891529" Canvas.Left="253.6023301" Canvas.Top="173.08705502" cm:DataBinding="dsSelectKey" cm:DataBindingField="Ids" cm:IsVisibleItem="False" />
                <cm:TZCheckBox Name="CheckBox79" Content="TZCheckBox" Width="77" Height="20" ControlID="5217826183179546043" Canvas.Left="145.61542199" Canvas.Top="3.28939394" cm:DataBinding="dschkBothDates" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              </Canvas>
            </cm:TzGroupBox>
            <cm:tzDataGrid Name="GridView48" Width="1127.43" Height="226.99999998999988" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5676967287719873975" ItemsSource="{Binding ElementName=dsHistory, Path=DataItems}" Canvas.Left="10.57" Canvas.Top="633.03333334000013" cm:BindingForm="dsHistory">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WorkFlowInstanceID" DataTextField="WorkFlowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WorkFlowInstanceID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WorkFlowInstanceID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WorkFlowInstanceID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی/نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemType" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="300" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Descrpit" DecimalMark="False" HeaderText="توضیحات" IsRowColorField="False" KeyField="False" SortMemberPath="Descrpit">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Descrpit}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FinalDesc" DecimalMark="False" HeaderText="نتیجه نهایی" IsRowColorField="False" KeyField="False" SortMemberPath="FinalDesc">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FinalDesc}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsHistory" Content="dsHistory" Width="138.93000000000046" Height="25" ControlID="5061681583334321950" Canvas.Left="10.56999999999907" Canvas.Top="470.20809062" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_SearchHistoryWF_ForSaoSupport">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtSelectedWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzLabel Name="Lable92" Content="سوابق درخواست" Width="98" Height="29.999999999999886" ControlID="5283030800096502873" Canvas.Left="1040" Canvas.Top="602.03333334000013" />
            <cm:tzLookUpComboBox Name="cmbWFStatus" Width="296.95333332999991" Height="22" Canvas.Left="732.00000000000023" Canvas.Top="78.00000000000027" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5632517775665576963" cm:DataBinding="dsWFStatus" cm:DataType="Int" cm:DefaultValue="" cm:Event="dstest" cm:tzDisplayItem="LogStatusTitle" cm:tzValueItem="LogStatusID" />
            <cm:tzLabel Name="Lable51" Content="مرحله فرایند:" Width="NaN" Height="NaN" FlowDirection="RightToLeft" Canvas.Left="1029.95333333" Canvas.Top="75.516666666666922" cm:ControlID="4659181156762773051" />
            <cm:tzDataSource Name="dsWFStatus" Content="dsWFStatus" Width="137.93000000000052" Height="25" Canvas.Left="10.569999999999482" Canvas.Top="644.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5512409615792043579" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetWFStepStatus_SearchQuestionAnswer" />
            <cm:tzLabel Name="Lable43" Content=":کارشناس" Width="NaN" Height="23" FontFamily="Tahoma" Canvas.Left="356.00000000000006" Canvas.Top="42" cm:ControlID="4690968011499242314" />
            <cm:tzLookUpComboBox Name="cmbExpert" Width="140" Height="22" Canvas.Left="207" Canvas.Top="43" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4861667107116646382" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Event="dstest" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="137.93000000000046" Height="25" ControlID="5608065563350752282" Canvas.Left="10.569999999999538" Canvas.Top="610.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetExpert_SearchQuestionAnswer" />
            <cm:tzLabel Name="Lable57" Content="" Width="50.5" Height="23" ControlID="4666004102284941627" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="219" Canvas.Top="77" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDoing" />
            <cm:tzLabel Name="Lable59" Content=": درجریان کارشناس" Width="142.37999999999988" Height="31" ControlID="5651134915341198117" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="270.5" Canvas.Top="77.000000000000284" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDoing" />
            <cm:tzLabel Name="Lable5859" Content=": خاتمه کارشناس" Width="142.37999999999988" Height="31" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="270.49999999999977" Canvas.Top="109.00000000000057" cm:ControlID="5001467706302622414" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDone" />
            <cm:tzLabel Name="chkBothDates" Content="" Width="50.5" Height="23" FontSize="13" FontWeight="Bold" Foreground="#FF09A32D" Canvas.Left="218.99999999999977" Canvas.Top="109.00000000000028" cm:ControlID="5435895887011556948" cm:DataBinding="dsSearchQuestionAnswer" cm:DataBindingField="CountWFDone" />
            <cm:tzDataSource Name="dsEnableBtn" Content="dsEnableBtn" Width="138.93" Height="25" Canvas.Left="10.569999999999538" Canvas.Top="542.03333334000013" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ControlID="5621094784908548751" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@txtDesc}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" />
            <cm:TZCheckBox Name="chkEnable" Content="chkEnable" Width="120" Height="20" ControlID="5494030831401772440" Canvas.Left="149.49999999999972" Canvas.Top="431.83531704333348" cm:DataBinding="dsEnable" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5759606125225975486#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsSelectAnswer" Content="dsSelectAnswer" Width="137.93000000000046" Height="25" ControlID="4915910715601269065" Canvas.Left="10.569999999999538" Canvas.Top="361.13195057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " />
            <cm:tzDataSource Name="dsSelectwfid" Content="dsSelectwfid" Width="137.93000000000046" Height="25" ControlID="5554416210975577959" Canvas.Left="10.569999999999538" Canvas.Top="327.13195057" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_Cu_GetSelectedWFID_SearchQustionAnswer {@gdvQuestionAnswer.MultiSelectedItem}">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@gdvQuestionAnswer}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @ID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsStatus" Content="dsStatus" Width="137.93000000000046" Height="25" ControlID="5555178140555476126" Canvas.Left="10.569999999999538" Canvas.Top="231.4854369" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetWFStatus_SearchQuestionAnswer" />
            <cm:tzDataSource Name="dsMandatory" Content="dsMandatory" Width="137.93000000000046" Height="25" ControlID="5710389612768430219" Canvas.Left="10.569999999999538" Canvas.Top="678.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Mandatory_Frm31108">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName="  @UserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName="  {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName="  @WorkFID" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsDoneTask" Content="dsDoneTask" Width="137.93000000000046" Height="25" ControlID="5458078811527254674" Canvas.Left="10.569999999999538" Canvas.Top="712.03333334" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="" cm:RunQueryMode="Text" cm:tzSelectQuery="">
              <cm:tzDataSource.ServiceValue>
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="workflowInstanceIDList" ArgumentType="System.String" ComponentName="txtSelectedWFID" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="5373575373096167126" WebAddress="سازمان امور دانشجویان" />
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="userID" ArgumentType="System.Int64" ComponentName="(@UserID)" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="2" WebAddress="سازمان امور دانشجویان" />
                <TZWebService xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" Name="Descript" ArgumentType="System.String" ComponentName="txtDesc" IsDefault="True" MethodName="GroupDoneTaskSajadSupport" Value="5441581822824964256" WebAddress="سازمان امور دانشجویان" />
              </cm:tzDataSource.ServiceValue>
            </cm:tzDataSource>
            <cm:tzTextBox Name="TextBox57" Width="114" Height="21" ControlID="5481516451968864003" Canvas.Left="149.5" Canvas.Top="716.03333334000013" cm:DataBinding="dsDoneTask" cm:DataBindingField="ReturnValue" cm:Event="dsSearchQuestionAnswer" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chkEnableBtn" Content="chkEnableBtn" Width="74" Height="20" Canvas.Left="149.5" Canvas.Top="547.03333334" cm:ControlID="4804405904545522683" cm:DataBinding="dsEnableBtn" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="4906707026216213102#" cm:TMCol="" cm:TVCol="" />
            <cm:tzDataSource Name="dsSelectKey" Content="dsSelectKey" Width="115.99999999999983" Height="25" ControlID="4871665541454949817" Canvas.Left="153.5" Canvas.Top="294.98885767" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="SELECT {@gdvQuestionAnswer.MultiSelectedItem} AS Ids" />
            <cm:tzDataSource Name="dschkBothDates" Content="dschkBothDates" Width="64.000000000000057" Height="25" ControlID="5237446907459564521" Canvas.Left="159.5" Canvas.Top="75" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@prcFromDate} &gt;= {@prcToDate} select cast(1 as bit) res else select cast(0 as bit) res" />
            <cm:tzTextBox Name="txtPersonName" Width="140" Height="21" ControlID="5367381440050801974" Canvas.Left="468.22333334000041" Canvas.Top="44" cm:Len="100" />
            <cm:tzLabel Name="Lable76" Content=":نام درخواست کننده" Width="NaN" Height="23" ControlID="5710212494110844303" FontFamily="Tahoma" Canvas.Left="609.22333334000041" Canvas.Top="42.000000000000057" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:TZCheckBox Name="chbMandatory" Content="chbMandatory" Width="77" Height="20" ControlID="5535282148874238508" FontFamily="Tahoma" Canvas.Left="160.6178317" Canvas.Top="496.33802588" cm:DataBinding="dsMandatory" cm:DataBindingField="res" cm:IsVisibleItem="False" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/11/08 13:37:44', GUID = 'da0617d6-4267-4722-8140-fbbafe1cd2f3', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41608" ,"components": [{"value": "","key": "5535282148874238508","label": "chbMandatory","controlType": "checkbox","caption": "chbMandatory" ,"DataBindingField" : "res"},{"value": "","key": "5217826183179546043","label": "CheckBox79","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5494030831401772440","label": "chkEnable","controlType": "checkbox","caption": "chkEnable" ,"DataBindingField" : "Res"},{"value": "","key": "4804405904545522683","label": "chkEnableBtn","controlType": "checkbox","caption": "chkEnableBtn" ,"DataBindingField" : "Res"},{"key": "4861667107116646382","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "5530768454771502173","label": "cmbMainSubject","value": "$سومی", "controlType": "dropdown","options":""},{"key": "4945194059781672514","label": "cmbReadyAnswer","value": "", "controlType": "dropdown","options":""},{"key": "4674183520383499921","label": "cmbStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5461781533024897420","label": "cmbUsers","value": "", "controlType": "dropdown","options":""},{"key": "5632517775665576963","label": "cmbWFStatus","value": "", "controlType": "dropdown","options":""},{"key":"5237446907459564521" , "dataSourceName":"dschkBothDates" , "controlType": "datasource",  "selectQuery" :"if {@prcFromDate} >= {@prcToDate} select cast(1 as bit) res else select cast(0 as bit) res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5458078811527254674" , "dataSourceName":"dsDoneTask" , "controlType": "datasource",  "selectQuery" :"" , "connectionName" :"" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5641455391768574097" , "dataSourceName":"dsEnable" , "controlType": "datasource",  "selectQuery" :"if {@txtSelectedWFID}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5621094784908548751" , "dataSourceName":"dsEnableBtn" , "controlType": "datasource",  "selectQuery" :"if {@txtDesc}=''''  select cast( 0 as bit) as Res else select cast( 1 as bit) as Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5608065563350752282" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetExpert_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5332918379506863424" , "dataSourceName":"dsGetLastMonth" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetLastMonthDate" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5061681583334321950" , "dataSourceName":"dsHistory" , "controlType": "datasource",  "selectQuery" :"SP_CU_SearchHistoryWF_ForSaoSupport" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetMainSubject_frm21041" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5710389612768430219" , "dataSourceName":"dsMandatory" , "controlType": "datasource",  "selectQuery" :"SP_CU_Mandatory_Frm31108" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5702593750632146706" , "dataSourceName":"dsSearchQuestionAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_advancedSearch_frm41608" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4915910715601269065" , "dataSourceName":"dsSelectAnswer" , "controlType": "datasource",  "selectQuery" :"SELECT TOP 1 Answer FROM Tbl_Cu_Base_SaoReadyAnswer WHERE ReadSaoAnswerID ={@cmbReadyAnswer} " , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4871665541454949817" , "dataSourceName":"dsSelectKey" , "controlType": "datasource",  "selectQuery" :"SELECT {@gdvQuestionAnswer.MultiSelectedItem} AS Ids" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4939650566442929498" , "dataSourceName":"dsSelectReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer_Frm31108" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5554416210975577959" , "dataSourceName":"dsSelectwfid" , "controlType": "datasource",  "selectQuery" :"exec Sp_Cu_GetSelectedWFID_SearchQustionAnswer {@gdvQuestionAnswer.MultiSelectedItem}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5555178140555476126" , "dataSourceName":"dsStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetWFStatus_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5507545221695674995" , "dataSourceName":"dsUsers" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetUsers_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5512409615792043579" , "dataSourceName":"dsWFStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetWFStepStatus_SearchQuestionAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5077739450199891529","label": "TextBox110","controlType": "textbox", "type": "" , "DataBindingField" : "Ids"},{"value": "","key": "5481516451968864003","label": "TextBox57","controlType": "textbox", "type": "" , "DataBindingField" : "ReturnValue"},{"value": "","key": "5441581822824964256","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : "Answer"},{"value": "","key": "5093936520403204420","label": "txtFollowUpCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5367381440050801974","label": "txtPersonName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5373575373096167126","label": "txtSelectedWFID","controlType": "textbox", "type": "" , "DataBindingField" : "WFID"},{"value": "","key": "4870872938434230307","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41608
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41608') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41608] ( [frm41608Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5093936520403204420]  [bigint] NULL , [Col_4870872938434230307]  [bigint] NULL , [Col_5530768454771502173]  [int] NULL , [Col_4674183520383499921]  [int] NULL , [Col_5535282148874238508]  [bit] NULL , [Col_5532716221540078605]  [nvarchar] ( 10) NULL , [Col_5018823071972296921]  [nvarchar] ( 10) NULL , [Col_5441581822824964256]  [nvarchar] ( 1000) NULL , [Col_5373575373096167126]  [nvarchar] ( 50) NULL , [Col_5077739450199891529]  [nvarchar] ( 50) NULL , [Col_5481516451968864003]  [nvarchar] ( 50) NULL , [Col_5461781533024897420]  [bigint] NULL , [Col_4945194059781672514]  [nvarchar] ( 50) NULL , [Col_5632517775665576963]  [int] NULL , [Col_4861667107116646382]  [bigint] NULL , [Col_5494030831401772440]  [bit] NULL , [Col_4804405904545522683]  [bit] NULL , [Col_5759209888664748611]  [nvarchar] ( 4000) NULL , [Col_5217826183179546043]  [bit] NULL , [Col_5367381440050801974]  [nvarchar] ( 100) NULL ,  PRIMARY KEY CLUSTERED ( [frm41608Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'frm41608Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD frm41608Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5093936520403204420' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5093936520403204420 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_4870872938434230307' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_4870872938434230307 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5530768454771502173' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5530768454771502173 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_4674183520383499921' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_4674183520383499921 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5535282148874238508' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5535282148874238508 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5532716221540078605' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5532716221540078605 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5018823071972296921' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5018823071972296921 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5441581822824964256' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5441581822824964256 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5373575373096167126' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5373575373096167126 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5077739450199891529' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5077739450199891529 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5481516451968864003' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5481516451968864003 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5461781533024897420' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5461781533024897420 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_4945194059781672514' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_4945194059781672514 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5632517775665576963' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5632517775665576963 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_4861667107116646382' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_4861667107116646382 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5494030831401772440' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5494030831401772440 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_4804405904545522683' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_4804405904545522683 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5759209888664748611' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5759209888664748611 nvarchar (4000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5217826183179546043' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5217826183179546043 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41608' AND COLUMN_NAME = 'Col_5367381440050801974' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41608] ADD Col_5367381440050801974 nvarchar (100) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41608]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41608
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41608] ( @PKFormId as bigint OUTPUT ,  @Col_5093936520403204420 AS bigint,  @Col_4870872938434230307 AS bigint,  @Col_5530768454771502173 AS int,  @Col_4674183520383499921 AS int,  @Col_5535282148874238508 AS bit,  @Col_5532716221540078605 AS nvarchar(10),  @Col_5018823071972296921 AS nvarchar(10),  @Col_5441581822824964256 AS nvarchar(1000),  @Col_5373575373096167126 AS nvarchar(50),  @Col_5077739450199891529 AS nvarchar(50),  @Col_5481516451968864003 AS nvarchar(50),  @Col_5461781533024897420 AS bigint,  @Col_4945194059781672514 AS nvarchar(50),  @Col_5632517775665576963 AS int,  @Col_4861667107116646382 AS bigint,  @Col_5494030831401772440 AS bit,  @Col_4804405904545522683 AS bit,  @Col_5759209888664748611 AS nvarchar(4000),  @Col_5217826183179546043 AS bit,  @Col_5367381440050801974 AS nvarchar(100) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41608](Col_5093936520403204420,Col_4870872938434230307,Col_5530768454771502173,Col_4674183520383499921,Col_5535282148874238508,Col_5532716221540078605,Col_5018823071972296921,Col_5441581822824964256,Col_5373575373096167126,Col_5077739450199891529,Col_5481516451968864003,Col_5461781533024897420,Col_4945194059781672514,Col_5632517775665576963,Col_4861667107116646382,Col_5494030831401772440,Col_4804405904545522683,Col_5759209888664748611,Col_5217826183179546043,Col_5367381440050801974) VALUES ( @Col_5093936520403204420,@Col_4870872938434230307,@Col_5530768454771502173,@Col_4674183520383499921,@Col_5535282148874238508,@Col_5532716221540078605,@Col_5018823071972296921,@Col_5441581822824964256,@Col_5373575373096167126,@Col_5077739450199891529,@Col_5481516451968864003,@Col_5461781533024897420,@Col_4945194059781672514,@Col_5632517775665576963,@Col_4861667107116646382,@Col_5494030831401772440,@Col_4804405904545522683,@Col_5759209888664748611,@Col_5217826183179546043,@Col_5367381440050801974 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41608]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41608
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41608] ( @PKFormId as bigint OUTPUT ,  @Col_5093936520403204420 AS bigint,  @Col_4870872938434230307 AS bigint,  @Col_5530768454771502173 AS int,  @Col_4674183520383499921 AS int,  @Col_5535282148874238508 AS bit,  @Col_5532716221540078605 AS nvarchar(10),  @Col_5018823071972296921 AS nvarchar(10),  @Col_5441581822824964256 AS nvarchar(1000),  @Col_5373575373096167126 AS nvarchar(50),  @Col_5077739450199891529 AS nvarchar(50),  @Col_5481516451968864003 AS nvarchar(50),  @Col_5461781533024897420 AS bigint,  @Col_4945194059781672514 AS nvarchar(50),  @Col_5632517775665576963 AS int,  @Col_4861667107116646382 AS bigint,  @Col_5494030831401772440 AS bit,  @Col_4804405904545522683 AS bit,  @Col_5759209888664748611 AS nvarchar(4000),  @Col_5217826183179546043 AS bit,  @Col_5367381440050801974 AS nvarchar(100) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41608] SET Col_5093936520403204420 =  @Col_5093936520403204420, Col_4870872938434230307 =  @Col_4870872938434230307, Col_5530768454771502173 =  @Col_5530768454771502173, Col_4674183520383499921 =  @Col_4674183520383499921, Col_5535282148874238508 =  @Col_5535282148874238508, Col_5532716221540078605 =  @Col_5532716221540078605, Col_5018823071972296921 =  @Col_5018823071972296921, Col_5441581822824964256 =  @Col_5441581822824964256, Col_5373575373096167126 =  @Col_5373575373096167126, Col_5077739450199891529 =  @Col_5077739450199891529, Col_5481516451968864003 =  @Col_5481516451968864003, Col_5461781533024897420 =  @Col_5461781533024897420, Col_4945194059781672514 =  @Col_4945194059781672514, Col_5632517775665576963 =  @Col_5632517775665576963, Col_4861667107116646382 =  @Col_4861667107116646382, Col_5494030831401772440 =  @Col_5494030831401772440, Col_4804405904545522683 =  @Col_4804405904545522683, Col_5759209888664748611 =  @Col_5759209888664748611, Col_5217826183179546043 =  @Col_5217826183179546043, Col_5367381440050801974 =  @Col_5367381440050801974 WHERE [frm41608Id] = @PKFormId 
 END 
GO
