GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 51624) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (51624, N'استعلام کد صحت',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="730.03333333" Background="White">
  <Canvas Width="950" Height="632">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5440880883912525981</ID>
        <Name>اجباری بودن شرح</Name>
        <Condition>({@chkDescriptionState.Value} ==True) &amp;&amp; ("{@txtDescription.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد شرح را تکمیل کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4650000845302587224</ComponentID>
            <ComponentName>chkDescriptionState</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5652995309131518833</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5383101998144965866</ComponentID>
            <ComponentName>txtDescription</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4911310434849337290</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4999964842968724370</ID>
        <Name>کد صحت نامعتبر</Name>
        <Condition>({@chkInquiryValidity.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد صحت معتبر نیست.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4632371938225071137</ComponentID>
            <ComponentName>chkInquiryValidity</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5383733282651925952</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4653310122920697443</ID>
        <Name>اجباری بودن فیلدهای نوع و نام سازمان</Name>
        <Condition>({@chkMandatory_OrgsComboboxes.Value} ==True)</Condition>
        <Description />
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلدهای نوع سازمان و نام سازمان را تکمیل کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4728487324510420247</ComponentID>
            <ComponentName>chkMandatory_OrgsComboboxes</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5747412822405642684</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="616" ControlID="5761654803702935413" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="استعلام کد صحت">
      <Canvas>
        <cm:Grid Width="906" Height="578.51666666666665" ControlID="4828199045162456394" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.150569028851732*" />
            <ColumnDefinition Width="0.165525875224084*" />
            <ColumnDefinition Width="0.169563091692965*" />
            <ColumnDefinition Width="0.169563091692963*" />
            <ColumnDefinition Width="0.172254569338884*" />
            <ColumnDefinition Width="0.172524343199372*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.111395165330032*" />
            <RowDefinition Height="0.0779784912389716*" />
            <RowDefinition Height="0.120129027043823*" />
            <RowDefinition Height="0.120129027043822*" />
            <RowDefinition Height="0.119110389095204*" />
            <RowDefinition Height="0.124344080624307*" />
            <RowDefinition Height="0.120129027043823*" />
            <RowDefinition Height="0.115913973463337*" />
            <RowDefinition Height="0.0908708191166799*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable5" Content="کد صحت" Width="466" Height="22.46532438478777" Margin="0,10.59384787,139.08202362,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4679299439659078646" FontFamily="Tahoma" Grid.Column="2" Grid.ColumnSpan="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="لطفا یکی از گزینه های زیر را انتخاب کنید" Width="120.00000000000004" Height="23" Margin="0,10.9731543684076,120.721923944831,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5650005701630304559" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="1" />
          <cm:TZRadioButton Name="rbnEducationalDegreeValidity" Content="استعلام کد صحت مدرک تحصیلی" Width="120" Height="17" Margin="0,0,126.34729082,42.4534653994452" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5682925167809697056" FontFamily="Tahoma" GroupName="1" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="2" cm:DefaultValue="false" cm:Event="dschkRadioButtonsState" cm:FCVCol="4906205338905471772#5297751233599887583#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4906205338905471772#5297751233599887583#" />
          <cm:TZRadioButton Name="rbnOtherDegreesValidity" Content="استعلام سایر کدهای صحت(تایید مدارک جهت ترجمه رسمی، کارنامه آزمون MSRTو نامه لغو و گواهی اشتغال به تحصیل)" Width="137" Height="20" Margin="96.077398410331,36.3049238623,70.5132056165153,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5536751798350188447" GroupName="1" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="2" cm:Event="dschkRadioButtonsState" />
          <cm:TZRadioButton Name="rbnInfoOnly" Content="دریافت تاییدیه تحصیلی صرفا جهت اطلاع" Width="119.99999999999999" Height="20" Margin="0,0,126.34729082,29.7253974648812" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4906205338905471772" FontFamily="Tahoma" GroupName="2" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="3" cm:DefaultValue="" cm:Event="dschkRadioButtonsState" />
          <cm:TZRadioButton Name="rbnOrgsUniPresenation" Content="دریافت تاییدیه تحصیلی جهت ارائه سازمان ها، شرکت یا دانشگاه" Width="183" Height="19.999999999999996" Margin="0,30.7444011928368,24.5132056165151,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5297751233599887583" GroupName="2" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" cm:DefaultValue="" cm:Event="dschkRadioButtonsState,dschkMandatory_OrgsComboboxes" cm:FCVCol="5181846831418919335#5045268888212402062#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4624517085120451877#4961506501603744471#5181846831418919335#5045268888212402062#" />
          <cm:tzLabel Name="lblOrgType" Content="نوع سازمان" Width="120" Height="23" Margin="0,0,104.18724832483,40.9168590579975" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4624517085120451877" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
          <cm:tzLabel Name="lblOrgName" Content="نام سازمان" Width="119.99999999999993" Height="23.000000000000014" Margin="0,4.99048620672951,94.0039071365153,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4961506501603744471" Foreground="#FF000000" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" />
          <cm:tzLookUpComboBox Name="cmbOrgType" Width="119.99999999999999" Height="22" Margin="0,28.9904862067296,126.34729082,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5181846831418919335" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOrgType" cm:Event="dsOrgName,dschkDescriptionState,dschkMandatory_OrgsComboboxes" cm:tzDisplayItem="RequestedOrganizationsTypeName" cm:tzValueItem="RequestedOrganizationsTypeID" />
          <cm:tzLookUpComboBox Name="cmbOrgName" Width="120" Height="23" Margin="0,27.9904862067295,70.5132056165153,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5045268888212402062" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOrgName" cm:Event="dschkDescriptionState,dschkMandatory_OrgsComboboxes" cm:tzDisplayItem="RequestedOrganizationsName" cm:tzValueItem="RequestedOrganizationsID" />
          <cm:tzTextBox Name="txtValidityCode" Width="465.99999999999989" Height="21.999999999999996" Margin="21.1745292173098,0,132.443487690001,8.38478747472462" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5716382208503520831" Grid.Column="2" Grid.ColumnSpan="4" Grid.Row="0" />
          <cm:tzDataSource Name="dsOrgName" Content="dsOrgName" Width="109.99999999999999" Height="25" Margin="43.7485212503306,36.9904862067296,149.842082776516,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5569867153699646889" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizations">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestedOrganizationsTypeID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsOrgType" Content="dsOrgType" Width="110" Height="25" Margin="0,36.9904862066178,26.4148690061995,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5490128771523394600" Grid.Column="4" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizationsType" />
          <cm:tzDataSource Name="dsbtnInquiry" Content="dsbtnInquiry" Width="110" Height="25.000000000000004" Margin="0,20.0937733007494,21.9775960603403,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5483642522873530736" Grid.Column="3" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Insert_TBL_CU_InquiryCertificateCode">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtValidityCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @CertificateCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnEducationalDegreeValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @InquiryDegrees" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnInfoOnly}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @confirmationForInformation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @ConfirmationForpresentation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherDegreesValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Others" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @OrganizationType" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @OrganizationName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescription}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Descr" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dschkRadioButtonsState" Content="dschkRadioButtonsState" Width="60" Height="25" Margin="17.26487059,14.2355726367522,59.1506695496692,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5440281383001370476" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_RadioButtonsState_Controller_frm51624">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnEducationalDegreeValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnEducationalDegreeValidity" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherDegreesValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOtherDegreesValidity" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnInfoOnly}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnInfoOnly" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOrgsUniPresenation" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkRadioButtonsState" Content="TZCheckBox" Width="54" Height="20" Margin="7.26487059,48.2355726367522,75.1506695496692,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5605355018541395794" Grid.Column="0" Grid.Row="2" cm:DataBinding="dschkRadioButtonsState" cm:DataBindingField="InquiryButtonState" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5709066460826476246#5667435355702452203#" />
          <cm:TZCheckBox Name="chkDescriptionState" Content="TZCheckBox" Width="50.999999999999886" Height="20" Margin="104.932558273484,26.9463087218899,153.75424262137,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4650000845302587224" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="5" cm:DataBinding="dschkDescriptionState" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5383101998144965866#5233839043881519807#" />
          <cm:tzDataSource Name="dschkDescriptionState" Content="dschkDescriptionState" Width="51" Height="25" Margin="19.6477708148294,21.9463087218899,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5224761172985296360" Grid.Column="4" Grid.Row="5" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_EnabletxtOtherUnit_StudentCertification">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestedOrganizationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TzHyperlink Name="hlInquiry" Width="234.7140067400004" Height="23" Margin="0,0,24.5132056165152,11.9107009640153" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5753234371058219865" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="7" cm:DataBinding="dsbtnInquiry" cm:tzDisplayItem="LinkTitle" cm:tzValueItem="DocLink" />
          <cm:TZCheckBox Name="chkInquiryValidity" Content="InquiryValidity" Width="59.000000000000014" Height="20" Margin="43.8644231599999,35.1474645840829,33.5511169796693,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4632371938225071137" Grid.Column="0" Grid.Row="7" cm:DataBinding="dsbtnInquiry" cm:DataBindingField="codeIsValid" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5753234371058219865#" cm:IsEnableItem="True" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5723084995816656738#" />
          <cm:tzDataSource Name="dschkMandatory_OrgsComboboxes" Content="dschkMandatory_OrgsComboboxes" Width="51.525858400000061" Height="25" Margin="31.4066998734844,0,0,32.9168590581094" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5006111681685664293" Grid.Column="3" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Mandatory_OrgsComboboxes_frm51624">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOrgsUniPresenation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOrgType" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOrgName" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkMandatory_OrgsComboboxes" Content="TZCheckBox" Width="47" Height="20" Margin="35.9325582734844,41.9904862066178,70.6916028003401,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4728487324510420247" Grid.Column="3" Grid.Row="4" cm:DataBinding="dschkMandatory_OrgsComboboxes" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzLabel Name="lblDescription" Content="شرح" Width="120" Height="23" Margin="0,0,104.18724832483,43.9888143206155" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5233839043881519807" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="5" />
          <cm:tzTextBox Name="txtDescription" Width="120.00000000000003" Height="21.000000000000004" Margin="88.1824464348298,0,0,13.9888143206155" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5383101998144965866" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="5" />
          <cm:TZButton Name="btnInq" Content="استعلام" Width="167" Height="23" Margin="0,0,0,11.9107009640153" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5667435355702452203" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="7" cm:Event="dsbtnInquiry" cm:Validations="5440880883912525981,4653310122920697443" />
          <cm:tzLabel Name="Lable37" Content="کدصحت معتبر نیست" Width="119.99999999999999" Height="23" Margin="33.7485212503307,32.1474645840829,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5723084995816656738" FontWeight="Bold" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="7" cm:ForeColor="#FFC11D1D" cm:IsVisibleItem="False" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/06/09 15:36:25', '4586bee0-77c9-4e1d-a15d-e25cde2031a0', 0, N'', N'{"formID": "51624" ,"components": [{"value": "","key": "4650000845302587224","label": "chkDescriptionState","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4632371938225071137","label": "chkInquiryValidity","controlType": "checkbox","caption": "InquiryValidity" ,"DataBindingField" : "codeIsValid"},{"value": "","key": "4728487324510420247","label": "chkMandatory_OrgsComboboxes","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5605355018541395794","label": "chkRadioButtonsState","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "InquiryButtonState"},{"key": "5045268888212402062","label": "cmbOrgName","value": "", "controlType": "dropdown","options":""},{"key": "5181846831418919335","label": "cmbOrgType","value": "", "controlType": "dropdown","options":""},{"key":"5483642522873530736" , "dataSourceName":"dsbtnInquiry" , "controlType": "datasource",  "selectQuery" :"SP_CU_Insert_TBL_CU_InquiryCertificateCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5224761172985296360" , "dataSourceName":"dschkDescriptionState" , "controlType": "datasource",  "selectQuery" :"SP_CU_EnabletxtOtherUnit_StudentCertification" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5006111681685664293" , "dataSourceName":"dschkMandatory_OrgsComboboxes" , "controlType": "datasource",  "selectQuery" :"SP_CU_Mandatory_OrgsComboboxes_frm51624" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5440281383001370476" , "dataSourceName":"dschkRadioButtonsState" , "controlType": "datasource",  "selectQuery" :"SP_CU_RadioButtonsState_Controller_frm51624" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5569867153699646889" , "dataSourceName":"dsOrgName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizations" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5490128771523394600" , "dataSourceName":"dsOrgType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizationsType" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5383101998144965866","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5716382208503520831","label": "txtValidityCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'استعلام کد صحت',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="730.03333333" Background="White">
  <Canvas Width="950" Height="632">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5440880883912525981</ID>
        <Name>اجباری بودن شرح</Name>
        <Condition>({@chkDescriptionState.Value} ==True) &amp;&amp; ("{@txtDescription.Value}" =="''''")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلد شرح را تکمیل کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4650000845302587224</ComponentID>
            <ComponentName>chkDescriptionState</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5652995309131518833</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
          <ExpressionCondition>
            <ANDOR>And</ANDOR>
            <ComponentID>5383101998144965866</ComponentID>
            <ComponentName>txtDescription</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4911310434849337290</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>''''</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4999964842968724370</ID>
        <Name>کد صحت نامعتبر</Name>
        <Condition>({@chkInquiryValidity.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کد صحت معتبر نیست.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4632371938225071137</ComponentID>
            <ComponentName>chkInquiryValidity</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5383733282651925952</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4653310122920697443</ID>
        <Name>اجباری بودن فیلدهای نوع و نام سازمان</Name>
        <Condition>({@chkMandatory_OrgsComboboxes.Value} ==True)</Condition>
        <Description />
        <IsWarning>false</IsWarning>
        <Message>لطفا فیلدهای نوع سازمان و نام سازمان را تکمیل کنید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4728487324510420247</ComponentID>
            <ComponentName>chkMandatory_OrgsComboboxes</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5747412822405642684</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="616" ControlID="5761654803702935413" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="استعلام کد صحت">
      <Canvas>
        <cm:Grid Width="906" Height="578.51666666666665" ControlID="4828199045162456394" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.150569028851732*" />
            <ColumnDefinition Width="0.165525875224084*" />
            <ColumnDefinition Width="0.169563091692965*" />
            <ColumnDefinition Width="0.169563091692963*" />
            <ColumnDefinition Width="0.172254569338884*" />
            <ColumnDefinition Width="0.172524343199372*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.111395165330032*" />
            <RowDefinition Height="0.0779784912389716*" />
            <RowDefinition Height="0.120129027043823*" />
            <RowDefinition Height="0.120129027043822*" />
            <RowDefinition Height="0.119110389095204*" />
            <RowDefinition Height="0.124344080624307*" />
            <RowDefinition Height="0.120129027043823*" />
            <RowDefinition Height="0.115913973463337*" />
            <RowDefinition Height="0.0908708191166799*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable5" Content="کد صحت" Width="466" Height="22.46532438478777" Margin="0,10.59384787,139.08202362,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4679299439659078646" FontFamily="Tahoma" Grid.Column="2" Grid.ColumnSpan="4" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="لطفا یکی از گزینه های زیر را انتخاب کنید" Width="120.00000000000004" Height="23" Margin="0,10.9731543684076,120.721923944831,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5650005701630304559" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="1" />
          <cm:TZRadioButton Name="rbnEducationalDegreeValidity" Content="استعلام کد صحت مدرک تحصیلی" Width="120" Height="17" Margin="0,0,126.34729082,42.4534653994452" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5682925167809697056" FontFamily="Tahoma" GroupName="1" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="2" cm:DefaultValue="false" cm:Event="dschkRadioButtonsState" cm:FCVCol="4906205338905471772#5297751233599887583#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4906205338905471772#5297751233599887583#" />
          <cm:TZRadioButton Name="rbnOtherDegreesValidity" Content="استعلام سایر کدهای صحت(تایید مدارک جهت ترجمه رسمی، کارنامه آزمون MSRTو نامه لغو و گواهی اشتغال به تحصیل)" Width="137" Height="20" Margin="96.077398410331,36.3049238623,70.5132056165153,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5536751798350188447" GroupName="1" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="2" cm:Event="dschkRadioButtonsState" />
          <cm:TZRadioButton Name="rbnInfoOnly" Content="دریافت تاییدیه تحصیلی صرفا جهت اطلاع" Width="119.99999999999999" Height="20" Margin="0,0,126.34729082,29.7253974648812" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4906205338905471772" FontFamily="Tahoma" GroupName="2" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="3" cm:DefaultValue="" cm:Event="dschkRadioButtonsState" />
          <cm:TZRadioButton Name="rbnOrgsUniPresenation" Content="دریافت تاییدیه تحصیلی جهت ارائه سازمان ها، شرکت یا دانشگاه" Width="183" Height="19.999999999999996" Margin="0,30.7444011928368,24.5132056165151,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5297751233599887583" GroupName="2" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="3" cm:DefaultValue="" cm:Event="dschkRadioButtonsState,dschkMandatory_OrgsComboboxes" cm:FCVCol="5181846831418919335#5045268888212402062#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="4624517085120451877#4961506501603744471#5181846831418919335#5045268888212402062#" />
          <cm:tzLabel Name="lblOrgType" Content="نوع سازمان" Width="120" Height="23" Margin="0,0,104.18724832483,40.9168590579975" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4624517085120451877" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
          <cm:tzLabel Name="lblOrgName" Content="نام سازمان" Width="119.99999999999993" Height="23.000000000000014" Margin="0,4.99048620672951,94.0039071365153,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4961506501603744471" Foreground="#FF000000" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" />
          <cm:tzLookUpComboBox Name="cmbOrgType" Width="119.99999999999999" Height="22" Margin="0,28.9904862067296,126.34729082,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5181846831418919335" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOrgType" cm:Event="dsOrgName,dschkDescriptionState,dschkMandatory_OrgsComboboxes" cm:tzDisplayItem="RequestedOrganizationsTypeName" cm:tzValueItem="RequestedOrganizationsTypeID" />
          <cm:tzLookUpComboBox Name="cmbOrgName" Width="120" Height="23" Margin="0,27.9904862067295,70.5132056165153,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5045268888212402062" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsOrgName" cm:Event="dschkDescriptionState,dschkMandatory_OrgsComboboxes" cm:tzDisplayItem="RequestedOrganizationsName" cm:tzValueItem="RequestedOrganizationsID" />
          <cm:tzTextBox Name="txtValidityCode" Width="465.99999999999989" Height="21.999999999999996" Margin="21.1745292173098,0,132.443487690001,8.38478747472462" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5716382208503520831" Grid.Column="2" Grid.ColumnSpan="4" Grid.Row="0" />
          <cm:tzDataSource Name="dsOrgName" Content="dsOrgName" Width="109.99999999999999" Height="25" Margin="43.7485212503306,36.9904862067296,149.842082776516,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5569867153699646889" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizations">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestedOrganizationsTypeID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dsOrgType" Content="dsOrgType" Width="110" Height="25" Margin="0,36.9904862066178,26.4148690061995,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5490128771523394600" Grid.Column="4" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizationsType" />
          <cm:tzDataSource Name="dsbtnInquiry" Content="dsbtnInquiry" Width="110" Height="25.000000000000004" Margin="0,20.0937733007494,21.9775960603403,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5483642522873530736" Grid.Column="3" Grid.Row="7" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Insert_TBL_CU_InquiryCertificateCode">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtValidityCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @CertificateCode" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnEducationalDegreeValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @InquiryDegrees" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnInfoOnly}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @confirmationForInformation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @ConfirmationForpresentation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherDegreesValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @Others" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @OrganizationType" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @OrganizationName" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtDescription}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Descr" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:tzDataSource Name="dschkRadioButtonsState" Content="dschkRadioButtonsState" Width="60" Height="25" Margin="17.26487059,14.2355726367522,59.1506695496692,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5440281383001370476" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_RadioButtonsState_Controller_frm51624">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnEducationalDegreeValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnEducationalDegreeValidity" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOtherDegreesValidity}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOtherDegreesValidity" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnInfoOnly}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnInfoOnly" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOrgsUniPresenation" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkRadioButtonsState" Content="TZCheckBox" Width="54" Height="20" Margin="7.26487059,48.2355726367522,75.1506695496692,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5605355018541395794" Grid.Column="0" Grid.Row="2" cm:DataBinding="dschkRadioButtonsState" cm:DataBindingField="InquiryButtonState" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5709066460826476246#5667435355702452203#" />
          <cm:TZCheckBox Name="chkDescriptionState" Content="TZCheckBox" Width="50.999999999999886" Height="20" Margin="104.932558273484,26.9463087218899,153.75424262137,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4650000845302587224" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="5" cm:DataBinding="dschkDescriptionState" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5383101998144965866#5233839043881519807#" />
          <cm:tzDataSource Name="dschkDescriptionState" Content="dschkDescriptionState" Width="51" Height="25" Margin="19.6477708148294,21.9463087218899,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5224761172985296360" Grid.Column="4" Grid.Row="5" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_EnabletxtOtherUnit_StudentCertification">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @RequestedOrganizationID" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TzHyperlink Name="hlInquiry" Width="234.7140067400004" Height="23" Margin="0,0,24.5132056165152,11.9107009640153" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5753234371058219865" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="7" cm:DataBinding="dsbtnInquiry" cm:tzDisplayItem="LinkTitle" cm:tzValueItem="DocLink" />
          <cm:TZCheckBox Name="chkInquiryValidity" Content="InquiryValidity" Width="59.000000000000014" Height="20" Margin="43.8644231599999,35.1474645840829,33.5511169796693,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4632371938225071137" Grid.Column="0" Grid.Row="7" cm:DataBinding="dsbtnInquiry" cm:DataBindingField="codeIsValid" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="5753234371058219865#" cm:IsEnableItem="True" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="5723084995816656738#" />
          <cm:tzDataSource Name="dschkMandatory_OrgsComboboxes" Content="dschkMandatory_OrgsComboboxes" Width="51.525858400000061" Height="25" Margin="31.4066998734844,0,0,32.9168590581094" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5006111681685664293" Grid.Column="3" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Mandatory_OrgsComboboxes_frm51624">
            <cm:tzDataSource.StoredProcedureParameterValue>
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@rbnOrgsUniPresenation}" IsOutputParameter="False" ParameterType="bit" SpParamName=" @rbnOrgsUniPresenation" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOrgType" />
              <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrgName}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbOrgName" />
            </cm:tzDataSource.StoredProcedureParameterValue>
          </cm:tzDataSource>
          <cm:TZCheckBox Name="chkMandatory_OrgsComboboxes" Content="TZCheckBox" Width="47" Height="20" Margin="35.9325582734844,41.9904862066178,70.6916028003401,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4728487324510420247" Grid.Column="3" Grid.Row="4" cm:DataBinding="dschkMandatory_OrgsComboboxes" cm:DataBindingField="res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
          <cm:tzLabel Name="lblDescription" Content="شرح" Width="120" Height="23" Margin="0,0,104.18724832483,43.9888143206155" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5233839043881519807" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="5" />
          <cm:tzTextBox Name="txtDescription" Width="120.00000000000003" Height="21.000000000000004" Margin="88.1824464348298,0,0,13.9888143206155" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5383101998144965866" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="5" />
          <cm:TZButton Name="btnInq" Content="استعلام" Width="167" Height="23" Margin="0,0,0,11.9107009640153" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5667435355702452203" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="7" cm:Event="dsbtnInquiry" cm:Validations="5440880883912525981,4653310122920697443" />
          <cm:tzLabel Name="Lable37" Content="کدصحت معتبر نیست" Width="119.99999999999999" Height="23" Margin="33.7485212503307,32.1474645840829,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5723084995816656738" FontWeight="Bold" Grid.Column="1" Grid.ColumnSpan="2" Grid.Row="7" cm:ForeColor="#FFC11D1D" cm:IsVisibleItem="False" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/06/09 15:36:25', GUID = '4586bee0-77c9-4e1d-a15d-e25cde2031a0', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "51624" ,"components": [{"value": "","key": "4650000845302587224","label": "chkDescriptionState","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4632371938225071137","label": "chkInquiryValidity","controlType": "checkbox","caption": "InquiryValidity" ,"DataBindingField" : "codeIsValid"},{"value": "","key": "4728487324510420247","label": "chkMandatory_OrgsComboboxes","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "5605355018541395794","label": "chkRadioButtonsState","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "InquiryButtonState"},{"key": "5045268888212402062","label": "cmbOrgName","value": "", "controlType": "dropdown","options":""},{"key": "5181846831418919335","label": "cmbOrgType","value": "", "controlType": "dropdown","options":""},{"key":"5483642522873530736" , "dataSourceName":"dsbtnInquiry" , "controlType": "datasource",  "selectQuery" :"SP_CU_Insert_TBL_CU_InquiryCertificateCode" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5224761172985296360" , "dataSourceName":"dschkDescriptionState" , "controlType": "datasource",  "selectQuery" :"SP_CU_EnabletxtOtherUnit_StudentCertification" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5006111681685664293" , "dataSourceName":"dschkMandatory_OrgsComboboxes" , "controlType": "datasource",  "selectQuery" :"SP_CU_Mandatory_OrgsComboboxes_frm51624" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5440281383001370476" , "dataSourceName":"dschkRadioButtonsState" , "controlType": "datasource",  "selectQuery" :"SP_CU_RadioButtonsState_Controller_frm51624" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5569867153699646889" , "dataSourceName":"dsOrgName" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizations" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5490128771523394600" , "dataSourceName":"dsOrgType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Read_Tbl_Cu_Base_RequestedOrganizationsType" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5383101998144965866","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5716382208503520831","label": "txtValidityCode","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 51624
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm51624') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm51624] ( [frm51624Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5716382208503520831]  [nvarchar] ( 50) NULL , [Col_5682925167809697056]  [bit] NULL , [Col_5536751798350188447]  [bit] NULL , [Col_5181846831418919335]  [nvarchar] ( 50) NULL , [Col_5045268888212402062]  [nvarchar] ( 50) NULL , [Col_4906205338905471772]  [bit] NULL , [Col_5297751233599887583]  [bit] NULL , [Col_5383101998144965866]  [nvarchar] ( 50) NULL , [Col_5605355018541395794]  [bit] NULL , [Col_4650000845302587224]  [bit] NULL , [Col_4632371938225071137]  [bit] NULL , [Col_4728487324510420247]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm51624Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'frm51624Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD frm51624Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5716382208503520831' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5716382208503520831 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5682925167809697056' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5682925167809697056 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5536751798350188447' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5536751798350188447 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5181846831418919335' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5181846831418919335 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5045268888212402062' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5045268888212402062 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_4906205338905471772' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_4906205338905471772 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5297751233599887583' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5297751233599887583 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5383101998144965866' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5383101998144965866 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_5605355018541395794' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_5605355018541395794 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_4650000845302587224' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_4650000845302587224 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_4632371938225071137' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_4632371938225071137 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm51624' AND COLUMN_NAME = 'Col_4728487324510420247' )  BEGIN ALTER TABLE [dbo].[Tbl_frm51624] ADD Col_4728487324510420247 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm51624]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm51624
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm51624] ( @PKFormId as bigint OUTPUT ,  @Col_5716382208503520831 AS nvarchar(50),  @Col_5682925167809697056 AS bit,  @Col_5536751798350188447 AS bit,  @Col_5181846831418919335 AS nvarchar(50),  @Col_5045268888212402062 AS nvarchar(50),  @Col_4906205338905471772 AS bit,  @Col_5297751233599887583 AS bit,  @Col_5383101998144965866 AS nvarchar(50),  @Col_5605355018541395794 AS bit,  @Col_4650000845302587224 AS bit,  @Col_4632371938225071137 AS bit,  @Col_4728487324510420247 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm51624](Col_5716382208503520831,Col_5682925167809697056,Col_5536751798350188447,Col_5181846831418919335,Col_5045268888212402062,Col_4906205338905471772,Col_5297751233599887583,Col_5383101998144965866,Col_5605355018541395794,Col_4650000845302587224,Col_4632371938225071137,Col_4728487324510420247) VALUES ( @Col_5716382208503520831,@Col_5682925167809697056,@Col_5536751798350188447,@Col_5181846831418919335,@Col_5045268888212402062,@Col_4906205338905471772,@Col_5297751233599887583,@Col_5383101998144965866,@Col_5605355018541395794,@Col_4650000845302587224,@Col_4632371938225071137,@Col_4728487324510420247 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm51624]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm51624
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm51624] ( @PKFormId as bigint OUTPUT ,  @Col_5716382208503520831 AS nvarchar(50),  @Col_5682925167809697056 AS bit,  @Col_5536751798350188447 AS bit,  @Col_5181846831418919335 AS nvarchar(50),  @Col_5045268888212402062 AS nvarchar(50),  @Col_4906205338905471772 AS bit,  @Col_5297751233599887583 AS bit,  @Col_5383101998144965866 AS nvarchar(50),  @Col_5605355018541395794 AS bit,  @Col_4650000845302587224 AS bit,  @Col_4632371938225071137 AS bit,  @Col_4728487324510420247 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm51624] SET Col_5716382208503520831 =  @Col_5716382208503520831, Col_5682925167809697056 =  @Col_5682925167809697056, Col_5536751798350188447 =  @Col_5536751798350188447, Col_5181846831418919335 =  @Col_5181846831418919335, Col_5045268888212402062 =  @Col_5045268888212402062, Col_4906205338905471772 =  @Col_4906205338905471772, Col_5297751233599887583 =  @Col_5297751233599887583, Col_5383101998144965866 =  @Col_5383101998144965866, Col_5605355018541395794 =  @Col_5605355018541395794, Col_4650000845302587224 =  @Col_4650000845302587224, Col_4632371938225071137 =  @Col_4632371938225071137, Col_4728487324510420247 =  @Col_4728487324510420247 WHERE [frm51624Id] = @PKFormId 
 END 
GO
