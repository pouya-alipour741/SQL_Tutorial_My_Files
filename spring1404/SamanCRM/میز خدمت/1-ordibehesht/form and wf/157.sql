GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 157) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (157, N'عنوان فیلد، فرم پایه میزخدمت',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="557" Height="444.51666667" Background="White">
  <Canvas Width="527" Height="411">
    <ViewLayouts>
      <ViewLayoutItem Name="Level" ID="5059001035720893695" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5530358577123631354" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5453549928951067083" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5442082000093336424</ID>
        <Name>انتخاب موارد</Name>
        <Condition>({@rbdSelect.Value} ==False) &amp;&amp; ({@rbdInsert.Value} ==False) &amp;&amp; ({@rbnMultipleValues.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد درج مقدار و یا انتخاب مقدار را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5065436089235651340</ComponentID>
            <ComponentName>rbdSelect</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4705603962651070935</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5666931910765771489</ComponentID>
            <ComponentName>rbdInsert</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4703299706038674248</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5346833366684472117</ComponentID>
            <ComponentName>rbnMultipleValues</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5532955170920569472</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <Parameters xmlns="">
      <Parameter>
        <ID>5139585027852526723</ID>
        <Name>RequestSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="507" Height="390" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="377" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="11" cm:DataBinding="dsRequestSubjectTitle" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="False" cm:PersistFieldName="" />
        <cm:TZCheckBox Name="chkFieldSubjectStatus" Content="فعال" ControlID="4631380345481091183" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="345.41832663218179" cm:Persistable="True" cm:PersistFieldName="FieldSubjectStatus" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="454.44999999999982" Canvas.Top="75.033333336666715" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:tzTextBox Name="txtFieldSubjectTitle" Width="377" Height="56.51666667" ControlID="5453549928951067083" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="76.51666667" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldSubjectTitle" />
        <cm:tzLabel Name="Lable22" Content=": عنوان درخواست" Width="101.00000000000011" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="390.68508098999985" Canvas.Top="11" />
        <cm:tzLabel Name="Lable16" Content=": عنوان فیلد" Width="73" Height="23" ControlID="5761533605482795109" Canvas.Left="389.99999999999989" Canvas.Top="76.516666670000063" />
        <cm:tzTextBox Name="txtRequestSubjectID" Width="120" Height="21" ControlID="4936603042106904042" Canvas.Left="270.45000000000005" Canvas.Top="-20" cm:DataType="Int" cm:DefaultValue="@@RequestSubjectID" cm:Event="dsRequestSubjectTitle" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="RequestSubjectID" />
        <cm:tzDataSource Name="dsRequestSubjectTitle" Content="dsRequestSubjectTitle" Width="110" Height="25" ControlID="5054598222947842242" Canvas.Left="146.5" Canvas.Top="-16" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_RequestSubjectFromID">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtRequestSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZRadioButton Name="rbdSelect" Content="انتخاب مقدار " Width="89" Height="20" ControlID="5065436089235651340" Canvas.Left="180.45000000000005" Canvas.Top="193.27499999999998" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="SelectInfo" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZRadioButton Name="rbdInsert" Content="درج مقدار " Width="68.5" Height="20" ControlID="5666931910765771489" Canvas.Left="316.5" Canvas.Top="193.27499999999998" cm:FCVCol="5563866477445515075#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="InsertInfo" cm:TCVCol="" cm:TECol="5563866477445515075#" cm:TMCol="5563866477445515075#" cm:TVCol="" />
        <cm:TZCheckBox Name="chkNeedCertificate" Content="نیاز به بارگذاری مدارک دارد" Width="157" Height="20" ControlID="4740390536430109348" FontFamily="Tahoma" Canvas.Left="228" Canvas.Top="296.41832663218179" cm:Persistable="True" cm:PersistFieldName="IsNeedCertificate" />
        <cm:TZCheckBox Name="CheckBox17" Content="درج مقدار اجباری است" Width="140" Height="20" FontFamily="Tahoma" Canvas.Left="245" Canvas.Top="325.41832663218179" cm:ControlID="4987677476929642357" cm:Persistable="True" cm:PersistFieldName="IsMandatory" />
        <cm:tzLabel Name="Lable17" Content=":ترتیب نمایش" ControlID="5009320401017148531" FontFamily="Tahoma" Canvas.Left="386" Canvas.Top="142.03333334" />
        <cm:tzTextBox Name="txtOrder" Width="377" Height="21" ControlID="5169866949778765461" Canvas.Left="8" Canvas.Top="145.51666667" cm:DataType="Int" cm:Persistable="True" cm:PersistFieldName="Ordering" />
        <cm:tzLabel Name="Lable24" Content=":نوع آیتم" ControlID="5288933373307422712" FontFamily="Tahoma" Canvas.Left="386" Canvas.Top="239.77499999666668" />
        <cm:tzLookUpComboBox Name="ComboBox26" Width="377" Height="22" ControlID="5563866477445515075" Canvas.Left="8" Canvas.Top="242.25833333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsItemType" cm:DataType="Int" cm:Persistable="True" cm:PersistFieldName="ItemType" cm:tzDisplayItem="ItemTypeTitle" cm:tzValueItem="ItemTypeID" />
        <cm:tzDataSource Name="dsItemType" Content="dsItemType" Width="110" Height="25" ControlID="4879913309372921014" Canvas.Left="181" Canvas.Top="234.25833333000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_GetItemType " />
        <cm:TZRadioButton Name="rbnMultipleValues" Content="انتخاب چند مقداری" Canvas.Left="8" Canvas.Top="193.27499999999998" cm:ControlID="5346833366684472117" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="rbnMultipleValues" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chkNeedManager" Content="نیاز به تایید مدیر رشته دارد؟" Width="161" Height="20" ControlID="5484655546310576101" FontFamily="Tahoma" Canvas.Left="36.96842106" Canvas.Top="296.41832663" cm:Persistable="True" cm:PersistFieldName="NeedManagerConfirmation" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'2025/05/19 14:56:21', '04a34223-ecd6-447b-be03-0e4213957420', 1, N'', N'{"formID": "157" ,"components": [{"value": "","key": "4987677476929642357","label": "CheckBox17","controlType": "checkbox","caption": "درج مقدار اجباری است" ,"DataBindingField" : ""},{"value": "","key": "4631380345481091183","label": "chkFieldSubjectStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "4740390536430109348","label": "chkNeedCertificate","controlType": "checkbox","caption": "نیاز به بارگذاری مدارک دارد" ,"DataBindingField" : ""},{"value": "","key": "5484655546310576101","label": "chkNeedManager","controlType": "checkbox","caption": "نیاز به تایید مدیر رشته دارد؟" ,"DataBindingField" : ""},{"key": "5563866477445515075","label": "ComboBox26","value": "", "controlType": "dropdown","options":""},{"key":"4879913309372921014" , "dataSourceName":"dsItemType" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_GetItemType " , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5054598222947842242" , "dataSourceName":"dsRequestSubjectTitle" , "controlType": "datasource",  "selectQuery" :"Sp_CU_RequestSubjectFromID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5453549928951067083","label": "txtFieldSubjectTitle","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5169866949778765461","label": "txtOrder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "@@RequestSubjectID","key": "4936603042106904042","label": "txtRequestSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5059001035720893695","data": [{"key": "5530358577123631354","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5453549928951067083","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'عنوان فیلد، فرم پایه میزخدمت',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="557" Height="444.51666667" Background="White">
  <Canvas Width="527" Height="411">
    <ViewLayouts>
      <ViewLayoutItem Name="Level" ID="5059001035720893695" Desc="" xmlns="">
        <ViewLayoutBehaviorItem ComponentID="5530358577123631354" InVisible="false" Disable="true" Mandatory="false" Color="" />
        <ViewLayoutBehaviorItem ComponentID="5453549928951067083" InVisible="false" Disable="false" Mandatory="true" Color="" />
      </ViewLayoutItem>
    </ViewLayouts>
    <Validations xmlns="">
      <Validation>
        <ID>5442082000093336424</ID>
        <Name>انتخاب موارد</Name>
        <Condition>({@rbdSelect.Value} ==False) &amp;&amp; ({@rbdInsert.Value} ==False) &amp;&amp; ({@rbnMultipleValues.Value} ==False)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا یکی از موارد درج مقدار و یا انتخاب مقدار را انتخاب نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5065436089235651340</ComponentID>
            <ComponentName>rbdSelect</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4705603962651070935</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5666931910765771489</ComponentID>
            <ComponentName>rbdInsert</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4703299706038674248</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5346833366684472117</ComponentID>
            <ComponentName>rbnMultipleValues</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5532955170920569472</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>False</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <Parameters xmlns="">
      <Parameter>
        <ID>5139585027852526723</ID>
        <Name>RequestSubjectID</Name>
        <Value />
        <ParameterType>Int</ParameterType>
        <Description></Description>
        <DefaultValue></DefaultValue>
      </Parameter>
    </Parameters>
    <cm:TzGroupBox Name="GroupBox2" Width="507" Height="390" Background="#FFB9D1EA" ControlID="5243011969742820533" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:tzTextBox Name="txtDescription" Width="377" Height="56.51666667" ControlID="5530358577123631354" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="11" cm:DataBinding="dsRequestSubjectTitle" cm:DataBindingField="RequestSubjectName" cm:Event="dsCheckReapetableValue" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="False" cm:PersistFieldName="" />
        <cm:TZCheckBox Name="chkFieldSubjectStatus" Content="فعال" ControlID="4631380345481091183" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="345.41832663218179" cm:Persistable="True" cm:PersistFieldName="FieldSubjectStatus" />
        <cm:tzLabel Name="Lable8" Content="*" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="454.44999999999982" Canvas.Top="75.033333336666715" cm:ControlID="5159767072841430964" cm:ForeColor="#FFFF0000" />
        <cm:tzTextBox Name="txtFieldSubjectTitle" Width="377" Height="56.51666667" ControlID="5453549928951067083" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" Canvas.Left="8" Canvas.Top="76.51666667" cm:IsMulitiLine="True" cm:Len="50" cm:Persistable="True" cm:PersistFieldName="FieldSubjectTitle" />
        <cm:tzLabel Name="Lable22" Content=": عنوان درخواست" Width="101.00000000000011" Height="23" ControlID="4621438556877806796" FontFamily="Tahoma" Canvas.Left="390.68508098999985" Canvas.Top="11" />
        <cm:tzLabel Name="Lable16" Content=": عنوان فیلد" Width="73" Height="23" ControlID="5761533605482795109" Canvas.Left="389.99999999999989" Canvas.Top="76.516666670000063" />
        <cm:tzTextBox Name="txtRequestSubjectID" Width="120" Height="21" ControlID="4936603042106904042" Canvas.Left="270.45000000000005" Canvas.Top="-20" cm:DataType="Int" cm:DefaultValue="@@RequestSubjectID" cm:Event="dsRequestSubjectTitle" cm:IsVisibleItem="False" cm:Persistable="True" cm:PersistFieldName="RequestSubjectID" />
        <cm:tzDataSource Name="dsRequestSubjectTitle" Content="dsRequestSubjectTitle" Width="110" Height="25" ControlID="5054598222947842242" Canvas.Left="146.5" Canvas.Top="-16" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_CU_RequestSubjectFromID">
          <cm:tzDataSource.StoredProcedureParameterValue>
            <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtRequestSubjectID}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestSubjectID" />
          </cm:tzDataSource.StoredProcedureParameterValue>
        </cm:tzDataSource>
        <cm:TZRadioButton Name="rbdSelect" Content="انتخاب مقدار " Width="89" Height="20" ControlID="5065436089235651340" Canvas.Left="180.45000000000005" Canvas.Top="193.27499999999998" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="SelectInfo" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZRadioButton Name="rbdInsert" Content="درج مقدار " Width="68.5" Height="20" ControlID="5666931910765771489" Canvas.Left="316.5" Canvas.Top="193.27499999999998" cm:FCVCol="5563866477445515075#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="InsertInfo" cm:TCVCol="" cm:TECol="5563866477445515075#" cm:TMCol="5563866477445515075#" cm:TVCol="" />
        <cm:TZCheckBox Name="chkNeedCertificate" Content="نیاز به بارگذاری مدارک دارد" Width="157" Height="20" ControlID="4740390536430109348" FontFamily="Tahoma" Canvas.Left="228" Canvas.Top="296.41832663218179" cm:Persistable="True" cm:PersistFieldName="IsNeedCertificate" />
        <cm:TZCheckBox Name="CheckBox17" Content="درج مقدار اجباری است" Width="140" Height="20" FontFamily="Tahoma" Canvas.Left="245" Canvas.Top="325.41832663218179" cm:ControlID="4987677476929642357" cm:Persistable="True" cm:PersistFieldName="IsMandatory" />
        <cm:tzLabel Name="Lable17" Content=":ترتیب نمایش" ControlID="5009320401017148531" FontFamily="Tahoma" Canvas.Left="386" Canvas.Top="142.03333334" />
        <cm:tzTextBox Name="txtOrder" Width="377" Height="21" ControlID="5169866949778765461" Canvas.Left="8" Canvas.Top="145.51666667" cm:DataType="Int" cm:Persistable="True" cm:PersistFieldName="Ordering" />
        <cm:tzLabel Name="Lable24" Content=":نوع آیتم" ControlID="5288933373307422712" FontFamily="Tahoma" Canvas.Left="386" Canvas.Top="239.77499999666668" />
        <cm:tzLookUpComboBox Name="ComboBox26" Width="377" Height="22" ControlID="5563866477445515075" Canvas.Left="8" Canvas.Top="242.25833333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsItemType" cm:DataType="Int" cm:Persistable="True" cm:PersistFieldName="ItemType" cm:tzDisplayItem="ItemTypeTitle" cm:tzValueItem="ItemTypeID" />
        <cm:tzDataSource Name="dsItemType" Content="dsItemType" Width="110" Height="25" ControlID="4879913309372921014" Canvas.Left="181" Canvas.Top="234.25833333000003" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="exec Sp_CU_GetItemType " />
        <cm:TZRadioButton Name="rbnMultipleValues" Content="انتخاب چند مقداری" Canvas.Left="8" Canvas.Top="193.27499999999998" cm:ControlID="5346833366684472117" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:Persistable="True" cm:PersistFieldName="rbnMultipleValues" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
        <cm:TZCheckBox Name="chkNeedManager" Content="نیاز به تایید مدیر رشته دارد؟" Width="161" Height="20" ControlID="5484655546310576101" FontFamily="Tahoma" Canvas.Left="36.96842106" Canvas.Top="296.41832663" cm:Persistable="True" cm:PersistFieldName="NeedManagerConfirmation" />
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '2025/05/19 14:56:21', GUID = '04a34223-ecd6-447b-be03-0e4213957420', ISPersistable = 1,HelpLink = N'',HTMLResource = N'{"formID": "157" ,"components": [{"value": "","key": "4987677476929642357","label": "CheckBox17","controlType": "checkbox","caption": "درج مقدار اجباری است" ,"DataBindingField" : ""},{"value": "","key": "4631380345481091183","label": "chkFieldSubjectStatus","controlType": "checkbox","caption": "فعال" ,"DataBindingField" : ""},{"value": "","key": "4740390536430109348","label": "chkNeedCertificate","controlType": "checkbox","caption": "نیاز به بارگذاری مدارک دارد" ,"DataBindingField" : ""},{"value": "","key": "5484655546310576101","label": "chkNeedManager","controlType": "checkbox","caption": "نیاز به تایید مدیر رشته دارد؟" ,"DataBindingField" : ""},{"key": "5563866477445515075","label": "ComboBox26","value": "", "controlType": "dropdown","options":""},{"key":"4879913309372921014" , "dataSourceName":"dsItemType" , "controlType": "datasource",  "selectQuery" :"exec Sp_CU_GetItemType " , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5054598222947842242" , "dataSourceName":"dsRequestSubjectTitle" , "controlType": "datasource",  "selectQuery" :"Sp_CU_RequestSubjectFromID" , "connectionName" :"SamanCRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5530358577123631354","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : "RequestSubjectName"},{"value": "","key": "5453549928951067083","label": "txtFieldSubjectTitle","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5169866949778765461","label": "txtOrder","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "@@RequestSubjectID","key": "4936603042106904042","label": "txtRequestSubjectID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[{"layoutID": "5059001035720893695","data": [{"key": "5530358577123631354","color": "","invisible": false,"mandatory": false,"disable": true },{"key": "5453549928951067083","color": "","invisible": false,"mandatory": true,"disable": false }]}]}',DefaultCulture = NULL  WHERE FormId = 157
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm157') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm157] ( [frm157Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5530358577123631354]  [nvarchar] ( 50) NULL , [Col_5453549928951067083]  [nvarchar] ( 50) NULL , [Col_4631380345481091183]  [bit] NULL , [Col_4936603042106904042]  [int] NULL , [Col_5065436089235651340]  [bit] NULL , [Col_5666931910765771489]  [bit] NULL , [Col_4740390536430109348]  [bit] NULL , [Col_4987677476929642357]  [bit] NULL , [Col_5169866949778765461]  [int] NULL , [Col_5563866477445515075]  [int] NULL , [Col_5346833366684472117]  [bit] NULL , [Col_5484655546310576101]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm157Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'frm157Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD frm157Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5530358577123631354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5530358577123631354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5453549928951067083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5453549928951067083 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_4631380345481091183' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_4631380345481091183 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_4936603042106904042' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_4936603042106904042 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5065436089235651340' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5065436089235651340 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5666931910765771489' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5666931910765771489 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_4740390536430109348' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_4740390536430109348 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_4987677476929642357' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_4987677476929642357 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5169866949778765461' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5169866949778765461 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5563866477445515075' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5563866477445515075 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5346833366684472117' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5346833366684472117 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm157' AND COLUMN_NAME = 'Col_5484655546310576101' )  BEGIN ALTER TABLE [dbo].[Tbl_frm157] ADD Col_5484655546310576101 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm157]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm157
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm157] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_5453549928951067083 AS nvarchar(50),  @Col_4631380345481091183 AS bit,  @Col_4936603042106904042 AS int,  @Col_5065436089235651340 AS bit,  @Col_5666931910765771489 AS bit,  @Col_4740390536430109348 AS bit,  @Col_4987677476929642357 AS bit,  @Col_5169866949778765461 AS int,  @Col_5563866477445515075 AS int,  @Col_5346833366684472117 AS bit,  @Col_5484655546310576101 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm157](Col_5530358577123631354,Col_5453549928951067083,Col_4631380345481091183,Col_4936603042106904042,Col_5065436089235651340,Col_5666931910765771489,Col_4740390536430109348,Col_4987677476929642357,Col_5169866949778765461,Col_5563866477445515075,Col_5346833366684472117,Col_5484655546310576101) VALUES ( @Col_5530358577123631354,@Col_5453549928951067083,@Col_4631380345481091183,@Col_4936603042106904042,@Col_5065436089235651340,@Col_5666931910765771489,@Col_4740390536430109348,@Col_4987677476929642357,@Col_5169866949778765461,@Col_5563866477445515075,@Col_5346833366684472117,@Col_5484655546310576101 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm157]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm157
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm157] ( @PKFormId as bigint OUTPUT ,  @Col_5530358577123631354 AS nvarchar(50),  @Col_5453549928951067083 AS nvarchar(50),  @Col_4631380345481091183 AS bit,  @Col_4936603042106904042 AS int,  @Col_5065436089235651340 AS bit,  @Col_5666931910765771489 AS bit,  @Col_4740390536430109348 AS bit,  @Col_4987677476929642357 AS bit,  @Col_5169866949778765461 AS int,  @Col_5563866477445515075 AS int,  @Col_5346833366684472117 AS bit,  @Col_5484655546310576101 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm157] SET Col_5530358577123631354 =  @Col_5530358577123631354, Col_5453549928951067083 =  @Col_5453549928951067083, Col_4631380345481091183 =  @Col_4631380345481091183, Col_4936603042106904042 =  @Col_4936603042106904042, Col_5065436089235651340 =  @Col_5065436089235651340, Col_5666931910765771489 =  @Col_5666931910765771489, Col_4740390536430109348 =  @Col_4740390536430109348, Col_4987677476929642357 =  @Col_4987677476929642357, Col_5169866949778765461 =  @Col_5169866949778765461, Col_5563866477445515075 =  @Col_5563866477445515075, Col_5346833366684472117 =  @Col_5346833366684472117, Col_5484655546310576101 =  @Col_5484655546310576101 WHERE [frm157Id] = @PKFormId 
 END 
GO
