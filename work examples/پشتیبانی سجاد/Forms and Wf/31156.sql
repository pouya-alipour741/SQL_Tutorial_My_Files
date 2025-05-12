GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 31156) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (31156, N'فرم اختصاص کارشناس به فرآیند',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="648" Height="219.03333333" Background="White">
  <Canvas Width="631" Height="195">
    <ViewLayouts>
      <ViewLayoutItem Name="Validation" ID="5425806690578622346" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4859872939690941709" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5112803002727450767" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4937072094850584485" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <cm:TzGroupBox Name="GroupBox3" Width="612" Height="179" Background="#FF06427F" ControlID="5115775193232973089" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox5" Width="580" Height="135.51666667" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4961759523186524548" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable21" Content=":نام فرآیند" ControlID="5475690013917889538" Canvas.Left="479.51619729000004" Canvas.Top="8.8638027099999039" />
            <cm:tzLookUpComboBox Name="cmbWFID" Width="470.51619729" Height="22" ControlID="5112803002727450767" Canvas.Left="8" Canvas.Top="10.999999999999544" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsWFID" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="WFID" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
            <cm:tzLabel Name="Lable25" Content=":نام کارشناس" ControlID="5195166954788789194" Canvas.Left="480.31333333333333" Canvas.Top="47.550000003333267" />
            <cm:tzLookUpComboBox Name="cmbExpert" Width="198.47475736000021" Height="22" ControlID="4859872939690941709" Canvas.Left="280.04143992999985" Canvas.Top="50.0333333366666" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="ExpertID" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable33" Content="*" ControlID="4744339134267162912" Foreground="#FFFF0000" Canvas.Left="529.89619729000015" Canvas.Top="2.4833333266667523" />
            <cm:tzLabel Name="Lable34" Content="*" Width="NaN" Height="NaN" Foreground="#FFFF0000" Canvas.Left="550.652863956667" Canvas.Top="39.550000003333253" cm:ControlID="4735329544759011312" />
            <cm:tzDataSource Name="dsWFID" Content="dsWFID" Width="101.5866666699996" Height="25" ControlID="4791881557067791466" Canvas.Left="301.1888862400005" Canvas.Top="1.9666666600000866" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetMainSubject_frm21041_NewOne">
              <cm:tzDataSource.StoredProcedureParameterValue />
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="101.5866666699998" Height="25" ControlID="5460422165219829414" Canvas.Left="301.18888624000022" Canvas.Top="47.033333336666608" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_cu_GetExpertName_Frm31156" />
            <cm:tzLabel Name="Lable12" Content=":کارشناس IT" Width="NaN" ControlID="4684024455488585376" FontFamily="Tahoma" Canvas.Left="482.82666666666671" Canvas.Top="81.550000003333338" />
            <cm:tzLabel Name="Lable48" Content="*" Width="NaN" Height="22.999999996666695" ControlID="5581806089112156181" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="547.69333333333327" Canvas.Top="73.0333333366666" />
            <cm:tzLookUpComboBox Name="ComboBox49" Width="201.78522673666672" Height="22" ControlID="4937072094850584485" Canvas.Left="280.04143993" Canvas.Top="84.03333334" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="ITExpertID" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'2025/02/09 15:53:21', '497f98cc-4159-4898-ae42-0ce883b4f1f2', 1, N'', N'{"formID": "31156" ,"components": [{"key": "4859872939690941709","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "5112803002727450767","label": "cmbWFID","value": "", "controlType": "dropdown","options":""},{"key": "4937072094850584485","label": "ComboBox49","value": "", "controlType": "dropdown","options":""},{"key":"5460422165219829414" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_cu_GetExpertName_Frm31156" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsWFID" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetMainSubject_frm21041_NewOne" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[{"layoutID": "5425806690578622346","data": [{"key": "4859872939690941709","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5112803002727450767","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4937072094850584485","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم اختصاص کارشناس به فرآیند',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="648" Height="219.03333333" Background="White">
  <Canvas Width="631" Height="195">
    <ViewLayouts>
      <ViewLayoutItem Name="Validation" ID="5425806690578622346" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="4859872939690941709" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5112803002727450767" InVisible="false" Disable="false" Mandatory="true" Color="" />
        <ViewLayoutBehaviorItem ComponentID="4937072094850584485" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <cm:TzGroupBox Name="GroupBox3" Width="612" Height="179" Background="#FF06427F" ControlID="5115775193232973089" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox5" Width="580" Height="135.51666667" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4961759523186524548" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzLabel Name="Lable21" Content=":نام فرآیند" ControlID="5475690013917889538" Canvas.Left="479.51619729000004" Canvas.Top="8.8638027099999039" />
            <cm:tzLookUpComboBox Name="cmbWFID" Width="470.51619729" Height="22" ControlID="5112803002727450767" Canvas.Left="8" Canvas.Top="10.999999999999544" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsWFID" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="WFID" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
            <cm:tzLabel Name="Lable25" Content=":نام کارشناس" ControlID="5195166954788789194" Canvas.Left="480.31333333333333" Canvas.Top="47.550000003333267" />
            <cm:tzLookUpComboBox Name="cmbExpert" Width="198.47475736000021" Height="22" ControlID="4859872939690941709" Canvas.Left="280.04143992999985" Canvas.Top="50.0333333366666" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="ExpertID" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
            <cm:tzLabel Name="Lable33" Content="*" ControlID="4744339134267162912" Foreground="#FFFF0000" Canvas.Left="529.89619729000015" Canvas.Top="2.4833333266667523" />
            <cm:tzLabel Name="Lable34" Content="*" Width="NaN" Height="NaN" Foreground="#FFFF0000" Canvas.Left="550.652863956667" Canvas.Top="39.550000003333253" cm:ControlID="4735329544759011312" />
            <cm:tzDataSource Name="dsWFID" Content="dsWFID" Width="101.5866666699996" Height="25" ControlID="4791881557067791466" Canvas.Left="301.1888862400005" Canvas.Top="1.9666666600000866" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_GetMainSubject_frm21041_NewOne">
              <cm:tzDataSource.StoredProcedureParameterValue />
            </cm:tzDataSource>
            <cm:tzDataSource Name="dsExpert" Content="dsExpert" Width="101.5866666699998" Height="25" ControlID="5460422165219829414" Canvas.Left="301.18888624000022" Canvas.Top="47.033333336666608" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_cu_GetExpertName_Frm31156" />
            <cm:tzLabel Name="Lable12" Content=":کارشناس IT" Width="NaN" ControlID="4684024455488585376" FontFamily="Tahoma" Canvas.Left="482.82666666666671" Canvas.Top="81.550000003333338" />
            <cm:tzLabel Name="Lable48" Content="*" Width="NaN" Height="22.999999996666695" ControlID="5581806089112156181" FontFamily="Tahoma" Foreground="#FFFF0000" Canvas.Left="547.69333333333327" Canvas.Top="73.0333333366666" />
            <cm:tzLookUpComboBox Name="ComboBox49" Width="201.78522673666672" Height="22" ControlID="4937072094850584485" Canvas.Left="280.04143993" Canvas.Top="84.03333334" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsExpert" cm:DataType="BigInt" cm:Persistable="True" cm:PersistFieldName="ITExpertID" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '2025/02/09 15:53:21', GUID = '497f98cc-4159-4898-ae42-0ce883b4f1f2', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "31156" ,"components": [{"key": "4859872939690941709","label": "cmbExpert","value": "", "controlType": "dropdown","options":""},{"key": "5112803002727450767","label": "cmbWFID","value": "", "controlType": "dropdown","options":""},{"key": "4937072094850584485","label": "ComboBox49","value": "", "controlType": "dropdown","options":""},{"key":"5460422165219829414" , "dataSourceName":"dsExpert" , "controlType": "datasource",  "selectQuery" :"Sp_cu_GetExpertName_Frm31156" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsWFID" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_GetMainSubject_frm21041_NewOne" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[{"layoutID": "5425806690578622346","data": [{"key": "4859872939690941709","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "5112803002727450767","color": "","invisible": false,"mandatory": true,"disable": false },{"key": "4937072094850584485","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',DefaultCulture = NULL  WHERE FormId = 31156
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm31156') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm31156] ( [frm31156Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5112803002727450767]  [bigint] NULL , [Col_4859872939690941709]  [bigint] NULL , [Col_4937072094850584485]  [bigint] NULL ,  PRIMARY KEY CLUSTERED ( [frm31156Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31156' AND COLUMN_NAME = 'frm31156Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31156] ADD frm31156Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31156' AND COLUMN_NAME = 'Col_5112803002727450767' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31156] ADD Col_5112803002727450767 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31156' AND COLUMN_NAME = 'Col_4859872939690941709' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31156] ADD Col_4859872939690941709 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm31156' AND COLUMN_NAME = 'Col_4937072094850584485' )  BEGIN ALTER TABLE [dbo].[Tbl_frm31156] ADD Col_4937072094850584485 bigint NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm31156]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm31156
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm31156] ( @PKFormId as bigint OUTPUT ,  @Col_5112803002727450767 AS bigint,  @Col_4859872939690941709 AS bigint,  @Col_4937072094850584485 AS bigint ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm31156](Col_5112803002727450767,Col_4859872939690941709,Col_4937072094850584485) VALUES ( @Col_5112803002727450767,@Col_4859872939690941709,@Col_4937072094850584485 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm31156]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm31156
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm31156] ( @PKFormId as bigint OUTPUT ,  @Col_5112803002727450767 AS bigint,  @Col_4859872939690941709 AS bigint,  @Col_4937072094850584485 AS bigint ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm31156] SET Col_5112803002727450767 =  @Col_5112803002727450767, Col_4859872939690941709 =  @Col_4859872939690941709, Col_4937072094850584485 =  @Col_4937072094850584485 WHERE [frm31156Id] = @PKFormId 
 END 
GO
