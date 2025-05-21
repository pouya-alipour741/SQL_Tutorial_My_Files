GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 61368) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (61368, N'فرم جستجوی گروه ها',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="996" Height="558" Background="White">
  <Canvas Width="850" Height="540">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox14" Width="832" Height="524" Background="#FFB9D1EA" ControlID="4670642359466238996" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="805" Height="486.51666667" Background="#FFDEEFF7" ControlID="5009706687894718062" FontFamily="Tahoma" Canvas.Left="11" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzTextBox Name="txtUnitName" Width="192" Height="21" ControlID="5123708610100260599" Canvas.Left="522.35333333" Canvas.Top="8.0000000033332839" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="112" Height="23" ControlID="5169677499793795676" Canvas.Left="7.9999999999998872" Canvas.Top="9.4833333333334622" cm:Event="DataSource334" />
            <cm:tzLabel Name="Lable6" Content=":نام گروه" ControlID="5011533496168308055" FontFamily="Tahoma" Canvas.Left="723.35333333333335" Canvas.Top="4.5166666666668362" />
            <cm:tzDataGrid Name="GridView9" Width="776" Height="400.99999999666665" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5361372661660910646" ItemsSource="{Binding ElementName=DataSource334, Path=DataItems}" Canvas.Left="8" Canvas.Top="56.03333334" cm:BindingForm="DataSource334" cm:KeyField="GroupId">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowN" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowN">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowN}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupId" DecimalMark="False" HeaderText="GroupId" IsRowColorField="False" KeyField="True" SortMemberPath="GroupId">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupId}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="نام گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="DataSource334" Width="110" Height="25" ControlID="5027322851802332618" Canvas.Left="166" Canvas.Top="22.033333339999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetGroupsList{@txtUnitName}" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'2022/10/30 12:17:11', 'b3dd4b32-4938-4642-9dbd-9b006bbbc2ff', 0, N'', N'{"formID": "61368" ,"components": [{"key":"5027322851802332618" , "dataSourceName":"DataSource334" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetGroupsList{@txtUnitName}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5123708610100260599","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجوی گروه ها',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="996" Height="558" Background="White">
  <Canvas Width="850" Height="540">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox14" Width="832" Height="524" Background="#FFB9D1EA" ControlID="4670642359466238996" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox4" Width="805" Height="486.51666667" Background="#FFDEEFF7" ControlID="5009706687894718062" FontFamily="Tahoma" Canvas.Left="11" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzTextBox Name="txtUnitName" Width="192" Height="21" ControlID="5123708610100260599" Canvas.Left="522.35333333" Canvas.Top="8.0000000033332839" />
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="112" Height="23" ControlID="5169677499793795676" Canvas.Left="7.9999999999998872" Canvas.Top="9.4833333333334622" cm:Event="DataSource334" />
            <cm:tzLabel Name="Lable6" Content=":نام گروه" ControlID="5011533496168308055" FontFamily="Tahoma" Canvas.Left="723.35333333333335" Canvas.Top="4.5166666666668362" />
            <cm:tzDataGrid Name="GridView9" Width="776" Height="400.99999999666665" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5361372661660910646" ItemsSource="{Binding ElementName=DataSource334, Path=DataItems}" Canvas.Left="8" Canvas.Top="56.03333334" cm:BindingForm="DataSource334" cm:KeyField="GroupId">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowN" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowN">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowN}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupId" DecimalMark="False" HeaderText="GroupId" IsRowColorField="False" KeyField="True" SortMemberPath="GroupId">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupId}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="GroupName" DecimalMark="False" HeaderText="نام گروه" IsRowColorField="False" KeyField="False" SortMemberPath="GroupName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding GroupName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="DataSource334" Width="110" Height="25" ControlID="5027322851802332618" Canvas.Left="166" Canvas.Top="22.033333339999984" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetGroupsList{@txtUnitName}" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '2022/10/30 12:17:11', GUID = 'b3dd4b32-4938-4642-9dbd-9b006bbbc2ff', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "61368" ,"components": [{"key":"5027322851802332618" , "dataSourceName":"DataSource334" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetGroupsList{@txtUnitName}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5123708610100260599","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 61368
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm61368') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm61368] ( [frm61368Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5123708610100260599]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm61368Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm61368' AND COLUMN_NAME = 'frm61368Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm61368] ADD frm61368Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm61368' AND COLUMN_NAME = 'Col_5123708610100260599' )  BEGIN ALTER TABLE [dbo].[Tbl_frm61368] ADD Col_5123708610100260599 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm61368]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm61368
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm61368] ( @PKFormId as bigint OUTPUT ,  @Col_5123708610100260599 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm61368](Col_5123708610100260599) VALUES ( @Col_5123708610100260599 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm61368]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm61368
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm61368] ( @PKFormId as bigint OUTPUT ,  @Col_5123708610100260599 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm61368] SET Col_5123708610100260599 =  @Col_5123708610100260599 WHERE [frm61368Id] = @PKFormId 
 END 
GO
