GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 167) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (167, N'مقدار فیلد، فرم پایه میز خدمت',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="486" Height="156.51666667" Background="White">
  <Canvas Width="470" Height="134">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5208074764466257689</ID>
        <Name>FieldSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="452" Height="118" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="317.31491901" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="12.685080990000017" Canvas.Top="3.0000000000000071" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldValueTitle" />
        <cm:tzLabel Name="Lable22" Content=": مقدار فیلد" Width="73" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="331" Canvas.Top="10" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="404.99999999999989" Canvas.Top="8.5166666666666657" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="48" Height="20" ControlID="5311532526222471050" Canvas.Left="8" Canvas.Top="75.51666667" cm:Persistable="True" cm:PersistFieldName="FieldValueStatus" />
        <cm:TZCheckBox Name="CheckBox10" Content="TZCheckBox" Width="72.999999999999886" Height="20" ControlID="5498060376822854236" Canvas.Left="348.55" Canvas.Top="42.516666666666652" cm:FCVCol="" cm:FECol="" cm:FMCol="5530358577123631354#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZLookUp Name="LookUp10" Width="24" Height="27" ControlID="5122433899833170712" Canvas.Left="234" Canvas.Top="61.516666666666652" cm:Event="dsGetFieldManager,dsGetFieldManagerID">
          <cm:TZLookUp.LoadFormValue>
            <cm:TZLookupLoadFromBrowse DataGridId="5361372661660910646" DisplayMemberColumn="GroupName" FormID="61368" ValueMemberColumn="GroupId" />
          </cm:TZLookUp.LoadFormValue>
        </cm:TZLookUp>
        <cm:tzLabel Name="Lable11" Content="انتخاب مدیر رشته" Width="120" Height="23" ControlID="4817328853239371902" FontFamily="Tahoma" Canvas.Left="259" Canvas.Top="65.516666666666652" />
        <cm:tzTextBox Name="txtGetFieldManagerID" Width="45" Height="21" ControlID="5029715466567570451" Canvas.Left="66" Canvas.Top="37.51666667" cm:DataBinding="dsGetFieldManagerID" cm:DataBindingField="Column1" cm:DataType="Int" cm:Event="dsGetFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldManager" />
        <cm:tzDataSource Name="dsGetFieldManager" Content="dsGetFieldManager" Width="50" Height="25" ControlID="5014278474740030518" Canvas.Left="120" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getFieldManagerData_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetFieldManagerID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtGetFieldManagerID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:tzDataSource Name="dschkFieldManager" Content="dschkFieldManager" Width="42" Height="25" ControlID="5578118376669451994" Canvas.Left="14" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_FieldSubjectID_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFieldSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtFieldSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkFieldManager" Content="TZCheckBox" Width="25" Height="20" ControlID="5734247887345621330" Canvas.Left="66" Canvas.Top="13" cm:DataBinding="dschkFieldManager" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5122433899833170712#4817328853239371902#5128007556070461169#" />
        <cm:tzTextBox Name="txtFieldManagerName" Width="133" Height="21" ControlID="5128007556070461169" Canvas.Left="92" Canvas.Top="67.51666667" cm:DataBinding="dsGetFieldManager" cm:DataBindingField="FieldManager" cm:IsEnableItem="False" />
        <cm:tzDataSource Name="dsGetFieldManagerID" Content="dsGetFieldManagerID" Width="39" Height="25" ControlID="4622854982852984547" Canvas.Left="17" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp10}" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:tzDataSource Name="dsFieldSubjectID" Content="dsFieldSubjectID" Width="114" Height="25" ControlID="5105092485177545999" Canvas.Left="23" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {$FieldSubjectID} as FieldSubjectID" />
    <cm:tzTextBox Name="txtFieldSubjectID" Width="41.900000000000034" Height="21" ControlID="4936603042106904042" Canvas.Left="138" Canvas.Top="4" cm:DataBinding="dsFieldSubjectID" cm:DataBindingField="FieldSubjectID" cm:DataType="Int" cm:DefaultValue="@@FieldSubjectID" cm:Event="dschkFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldSubjectID" />
  </Canvas>
