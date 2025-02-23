GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41611) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41611, N'فرم مدیریت کاربران دانشگاه',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1063.51666667" Background="White">
  <Canvas Width="1008" Height="1021">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5100119200581656990</ID>
        <Name>تکراری بودن کاربر</Name>
        <Condition>({@chkRepetitiveUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر مورد نظر قبلا ساخته شده است.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4727031311184922478</ComponentID>
            <ComponentName>chkRepetitiveUser</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4712689715038367907</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5493887975367381862</ID>
        <Name>خالی بودن فیلد نوع کاربر</Name>
        <Condition>({@chkValidateDefineUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>قبل از اضافه کردن کاربر جدید، فیلد نوع کاربر را تکمیل نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5518808438273988579</ComponentID>
            <ComponentName>chkValidateDefineUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4694547703161767870</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4773106424939704296</ID>
        <Name>نامعتبر بودن شماره همراه</Name>
        <Condition>({@chkValidateMobileNumber.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا شماره همراه معتبر وارد نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4616387636366252940</ComponentID>
            <ComponentName>chkValidateMobileNumber</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4921922270005323281</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5355224923302261185</ID>
        <Name>خالی بودن نام و نام خانوادگی</Name>
        <Condition>({@chkIfFullNameEmpty.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا برای اضافه کردن کاربر جدید فیلد نام و نام خانوادگی را تکمیل نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5350526849171206919</ComponentID>
            <ComponentName>chkIfFullNameEmpty</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5674498924913707989</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5089061314144247302</ID>
        <Name>نا معتبر بودن کد ملی</Name>
        <Condition>({@chkValidateNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا کد ملی معتبر وارد نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5149168273184464613</ComponentID>
            <ComponentName>chkValidateNationalCode</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4763889865412091601</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="985.96131089" ControlID="5519051717023168665" Canvas.Left="17.21483608" Canvas.Top="27.03868911" cm:Header="">
      <Canvas Width="982" Height="946.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14" Canvas.Top="8" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="895" Height="244.51666666666665" ControlID="4972667446817805193" Canvas.Left="8" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.204662456905412*" />
                <ColumnDefinition Width="0.196712766862761*" />
                <ColumnDefinition Width="0.195392915340669*" />
                <ColumnDefinition Width="0.19988568194474*" />
                <ColumnDefinition Width="0.203346178946419*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.260164117566559*" />
                <RowDefinition Height="0.739835882433441*" />
              </Grid.RowDefinitions>
              <cm:tzDataGrid Name="GVUsersList" Width="612.84870963999992" Height="100" Margin="41.5158453996565,0,57.4625460300001,23.6554331866665" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="4" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
                <cm:tzDataGrid.Resources>
                  <cm:MainCommands x:Key="MainCommands" />
                  <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                </cm:tzDataGrid.Resources>
                <cm:tzDataGrid.Columns>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کامل" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserId" DecimalMark="False" HeaderText="UserId" IsRowColorField="False" KeyField="True" SortMemberPath="UserId">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserId}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                </cm:tzDataGrid.Columns>
              </cm:tzDataGrid>
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999994" Height="22" Margin="0,0,39.0246913599999,9.61446281364971" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList,dschkValidateDefineUser,dschkRepetitiveUser" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="137.892515497587,6,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzTextBox Name="testCurrentUserID" Width="120" Height="20.999999999999996" Margin="28.4399018774858,10,26.4367573524128,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="testdsGetPrimaryUser" Content="testdsGetPrimaryUser" Width="79.000000000000028" Height="25" Margin="15.2350560674857,29,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5657269477913813573" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:tzTextBox Name="testGvUserID" Width="120.00000000000001" Height="20.999999999999996" Margin="6.55108769965659,7,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000021" Margin="0,4.99999999999998,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="0" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" cm:Validations="5493887975367381862,5089061314144247302,4773106424939704296,5100119200581656990,5355224923302261185" />
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="22.999999999999993" Margin="0,48.9241733863502,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000028" Height="22.999999999999993" Margin="0,74.9241733863501,15.5009578603436,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23.000000000000014" Margin="0,118.70874759635,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList,dsReadGrid" />
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="45.086449465171881" Height="25" Margin="8,5.99999999999994,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="44.32805893" Height="24.999999999999993" Margin="8.75839053517177,38.9241733863502,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4847051243098475060" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="45.086449465171881" Height="25" Margin="8,70.9241733863502,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4651382184855520842" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="45.086449465171881" Height="24.999999999999986" Margin="8,116.70874759635,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5070253460133905117" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="76.999999999999972" Height="25" Margin="176.67194107,106.92417338635,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dschkValidateDefineUser" Content="dschkValidateDefineUser" Width="65" Height="25" Margin="0,29,170.506838642514,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4826913809166912916" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkValidateDefineUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUserType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateDefineUser" Content="TZCheckBox" Width="58.997797350000553" Height="19.999999999999986" Margin="0,0,170.506838642514,169.516666666667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5518808438273988579" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" Grid.RowSpan="2" cm:DataBinding="dschkValidateDefineUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox16" Width="928" Height="269" ControlID="5222279548185944673" FontFamily="Tahoma" Canvas.Left="22.6460152" Canvas.Top="324.64204271" cm:Header="تعریف کاربر">
          <Canvas Width="911" Height="259.51666667">
            <cm:Grid Width="895" Height="238.32796144" ControlID="5442181342615983493" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.201597434820078*" />
                <RowDefinition Height="0.268031713615649*" />
                <RowDefinition Height="0.270883988014098*" />
                <RowDefinition Height="0.259486863550175*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.201597728972943*" />
                <ColumnDefinition Width="0.203508969837521*" />
                <ColumnDefinition Width="0.1952034288334*" />
                <ColumnDefinition Width="0.198429799795642*" />
                <ColumnDefinition Width="0.201260072560494*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="23" Margin="0,2.45657986779759,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120.00000000000001" Height="21" Margin="23.2299684416419,0,36.8977965000004,8.42287203949002" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5324017381496457775" Grid.Column="4" Grid.Row="1" cm:Event="dschkValidateNationalCode" cm:Len="10" />
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999995" Height="23.000000000000007" Margin="0,2.4565798677975,3.77663948835834,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000009" Height="21.000000000000014" Margin="0,0,25.2092510999998,8.42287203949023" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5615130179215214086" Grid.Column="3" Grid.Row="1" cm:Event="dschkIfFullNameEmpty" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000012" Height="23" Margin="0,2.4565798677975,12.9814311712581,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtMobileNo" Width="120.00000000000003" Height="21" Margin="16.5163865346347,0,38.1906822712582,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5684824784381191923" Grid.Column="2" Grid.Row="1" cm:Event="dschkValidateMobileNumber" cm:Len="11" />
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="119.99999999999999" Height="23" Margin="43.827259369216,10.4565798677972,18.3132686353654,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
              <cm:tzTextBox Name="txtComment" Width="120.00000000000001" Height="20.999999999999993" Margin="28.841936569216,0,33.2985914353653,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5540013699503386460" Grid.Column="1" Grid.Row="1" cm:Len="7" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000083" Height="23" Margin="0,10.4565798677972,16.0214995507839,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
              <cm:tzTextBox Name="txtUnitName" Width="119.99999999999999" Height="21" Margin="32.4040625900001,0,28.0259048407839,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4944790115182803173" Grid.Column="0" Grid.Row="1" cm:Len="100" />
              <cm:tzDataSource Name="dschkValidateNationalCode" Content="dschkValidateNationalCode" Width="53" Height="25" Margin="10.0095112316423,7.38609304051002,117.11825371,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5051561278123939194" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidNationalCode_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateNationalCode" Content="TZCheckBox" Width="48.000000000000021" Height="19.999999999999993" Margin="0,0,47.7017612600004,32.1731356096273" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5149168273184464613" Grid.Column="4" Grid.Row="2" cm:DataBinding="dschkValidateNationalCode" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateMobileNumber" Content="dschkValidateMobileNumber" Width="62" Height="25" Margin="16.5163865346346,22.95328726051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5277903783870964252" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidMobilePhone_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PhoneNumber" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateMobileNumber" Content="TZCheckBox" Width="59" Height="20" Margin="19.5163865346346,56.95328726051,96.1906822712583,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4616387636366252940" Grid.Column="2" Grid.Row="2" Grid.RowSpan="2" cm:DataBinding="dschkValidateMobileNumber" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkRepetitiveUser" Content="dschkRepetitiveUser" Width="66" Height="24.999999999999996" Margin="15.60465907,12.38609304051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5415250851119077482" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckRepeatedUser_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkRepetitiveUser" Content="TZCheckBox" Width="65.999999999999972" Height="20" Margin="15.60465907,46.38609304051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4727031311184922478" Grid.Column="0" Grid.Row="2" Grid.RowSpan="2" cm:DataBinding="dschkRepetitiveUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkIfFullNameEmpty" Content="dschkIfFullNameEmpty" Width="55.000000000000014" Height="24.999999999999993" Margin="0,51.95328726051,103.666041218358,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5029765461661542075" Grid.Column="3" Grid.Row="2" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckIfFullNameEmpty_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFullName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkIfFullNameEmpty" Content="TZCheckBox" Width="54.999999999999886" Height="20" Margin="18.9286295987417,22.95328726051,103.666041218358,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5350526849171206919" Grid.Column="3" Grid.Row="2" cm:DataBinding="dschkIfFullNameEmpty" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="22.646015200000079" Canvas.Top="618.03699873" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="892" Height="263" ControlID="4754760739861249072" Canvas.Left="16" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.194764043612276*" />
                <ColumnDefinition Width="0.203663120400458*" />
                <ColumnDefinition Width="0.200635868243102*" />
                <ColumnDefinition Width="0.19802603722504*" />
                <ColumnDefinition Width="0.202910930519123*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.195124535688535*" />
                <RowDefinition Height="0.804875464311465*" />
              </Grid.RowDefinitions>
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25.000000000000018" Margin="0,20.7064832799994,62.6265569221498,0" HorizontalAlignment="Right" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable16" Content="نوع اقدام" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5379568843677110516" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbActionType" Width="119.99999999999997" Height="22.000000000000007" Margin="0,0,43.2158590299999,5.61126960608526" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5692244804204877740" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999989" Margin="0,0,13.5778811969421,5.61126960608523" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4969722946973955324" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVLog" Width="824" Height="177" Margin="33.4361356000006,17.0787228839155,34.5638643999994,17.6035242299998" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" cm:BindingForm="dsReadGrid">
                <cm:tzDataGrid.Resources>
                  <cm:MainCommands x:Key="MainCommands" />
                  <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                </cm:tzDataGrid.Resources>
                <cm:tzDataGrid.Columns>
                  <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="54" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ActionType" DecimalMark="False" HeaderText="نوع اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="ActionType">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ActionType}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNo" DecimalMark="False" HeaderText="شماره موبایل کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNo">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNo}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Comment" DecimalMark="False" HeaderText="شماره تلفن ثابت اداری کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="Comment">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Comment}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UnitName" DecimalMark="False" HeaderText="پست سازمانی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="UnitName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UnitName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                </cm:tzDataGrid.Columns>
              </cm:tzDataGrid>
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'1403/12/05 17:54:11', 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', 0, N'', N'{"formID": "41611" ,"components": [{"value": "","key": "5350526849171206919","label": "chkIfFullNameEmpty","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4727031311184922478","label": "chkRepetitiveUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5518808438273988579","label": "chkValidateDefineUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4616387636366252940","label": "chkValidateMobileNumber","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5149168273184464613","label": "chkValidateNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5029765461661542075" , "dataSourceName":"dschkIfFullNameEmpty" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckIfFullNameEmpty_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415250851119077482" , "dataSourceName":"dschkRepetitiveUser" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckRepeatedUser_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4826913809166912916" , "dataSourceName":"dschkValidateDefineUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkValidateDefineUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5277903783870964252" , "dataSourceName":"dschkValidateMobileNumber" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidMobilePhone_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5051561278123939194" , "dataSourceName":"dschkValidateNationalCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidNationalCode_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4631033459373652618","label": "testCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"key":"5657269477913813573" , "dataSourceName":"testdsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4671931002698860140","label": "testGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم مدیریت کاربران دانشگاه',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1063.51666667" Background="White">
  <Canvas Width="1008" Height="1021">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5100119200581656990</ID>
        <Name>تکراری بودن کاربر</Name>
        <Condition>({@chkRepetitiveUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>کاربر مورد نظر قبلا ساخته شده است.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4727031311184922478</ComponentID>
            <ComponentName>chkRepetitiveUser</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4712689715038367907</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5493887975367381862</ID>
        <Name>خالی بودن فیلد نوع کاربر</Name>
        <Condition>({@chkValidateDefineUser.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>قبل از اضافه کردن کاربر جدید، فیلد نوع کاربر را تکمیل نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5518808438273988579</ComponentID>
            <ComponentName>chkValidateDefineUser</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4694547703161767870</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4773106424939704296</ID>
        <Name>نامعتبر بودن شماره همراه</Name>
        <Condition>({@chkValidateMobileNumber.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا شماره همراه معتبر وارد نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4616387636366252940</ComponentID>
            <ComponentName>chkValidateMobileNumber</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4921922270005323281</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5355224923302261185</ID>
        <Name>خالی بودن نام و نام خانوادگی</Name>
        <Condition>({@chkIfFullNameEmpty.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا برای اضافه کردن کاربر جدید فیلد نام و نام خانوادگی را تکمیل نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5350526849171206919</ComponentID>
            <ComponentName>chkIfFullNameEmpty</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5674498924913707989</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5089061314144247302</ID>
        <Name>نا معتبر بودن کد ملی</Name>
        <Condition>({@chkValidateNationalCode.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>لطفا کد ملی معتبر وارد نمایید.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5149168273184464613</ComponentID>
            <ComponentName>chkValidateNationalCode</ComponentName>
            <ComponentDataType>Bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4763889865412091601</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="985.96131089" ControlID="5519051717023168665" Canvas.Left="17.21483608" Canvas.Top="27.03868911" cm:Header="">
      <Canvas Width="982" Height="946.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14" Canvas.Top="8" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="895" Height="244.51666666666665" ControlID="4972667446817805193" Canvas.Left="8" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.204662456905412*" />
                <ColumnDefinition Width="0.196712766862761*" />
                <ColumnDefinition Width="0.195392915340669*" />
                <ColumnDefinition Width="0.19988568194474*" />
                <ColumnDefinition Width="0.203346178946419*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.260164117566559*" />
                <RowDefinition Height="0.739835882433441*" />
              </Grid.RowDefinitions>
              <cm:tzDataGrid Name="GVUsersList" Width="612.84870963999992" Height="100" Margin="41.5158453996565,0,57.4625460300001,23.6554331866665" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="4" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
                <cm:tzDataGrid.Resources>
                  <cm:MainCommands x:Key="MainCommands" />
                  <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                </cm:tzDataGrid.Resources>
                <cm:tzDataGrid.Columns>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربری" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="52" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام کامل" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserId" DecimalMark="False" HeaderText="UserId" IsRowColorField="False" KeyField="True" SortMemberPath="UserId">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserId}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                </cm:tzDataGrid.Columns>
              </cm:tzDataGrid>
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999994" Height="22" Margin="0,0,39.0246913599999,9.61446281364971" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList,dschkValidateDefineUser,dschkRepetitiveUser" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="137.892515497587,6,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="3" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzTextBox Name="testCurrentUserID" Width="120" Height="20.999999999999996" Margin="28.4399018774858,10,26.4367573524128,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="testdsGetPrimaryUser" Content="testdsGetPrimaryUser" Width="79.000000000000028" Height="25" Margin="15.2350560674857,29,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5657269477913813573" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:tzTextBox Name="testGvUserID" Width="120.00000000000001" Height="20.999999999999996" Margin="6.55108769965659,7,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="1" Grid.Row="0" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000021" Margin="0,4.99999999999998,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="0" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" cm:Validations="5493887975367381862,5089061314144247302,4773106424939704296,5100119200581656990,5355224923302261185" />
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="22.999999999999993" Margin="0,48.9241733863502,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000028" Height="22.999999999999993" Margin="0,74.9241733863501,15.5009578603436,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23.000000000000014" Margin="0,118.70874759635,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList,dsReadGrid" />
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="45.086449465171881" Height="25" Margin="8,5.99999999999994,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="44.32805893" Height="24.999999999999993" Margin="8.75839053517177,38.9241733863502,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4847051243098475060" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="45.086449465171881" Height="25" Margin="8,70.9241733863502,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4651382184855520842" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="45.086449465171881" Height="24.999999999999986" Margin="8,116.70874759635,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5070253460133905117" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="76.999999999999972" Height="25" Margin="176.67194107,106.92417338635,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dschkValidateDefineUser" Content="dschkValidateDefineUser" Width="65" Height="25" Margin="0,29,170.506838642514,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4826913809166912916" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkValidateDefineUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUserType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateDefineUser" Content="TZCheckBox" Width="58.997797350000553" Height="19.999999999999986" Margin="0,0,170.506838642514,169.516666666667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5518808438273988579" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" Grid.RowSpan="2" cm:DataBinding="dschkValidateDefineUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox16" Width="928" Height="269" ControlID="5222279548185944673" FontFamily="Tahoma" Canvas.Left="22.6460152" Canvas.Top="324.64204271" cm:Header="تعریف کاربر">
          <Canvas Width="911" Height="259.51666667">
            <cm:Grid Width="895" Height="238.32796144" ControlID="5442181342615983493" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.201597434820078*" />
                <RowDefinition Height="0.268031713615649*" />
                <RowDefinition Height="0.270883988014098*" />
                <RowDefinition Height="0.259486863550175*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.201597728972943*" />
                <ColumnDefinition Width="0.203508969837521*" />
                <ColumnDefinition Width="0.1952034288334*" />
                <ColumnDefinition Width="0.198429799795642*" />
                <ColumnDefinition Width="0.201260072560494*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="23" Margin="0,2.45657986779759,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120.00000000000001" Height="21" Margin="23.2299684416419,0,36.8977965000004,8.42287203949002" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5324017381496457775" Grid.Column="4" Grid.Row="1" cm:Event="dschkValidateNationalCode" cm:Len="10" />
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999995" Height="23.000000000000007" Margin="0,2.4565798677975,3.77663948835834,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000009" Height="21.000000000000014" Margin="0,0,25.2092510999998,8.42287203949023" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5615130179215214086" Grid.Column="3" Grid.Row="1" cm:Event="dschkIfFullNameEmpty" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000012" Height="23" Margin="0,2.4565798677975,12.9814311712581,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtMobileNo" Width="120.00000000000003" Height="21" Margin="16.5163865346347,0,38.1906822712582,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5684824784381191923" Grid.Column="2" Grid.Row="1" cm:Event="dschkValidateMobileNumber" cm:Len="11" />
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="119.99999999999999" Height="23" Margin="43.827259369216,10.4565798677972,18.3132686353654,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
              <cm:tzTextBox Name="txtComment" Width="120.00000000000001" Height="20.999999999999993" Margin="28.841936569216,0,33.2985914353653,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5540013699503386460" Grid.Column="1" Grid.Row="1" cm:Len="7" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000083" Height="23" Margin="0,10.4565798677972,16.0214995507839,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
              <cm:tzTextBox Name="txtUnitName" Width="119.99999999999999" Height="21" Margin="32.4040625900001,0,28.0259048407839,8.4228720394903" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="4944790115182803173" Grid.Column="0" Grid.Row="1" cm:Len="100" />
              <cm:tzDataSource Name="dschkValidateNationalCode" Content="dschkValidateNationalCode" Width="53" Height="25" Margin="10.0095112316423,7.38609304051002,117.11825371,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5051561278123939194" Grid.Column="4" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidNationalCode_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateNationalCode" Content="TZCheckBox" Width="48.000000000000021" Height="19.999999999999993" Margin="0,0,47.7017612600004,32.1731356096273" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5149168273184464613" Grid.Column="4" Grid.Row="2" cm:DataBinding="dschkValidateNationalCode" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateMobileNumber" Content="dschkValidateMobileNumber" Width="62" Height="25" Margin="16.5163865346346,22.95328726051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5277903783870964252" Grid.Column="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidMobilePhone_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PhoneNumber" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateMobileNumber" Content="TZCheckBox" Width="59" Height="20" Margin="19.5163865346346,56.95328726051,96.1906822712583,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4616387636366252940" Grid.Column="2" Grid.Row="2" Grid.RowSpan="2" cm:DataBinding="dschkValidateMobileNumber" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkRepetitiveUser" Content="dschkRepetitiveUser" Width="66" Height="24.999999999999996" Margin="15.60465907,12.38609304051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5415250851119077482" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckRepeatedUser_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkRepetitiveUser" Content="TZCheckBox" Width="65.999999999999972" Height="20" Margin="15.60465907,46.38609304051,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4727031311184922478" Grid.Column="0" Grid.Row="2" Grid.RowSpan="2" cm:DataBinding="dschkRepetitiveUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkIfFullNameEmpty" Content="dschkIfFullNameEmpty" Width="55.000000000000014" Height="24.999999999999993" Margin="0,51.95328726051,103.666041218358,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5029765461661542075" Grid.Column="3" Grid.Row="2" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckIfFullNameEmpty_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFullName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkIfFullNameEmpty" Content="TZCheckBox" Width="54.999999999999886" Height="20" Margin="18.9286295987417,22.95328726051,103.666041218358,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5350526849171206919" Grid.Column="3" Grid.Row="2" cm:DataBinding="dschkIfFullNameEmpty" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="22.646015200000079" Canvas.Top="618.03699873" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="892" Height="263" ControlID="4754760739861249072" Canvas.Left="16" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.194764043612276*" />
                <ColumnDefinition Width="0.203663120400458*" />
                <ColumnDefinition Width="0.200635868243102*" />
                <ColumnDefinition Width="0.19802603722504*" />
                <ColumnDefinition Width="0.202910930519123*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.195124535688535*" />
                <RowDefinition Height="0.804875464311465*" />
              </Grid.RowDefinitions>
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25.000000000000018" Margin="0,20.7064832799994,62.6265569221498,0" HorizontalAlignment="Right" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable16" Content="نوع اقدام" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5379568843677110516" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbActionType" Width="119.99999999999997" Height="22.000000000000007" Margin="0,0,43.2158590299999,5.61126960608526" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5692244804204877740" Grid.Column="4" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999989" Margin="0,0,13.5778811969421,5.61126960608523" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4969722946973955324" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVLog" Width="824" Height="177" Margin="33.4361356000006,17.0787228839155,34.5638643999994,17.6035242299998" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" cm:BindingForm="dsReadGrid">
                <cm:tzDataGrid.Resources>
                  <cm:MainCommands x:Key="MainCommands" />
                  <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                </cm:tzDataGrid.Resources>
                <cm:tzDataGrid.Columns>
                  <cm:tzDataGridTemplateColumn Width="25" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="rownumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="rownumber">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding rownumber}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="60" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegDate">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegDate}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="50" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="54" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ActionType" DecimalMark="False" HeaderText="نوع اقدام" IsRowColorField="False" KeyField="False" SortMemberPath="ActionType">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ActionType}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNo" DecimalMark="False" HeaderText="شماره موبایل کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNo">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNo}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Comment" DecimalMark="False" HeaderText="شماره تلفن ثابت اداری کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="Comment">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Comment}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UnitName" DecimalMark="False" HeaderText="پست سازمانی کاربر ویرایش شده" IsRowColorField="False" KeyField="False" SortMemberPath="UnitName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UnitName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                </cm:tzDataGrid.Columns>
              </cm:tzDataGrid>
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/12/05 17:54:11', GUID = 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41611" ,"components": [{"value": "","key": "5350526849171206919","label": "chkIfFullNameEmpty","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4727031311184922478","label": "chkRepetitiveUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5518808438273988579","label": "chkValidateDefineUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4616387636366252940","label": "chkValidateMobileNumber","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5149168273184464613","label": "chkValidateNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5029765461661542075" , "dataSourceName":"dschkIfFullNameEmpty" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckIfFullNameEmpty_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415250851119077482" , "dataSourceName":"dschkRepetitiveUser" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckRepeatedUser_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4826913809166912916" , "dataSourceName":"dschkValidateDefineUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkValidateDefineUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5277903783870964252" , "dataSourceName":"dschkValidateMobileNumber" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidMobilePhone_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5051561278123939194" , "dataSourceName":"dschkValidateNationalCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidNationalCode_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4631033459373652618","label": "testCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"key":"5657269477913813573" , "dataSourceName":"testdsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4671931002698860140","label": "testGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41611
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41611') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41611] ( [frm41611Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5061590753378892400]  [nvarchar] ( 50) NULL , [Col_5324017381496457775]  [nvarchar] ( 10) NULL , [Col_5615130179215214086]  [nvarchar] ( 50) NULL , [Col_5684824784381191923]  [nvarchar] ( 11) NULL , [Col_5540013699503386460]  [nvarchar] ( 7) NULL , [Col_4944790115182803173]  [nvarchar] ( 100) NULL , [Col_5692244804204877740]  [nvarchar] ( 50) NULL , [Col_4671931002698860140]  [nvarchar] ( 50) NULL , [Col_4631033459373652618]  [nvarchar] ( 50) NULL , [Col_5518808438273988579]  [bit] NULL , [Col_5149168273184464613]  [bit] NULL , [Col_4616387636366252940]  [bit] NULL , [Col_4727031311184922478]  [bit] NULL , [Col_5350526849171206919]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm41611Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'frm41611Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD frm41611Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5061590753378892400' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5061590753378892400 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5324017381496457775' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5324017381496457775 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5615130179215214086' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5615130179215214086 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5684824784381191923' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5684824784381191923 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5540013699503386460' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5540013699503386460 nvarchar (7) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4944790115182803173' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4944790115182803173 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5692244804204877740' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5692244804204877740 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4671931002698860140' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4671931002698860140 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4631033459373652618' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4631033459373652618 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5518808438273988579' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5518808438273988579 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5149168273184464613' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5149168273184464613 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4616387636366252940' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4616387636366252940 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4727031311184922478' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4727031311184922478 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5350526849171206919' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5350526849171206919 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41611]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41611
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41611] ( @PKFormId as bigint OUTPUT ,  @Col_5061590753378892400 AS nvarchar(50),  @Col_5324017381496457775 AS nvarchar(10),  @Col_5615130179215214086 AS nvarchar(50),  @Col_5684824784381191923 AS nvarchar(11),  @Col_5540013699503386460 AS nvarchar(7),  @Col_4944790115182803173 AS nvarchar(100),  @Col_5692244804204877740 AS nvarchar(50),  @Col_4671931002698860140 AS nvarchar(50),  @Col_4631033459373652618 AS nvarchar(50),  @Col_5518808438273988579 AS bit,  @Col_5149168273184464613 AS bit,  @Col_4616387636366252940 AS bit,  @Col_4727031311184922478 AS bit,  @Col_5350526849171206919 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41611](Col_5061590753378892400,Col_5324017381496457775,Col_5615130179215214086,Col_5684824784381191923,Col_5540013699503386460,Col_4944790115182803173,Col_5692244804204877740,Col_4671931002698860140,Col_4631033459373652618,Col_5518808438273988579,Col_5149168273184464613,Col_4616387636366252940,Col_4727031311184922478,Col_5350526849171206919) VALUES ( @Col_5061590753378892400,@Col_5324017381496457775,@Col_5615130179215214086,@Col_5684824784381191923,@Col_5540013699503386460,@Col_4944790115182803173,@Col_5692244804204877740,@Col_4671931002698860140,@Col_4631033459373652618,@Col_5518808438273988579,@Col_5149168273184464613,@Col_4616387636366252940,@Col_4727031311184922478,@Col_5350526849171206919 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41611]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41611
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41611] ( @PKFormId as bigint OUTPUT ,  @Col_5061590753378892400 AS nvarchar(50),  @Col_5324017381496457775 AS nvarchar(10),  @Col_5615130179215214086 AS nvarchar(50),  @Col_5684824784381191923 AS nvarchar(11),  @Col_5540013699503386460 AS nvarchar(7),  @Col_4944790115182803173 AS nvarchar(100),  @Col_5692244804204877740 AS nvarchar(50),  @Col_4671931002698860140 AS nvarchar(50),  @Col_4631033459373652618 AS nvarchar(50),  @Col_5518808438273988579 AS bit,  @Col_5149168273184464613 AS bit,  @Col_4616387636366252940 AS bit,  @Col_4727031311184922478 AS bit,  @Col_5350526849171206919 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41611] SET Col_5061590753378892400 =  @Col_5061590753378892400, Col_5324017381496457775 =  @Col_5324017381496457775, Col_5615130179215214086 =  @Col_5615130179215214086, Col_5684824784381191923 =  @Col_5684824784381191923, Col_5540013699503386460 =  @Col_5540013699503386460, Col_4944790115182803173 =  @Col_4944790115182803173, Col_5692244804204877740 =  @Col_5692244804204877740, Col_4671931002698860140 =  @Col_4671931002698860140, Col_4631033459373652618 =  @Col_4631033459373652618, Col_5518808438273988579 =  @Col_5518808438273988579, Col_5149168273184464613 =  @Col_5149168273184464613, Col_4616387636366252940 =  @Col_4616387636366252940, Col_4727031311184922478 =  @Col_4727031311184922478, Col_5350526849171206919 =  @Col_5350526849171206919 WHERE [frm41611Id] = @PKFormId 
 END 
GO