</cm:TZBaseControl>',1,'2025/05/04 11:23:11', 'e4edc534-f746-436b-8896-e77cac9a64a7', 1, N'', N'{"formID": "167" ,"components": [{"value": "","key": "5498060376822854236","label": "CheckBox10","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5734247887345621330","label": "chkFieldManager","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5311532526222471050","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5578118376669451994" , "dataSourceName":"dschkFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_FieldSubjectID_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5105092485177545999" , "dataSourceName":"dsFieldSubjectID" , "controlType": "datasource",  "selectQuery" :"select {$FieldSubjectID} as FieldSubjectID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5014278474740030518" , "dataSourceName":"dsGetFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_getFieldManagerData_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4622854982852984547" , "dataSourceName":"dsGetFieldManagerID" , "controlType": "datasource",  "selectQuery" :"select {@LookUp10}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5128007556070461169","label": "txtFieldManagerName","controlType": "textbox", "type": "" , "DataBindingField" : "FieldManager"},{"value": "@@FieldSubjectID","key": "4936603042106904042","label": "txtFieldSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : "FieldSubjectID"},{"value": "","key": "5029715466567570451","label": "txtGetFieldManagerID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'مقدار فیلد، فرم پایه میز خدمت',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="486" Height="156.51666667" Background="White">
  <Canvas Width="470" Height="134">
    <ViewLayouts />
    <Parameters xmlns="">
      <Parameter>
        <ID>5208074764466257689</ID>
        <Name>FieldSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="452" Height="118" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="317.31491901" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="12.685080990000017" Canvas.Top="3.0000000000000071" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldValueTitle" />
        <cm:tzLabel Name="Lable22" Content=": مقدار فیلد" Width="73" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="331" Canvas.Top="10" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="404.99999999999989" Canvas.Top="8.5166666666666657" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:TZCheckBox Name="chkStatus" Content="فعال" Width="48" Height="20" ControlID="5311532526222471050" Canvas.Left="8" Canvas.Top="75.51666667" cm:Persistable="True" cm:PersistFieldName="FieldValueStatus" />
        <cm:TZCheckBox Name="CheckBox10" Content="TZCheckBox" Width="72.999999999999886" Height="20" ControlID="5498060376822854236" Canvas.Left="348.55" Canvas.Top="42.516666666666652" cm:FCVCol="" cm:FECol="" cm:FMCol="5530358577123631354#" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZLookUp Name="LookUp10" Width="24" Height="27" ControlID="5122433899833170712" Canvas.Left="234" Canvas.Top="61.516666666666652" cm:Event="dsGetFieldManager,dsGetFieldManagerID">
          <cm:TZLookUp.LoadFormValue>
            <cm:TZLookupLoadFromBrowse DataGridId="5361372661660910646" DisplayMemberColumn="GroupName" FormID="61368" ValueMemberColumn="GroupId" />
          </cm:TZLookUp.LoadFormValue>
        </cm:TZLookUp>
        <cm:tzLabel Name="Lable11" Content="انتخاب مدیر رشته" Width="120" Height="23" ControlID="4817328853239371902" FontFamily="Tahoma" Canvas.Left="259" Canvas.Top="65.516666666666652" />
        <cm:tzTextBox Name="txtGetFieldManagerID" Width="45" Height="21" ControlID="5029715466567570451" Canvas.Left="66" Canvas.Top="37.51666667" cm:DataBinding="dsGetFieldManagerID" cm:DataBindingField="Column1" cm:DataType="Int" cm:Event="dsGetFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldManager" />
        <cm:tzDataSource Name="dsGetFieldManager" Content="dsGetFieldManager" Width="50" Height="25" ControlID="5014278474740030518" Canvas.Left="120" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_getFieldManagerData_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtGetFieldManagerID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtGetFieldManagerID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:tzDataSource Name="dschkFieldManager" Content="dschkFieldManager" Width="42" Height="25" ControlID="5578118376669451994" Canvas.Left="14" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_check_FieldSubjectID_frm167">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFieldSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @txtFieldSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZCheckBox Name="chkFieldManager" Content="TZCheckBox" Width="25" Height="20" ControlID="5734247887345621330" Canvas.Left="66" Canvas.Top="13" cm:DataBinding="dschkFieldManager" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5122433899833170712#4817328853239371902#5128007556070461169#" />
        <cm:tzTextBox Name="txtFieldManagerName" Width="133" Height="21" ControlID="5128007556070461169" Canvas.Left="92" Canvas.Top="67.51666667" cm:DataBinding="dsGetFieldManager" cm:DataBindingField="FieldManager" cm:IsEnableItem="False" />
        <cm:tzDataSource Name="dsGetFieldManagerID" Content="dsGetFieldManagerID" Width="39" Height="25" ControlID="4622854982852984547" Canvas.Left="17" Canvas.Top="33.516666670000006" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@LookUp10}" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:tzDataSource Name="dsFieldSubjectID" Content="dsFieldSubjectID" Width="114" Height="25" ControlID="5105092485177545999" Canvas.Left="23" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {$FieldSubjectID} as FieldSubjectID" />
    <cm:tzTextBox Name="txtFieldSubjectID" Width="41.900000000000034" Height="21" ControlID="4936603042106904042" Canvas.Left="138" Canvas.Top="4" cm:DataBinding="dsFieldSubjectID" cm:DataBindingField="FieldSubjectID" cm:DataType="Int" cm:DefaultValue="@@FieldSubjectID" cm:Event="dschkFieldManager" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="FieldSubjectID" />
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/05/04 11:23:11', GUID = 'e4edc534-f746-436b-8896-e77cac9a64a7', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "167" ,"components": [{"value": "","key": "5498060376822854236","label": "CheckBox10","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : ""},{"value": "","key": "5734247887345621330","label": "chkFieldManager","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5311532526222471050","label": "chkStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"key":"5578118376669451994" , "dataSourceName":"dschkFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_check_FieldSubjectID_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5105092485177545999" , "dataSourceName":"dsFieldSubjectID" , "controlType": "datasource",  "selectQuery" :"select {$FieldSubjectID} as FieldSubjectID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5014278474740030518" , "dataSourceName":"dsGetFieldManager" , "controlType": "datasource",  "selectQuery" :"sp_cu_getFieldManagerData_frm167" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4622854982852984547" , "dataSourceName":"dsGetFieldManagerID" , "controlType": "datasource",  "selectQuery" :"select {@LookUp10}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5128007556070461169","label": "txtFieldManagerName","controlType": "textbox", "type": "" , "DataBindingField" : "FieldManager"},{"value": "@@FieldSubjectID","key": "4936603042106904042","label": "txtFieldSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : "FieldSubjectID"},{"value": "","key": "5029715466567570451","label": "txtGetFieldManagerID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 167
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm167') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm167] ( [frm167Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5530358577123631354]  [nvarchar] ( 50) NULL , [Col_4936603042106904042]  [int] NULL , [Col_5311532526222471050]  [bit] NULL , [Col_5498060376822854236]  [bit] NULL , [Col_5029715466567570451]  [int] NULL , [Col_5122433899833170712]  [nvarchar] ( 50) NULL , [Col_5734247887345621330]  [bit] NULL , [Col_5128007556070461169]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm167Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'frm167Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD frm167Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5530358577123631354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5530358577123631354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_4936603042106904042' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_4936603042106904042 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5311532526222471050' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5311532526222471050 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5498060376822854236' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5498060376822854236 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5029715466567570451' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5029715466567570451 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5122433899833170712' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5122433899833170712 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5734247887345621330' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5734247887345621330 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm167' AND COLUMN_NAME = 'Col_5128007556070461169' )  BEGIN ALTER TABLE [dbo].[Tbl_frm167] ADD Col_5128007556070461169 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm167]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm167
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm167] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_4936603042106904042 AS int,  @Col_5311532526222471050 AS bit,  @Col_5498060376822854236 AS bit,  @Col_5029715466567570451 AS int,  @Col_5122433899833170712 AS nvarchar(50),  @Col_5734247887345621330 AS bit,  @Col_5128007556070461169 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm167](Col_5530358577123631354,Col_4936603042106904042,Col_5311532526222471050,Col_5498060376822854236,Col_5029715466567570451,Col_5122433899833170712,Col_5734247887345621330,Col_5128007556070461169) VALUES ( @Col_5530358577123631354,@Col_4936603042106904042,@Col_5311532526222471050,@Col_5498060376822854236,@Col_5029715466567570451,@Col_5122433899833170712,@Col_5734247887345621330,@Col_5128007556070461169 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm167]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm167
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm167] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_4936603042106904042 AS int,  @Col_5311532526222471050 AS bit,  @Col_5498060376822854236 AS bit,  @Col_5029715466567570451 AS int,  @Col_5122433899833170712 AS nvarchar(50),  @Col_5734247887345621330 AS bit,  @Col_5128007556070461169 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm167] SET Col_5530358577123631354 =  @Col_5530358577123631354, Col_4936603042106904042 =  @Col_4936603042106904042, Col_5311532526222471050 =  @Col_5311532526222471050, Col_5498060376822854236 =  @Col_5498060376822854236, Col_5029715466567570451 =  @Col_5029715466567570451, Col_5122433899833170712 =  @Col_5122433899833170712, Col_5734247887345621330 =  @Col_5734247887345621330, Col_5128007556070461169 =  @Col_5128007556070461169 WHERE [frm167Id] = @PKFormId 
 END 
GO
