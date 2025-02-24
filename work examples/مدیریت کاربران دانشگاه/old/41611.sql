GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41611) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41611, N'فرم مدیریت کاربران دانشگاه',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1373.51666667" Background="White">
  <Canvas Width="1008" Height="1075">
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
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="1018.96131089" ControlID="5519051717023168665" Canvas.Left="17.214836080000055" Canvas.Top="28.36822128" cm:Header="">
      <Canvas Width="982" Height="949.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14.000000000000341" Canvas.Top="17.561403509999998" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="908.6460152" Height="263.51666666666665" ControlID="5415189545777635945" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.249181211331193*" />
                <RowDefinition Height="0.750818788668807*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.138875564757576*" />
                <ColumnDefinition Width="0.172151303082234*" />
                <ColumnDefinition Width="0.170942919947613*" />
                <ColumnDefinition Width="0.172668086314328*" />
                <ColumnDefinition Width="0.173236893908752*" />
                <ColumnDefinition Width="0.172125231989498*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="21.3571423326327,-2.34654751000005,15.04376383,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999996" Height="22" Margin="6.14509982263326,0,30.2558063399995,14.0099497159584" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="5" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList,dschkValidateDefineUser,dschkRepetitiveUser" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="0,34.6534524899997,102.41745483,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzTextBox Name="testCurrentUserID" Width="119.99999999999999" Height="20.999999999999996" Margin="18.624524220169,7.65345248999973,18.2696443615547,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="3" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
              <cm:tzTextBox Name="testGvUserID" Width="120.00000000000004" Height="20.999999999999996" Margin="22.9584728472198,7.65345248999972,12.3681301898312,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="testdsGetPrimaryUser" Content="testdsGetPrimaryUser" Width="79.000000000000028" Height="25" Margin="0,0,31.9182930115547,6.00994971595847" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5657269477913813573" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000021" Margin="8,5.6534524899997,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="0" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" cm:Validations="5493887975367381862,5089061314144247302,4773106424939704296,5100119200581656990,5355224923302261185" />
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="45.086449465171874" Height="25" Margin="7.99999999999994,0,0,6.00994971595847" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
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
              <cm:tzDataSource Name="dschkValidateDefineUser" Content="dschkValidateDefineUser" Width="65" Height="25" Margin="62.0707000593795,3.65345248999972,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4826913809166912916" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkValidateDefineUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUserType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateDefineUser" Content="TZCheckBox" Width="58.997797350000553" Height="20" Margin="0,0,29.3538954977797,16.0099497159585" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5518808438273988579" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkValidateDefineUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              <cm:TZCheckBox Name="chkRepetitiveUser" Content="TZCheckBox" Width="65.999999999999972" Height="19.999999999999993" Margin="89.1307607449995,50.6534524899997,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4727031311184922478" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" Grid.RowSpan="2" cm:DataBinding="dschkRepetitiveUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkRepetitiveUser" Content="dschkRepetitiveUser" Width="66" Height="25" Margin="89.1307607449995,16.6534524899997,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5415250851119077482" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckRepeatedUser_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVUsersList" Width="748.84870964" Height="100" Margin="18.5648132043791,0,15.04376383,43.9136049366667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="5" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
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
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="65.086449469999991" Height="25.000000000000014" Margin="112.56854839,164.853264460708,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5070253460133905117" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
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
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="76.999999999999972" Height="25" Margin="0,27.9396595240418,17.3538954977797,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="104.08644947" Height="25" Margin="0,0,65.9583262227801,34.0000000000005" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4651382184855520842" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="75.32805893" Height="25" Margin="111.931369655001,112.853264460708,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4847051243098475060" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="23" Margin="0,53.9396595240417,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000028" Height="23" Margin="0,88.853264460708,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23" Margin="0,0,0,60.0000000000005" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList,dsReadGrid" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox16" Width="928" Height="269" ControlID="5222279548185944673" FontFamily="Tahoma" Canvas.Left="14.000000000000455" Canvas.Top="337.36461988999986" cm:Header="تعریف کاربر">
          <Canvas Width="911" Height="259.51666667">
            <cm:Grid Width="895" Height="243.51666667" ControlID="5753724910616130941" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.197134906091341*" />
                <RowDefinition Height="0.396545892735311*" />
                <RowDefinition Height="0.406319201173348*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.160411379103166*" />
                <ColumnDefinition Width="0.155900516688518*" />
                <ColumnDefinition Width="0.170099233346933*" />
                <ColumnDefinition Width="0.17297586430711*" />
                <ColumnDefinition Width="0.168383082944933*" />
                <ColumnDefinition Width="0.17222992360934*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="23" Margin="0,4.26091748433333,23.2079596699994,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120" Height="20.999999999999993" Margin="10.93782196036,28.2609174843333,23.2079596699994,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5324017381496457775" Grid.Column="5" Grid.Row="1" cm:Event="dschkValidateNationalCode" cm:Len="10" />
              <cm:TZCheckBox Name="chkValidateNationalCode" Content="TZCheckBox" Width="48.000000000000014" Height="19.999999999999993" Margin="0,0,23.207959669999,12.1888171862491" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5149168273184464613" Grid.Column="5" Grid.Row="1" cm:DataBinding="dschkValidateNationalCode" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateNationalCode" Content="dschkValidateNationalCode" Width="53.000000000000007" Height="25" Margin="10.9378219603603,0,0,12.1888171862491" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5051561278123939194" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidNationalCode_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999997" Height="23.000000000000007" Margin="34.6014087360745,4.26091748433345,7.59798629964052,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000007" Height="21.000000000000014" Margin="8.70524687607428,28.2609174843334,21.9976123596406,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5615130179215214086" Grid.Column="4" Grid.Row="1" cm:Event="dschkIfFullNameEmpty" />
              <cm:TZCheckBox Name="chkIfFullNameEmpty" Content="TZCheckBox" Width="54.999999999999886" Height="20" Margin="0,0,13.5591836996406,12.1888171862493" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5350526849171206919" Grid.Column="4" Grid.Row="1" cm:DataBinding="dschkIfFullNameEmpty" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkIfFullNameEmpty" Content="dschkIfFullNameEmpty" Width="55.000000000000028" Height="24.999999999999993" Margin="18.1436755360747,0,0,7.18881718624937" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5029765461661542075" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckIfFullNameEmpty_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFullName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateMobileNumber" Content="TZCheckBox" Width="59.000000000000007" Height="19.999999999999996" Margin="0,80.3767167943328,22.4466014439246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4616387636366252940" Grid.Column="3" Grid.Row="1" Grid.RowSpan="2" cm:DataBinding="dschkValidateMobileNumber" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateMobileNumber" Content="dschkValidateMobileNumber" Width="61.999999999999986" Height="24.999999999999993" Margin="2.36679711093893,0,0,7.18881718624937" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5277903783870964252" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidMobilePhone_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PhoneNumber" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="120" Height="23" Margin="22.7727745464433,4.26091748433345,9.46603929906172,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtComment" Width="120" Height="20.999999999999993" Margin="11.272151176443,28.2609174843334,20.966662669062,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5540013699503386460" Grid.Column="2" Grid.Row="1" cm:Len="7" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000083" Height="23" Margin="33.0669522526667,4.26091748433345,11.9828784935568,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
              <cm:tzTextBox Name="txtUnitName" Width="120.00000000000001" Height="21" Margin="7.54808394266684,32.3767167943327,11.9828784935568,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4944790115182803173" Grid.Column="1" Grid.Row="1" cm:Len="100" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000055" Height="23.000000000000004" Margin="29.0953428409386,8.37671679433282,31.2369240239248,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtMobileNo" Width="120.00000000000007" Height="21" Margin="12.3667971109389,32.3767167943327,22.4466014439245,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5684824784381191923" Grid.Column="3" Grid.Row="1" cm:Event="dschkValidateMobileNumber" cm:Len="11" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="14.000000000000831" Canvas.Top="626.51959064999983" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="900" Height="268.51666666666665" ControlID="5436620168894270118" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.226565261844541*" />
                <RowDefinition Height="0.773434738155458*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.146873246873229*" />
                <ColumnDefinition Width="0.165903687963705*" />
                <ColumnDefinition Width="0.165220862837911*" />
                <ColumnDefinition Width="0.174740759120353*" />
                <ColumnDefinition Width="0.173342247444703*" />
                <ColumnDefinition Width="0.1739191957601*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable16" Content="نوع اقدام" Width="120" Height="23" Margin="28.5272761840898,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5379568843677110516" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbActionType" Width="120" Height="22.000000000000007" Margin="10.0315578740897,0,26.4957183100001,6.83654889295672" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5692244804204877740" Grid.Column="5" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999986" Margin="0,0,13.82412263591,6.83654889295695" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4969722946973955324" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVLog" Width="860" Height="177" Margin="21.1476613399999,22.6801177737099,18.8523386600001,8" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" cm:BindingForm="dsReadGrid">
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
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25.000000000000014" Margin="21.1476613399999,39.2361359499996,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="0" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',0,'1403/12/06 11:46:42', 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', 0, N'', N'{"formID": "41611" ,"components": [{"value": "","key": "5350526849171206919","label": "chkIfFullNameEmpty","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4727031311184922478","label": "chkRepetitiveUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5518808438273988579","label": "chkValidateDefineUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4616387636366252940","label": "chkValidateMobileNumber","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5149168273184464613","label": "chkValidateNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5029765461661542075" , "dataSourceName":"dschkIfFullNameEmpty" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckIfFullNameEmpty_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415250851119077482" , "dataSourceName":"dschkRepetitiveUser" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckRepeatedUser_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4826913809166912916" , "dataSourceName":"dschkValidateDefineUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkValidateDefineUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5277903783870964252" , "dataSourceName":"dschkValidateMobileNumber" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidMobilePhone_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5051561278123939194" , "dataSourceName":"dschkValidateNationalCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidNationalCode_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4631033459373652618","label": "testCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"key":"5657269477913813573" , "dataSourceName":"testdsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4671931002698860140","label": "testGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم مدیریت کاربران دانشگاه',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1373.51666667" Background="White">
  <Canvas Width="1008" Height="1075">
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
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="1018.96131089" ControlID="5519051717023168665" Canvas.Left="17.214836080000055" Canvas.Top="28.36822128" cm:Header="">
      <Canvas Width="982" Height="949.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14.000000000000341" Canvas.Top="17.561403509999998" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="908.6460152" Height="263.51666666666665" ControlID="5415189545777635945" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.249181211331193*" />
                <RowDefinition Height="0.750818788668807*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.138875564757576*" />
                <ColumnDefinition Width="0.172151303082234*" />
                <ColumnDefinition Width="0.170942919947613*" />
                <ColumnDefinition Width="0.172668086314328*" />
                <ColumnDefinition Width="0.173236893908752*" />
                <ColumnDefinition Width="0.172125231989498*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="21.3571423326327,-2.34654751000005,15.04376383,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999996" Height="22" Margin="6.14509982263326,0,30.2558063399995,14.0099497159584" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="5" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList,dschkValidateDefineUser,dschkRepetitiveUser" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="0,34.6534524899997,102.41745483,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzTextBox Name="testCurrentUserID" Width="119.99999999999999" Height="20.999999999999996" Margin="18.624524220169,7.65345248999973,18.2696443615547,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="3" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="False" />
              <cm:tzTextBox Name="testGvUserID" Width="120.00000000000004" Height="20.999999999999996" Margin="22.9584728472198,7.65345248999972,12.3681301898312,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="2" Grid.Row="0" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="testdsGetPrimaryUser" Content="testdsGetPrimaryUser" Width="79.000000000000028" Height="25" Margin="0,0,31.9182930115547,6.00994971595847" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5657269477913813573" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000021" Margin="8,5.6534524899997,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="0" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" cm:Validations="5493887975367381862,5089061314144247302,4773106424939704296,5100119200581656990,5355224923302261185" />
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="45.086449465171874" Height="25" Margin="7.99999999999994,0,0,6.00994971595847" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
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
              <cm:tzDataSource Name="dschkValidateDefineUser" Content="dschkValidateDefineUser" Width="65" Height="25" Margin="62.0707000593795,3.65345248999972,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4826913809166912916" Grid.Column="1" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_chkValidateDefineUser_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @cmbUserType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateDefineUser" Content="TZCheckBox" Width="58.997797350000553" Height="20" Margin="0,0,29.3538954977797,16.0099497159585" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5518808438273988579" Grid.Column="1" Grid.Row="0" cm:DataBinding="dschkValidateDefineUser" cm:DataBindingField="res" cm:IsVisibleItem="False" />
              <cm:TZCheckBox Name="chkRepetitiveUser" Content="TZCheckBox" Width="65.999999999999972" Height="19.999999999999993" Margin="89.1307607449995,50.6534524899997,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4727031311184922478" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" Grid.RowSpan="2" cm:DataBinding="dschkRepetitiveUser" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkRepetitiveUser" Content="dschkRepetitiveUser" Width="66" Height="25" Margin="89.1307607449995,16.6534524899997,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5415250851119077482" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckRepeatedUser_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVUsersList" Width="748.84870964" Height="100" Margin="18.5648132043791,0,15.04376383,43.9136049366667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="5" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
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
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="65.086449469999991" Height="25.000000000000014" Margin="112.56854839,164.853264460708,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5070253460133905117" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
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
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="76.999999999999972" Height="25" Margin="0,27.9396595240418,17.3538954977797,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="104.08644947" Height="25" Margin="0,0,65.9583262227801,34.0000000000005" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4651382184855520842" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="75.32805893" Height="25" Margin="111.931369655001,112.853264460708,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4847051243098475060" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="23" Margin="0,53.9396595240417,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000028" Height="23" Margin="0,88.853264460708,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23" Margin="0,0,0,60.0000000000005" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList,dsReadGrid" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox16" Width="928" Height="269" ControlID="5222279548185944673" FontFamily="Tahoma" Canvas.Left="14.000000000000455" Canvas.Top="337.36461988999986" cm:Header="تعریف کاربر">
          <Canvas Width="911" Height="259.51666667">
            <cm:Grid Width="895" Height="243.51666667" ControlID="5753724910616130941" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.197134906091341*" />
                <RowDefinition Height="0.396545892735311*" />
                <RowDefinition Height="0.406319201173348*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.160411379103166*" />
                <ColumnDefinition Width="0.155900516688518*" />
                <ColumnDefinition Width="0.170099233346933*" />
                <ColumnDefinition Width="0.17297586430711*" />
                <ColumnDefinition Width="0.168383082944933*" />
                <ColumnDefinition Width="0.17222992360934*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="23" Margin="0,4.26091748433333,23.2079596699994,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120" Height="20.999999999999993" Margin="10.93782196036,28.2609174843333,23.2079596699994,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5324017381496457775" Grid.Column="5" Grid.Row="1" cm:Event="dschkValidateNationalCode" cm:Len="10" />
              <cm:TZCheckBox Name="chkValidateNationalCode" Content="TZCheckBox" Width="48.000000000000014" Height="19.999999999999993" Margin="0,0,23.207959669999,12.1888171862491" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5149168273184464613" Grid.Column="5" Grid.Row="1" cm:DataBinding="dschkValidateNationalCode" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateNationalCode" Content="dschkValidateNationalCode" Width="53.000000000000007" Height="25" Margin="10.9378219603603,0,0,12.1888171862491" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5051561278123939194" Grid.Column="5" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidNationalCode_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999997" Height="23.000000000000007" Margin="34.6014087360745,4.26091748433345,7.59798629964052,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="4" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000007" Height="21.000000000000014" Margin="8.70524687607428,28.2609174843334,21.9976123596406,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5615130179215214086" Grid.Column="4" Grid.Row="1" cm:Event="dschkIfFullNameEmpty" />
              <cm:TZCheckBox Name="chkIfFullNameEmpty" Content="TZCheckBox" Width="54.999999999999886" Height="20" Margin="0,0,13.5591836996406,12.1888171862493" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5350526849171206919" Grid.Column="4" Grid.Row="1" cm:DataBinding="dschkIfFullNameEmpty" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkIfFullNameEmpty" Content="dschkIfFullNameEmpty" Width="55.000000000000028" Height="24.999999999999993" Margin="18.1436755360747,0,0,7.18881718624937" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5029765461661542075" Grid.Column="4" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckIfFullNameEmpty_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @txtFullName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:TZCheckBox Name="chkValidateMobileNumber" Content="TZCheckBox" Width="59.000000000000007" Height="19.999999999999996" Margin="0,80.3767167943328,22.4466014439246,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4616387636366252940" Grid.Column="3" Grid.Row="1" Grid.RowSpan="2" cm:DataBinding="dschkValidateMobileNumber" cm:DataBindingField="Res" cm:IsVisibleItem="False" />
              <cm:tzDataSource Name="dschkValidateMobileNumber" Content="dschkValidateMobileNumber" Width="61.999999999999986" Height="24.999999999999993" Margin="2.36679711093893,0,0,7.18881718624937" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5277903783870964252" Grid.Column="3" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_CheckValidMobilePhone_Frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @PhoneNumber" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="120" Height="23" Margin="22.7727745464433,4.26091748433345,9.46603929906172,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtComment" Width="120" Height="20.999999999999993" Margin="11.272151176443,28.2609174843334,20.966662669062,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5540013699503386460" Grid.Column="2" Grid.Row="1" cm:Len="7" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000083" Height="23" Margin="33.0669522526667,4.26091748433345,11.9828784935568,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
              <cm:tzTextBox Name="txtUnitName" Width="120.00000000000001" Height="21" Margin="7.54808394266684,32.3767167943327,11.9828784935568,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4944790115182803173" Grid.Column="1" Grid.Row="1" cm:Len="100" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000055" Height="23.000000000000004" Margin="29.0953428409386,8.37671679433282,31.2369240239248,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtMobileNo" Width="120.00000000000007" Height="21" Margin="12.3667971109389,32.3767167943327,22.4466014439245,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5684824784381191923" Grid.Column="3" Grid.Row="1" cm:Event="dschkValidateMobileNumber" cm:Len="11" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="14.000000000000831" Canvas.Top="626.51959064999983" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="900" Height="268.51666666666665" ControlID="5436620168894270118" Canvas.Left="8" Canvas.Top="8">
              <Grid.RowDefinitions>
                <RowDefinition Height="0.226565261844541*" />
                <RowDefinition Height="0.773434738155458*" />
              </Grid.RowDefinitions>
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.146873246873229*" />
                <ColumnDefinition Width="0.165903687963705*" />
                <ColumnDefinition Width="0.165220862837911*" />
                <ColumnDefinition Width="0.174740759120353*" />
                <ColumnDefinition Width="0.173342247444703*" />
                <ColumnDefinition Width="0.1739191957601*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable16" Content="نوع اقدام" Width="120" Height="23" Margin="28.5272761840898,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5379568843677110516" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbActionType" Width="120" Height="22.000000000000007" Margin="10.0315578740897,0,26.4957183100001,6.83654889295672" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5692244804204877740" Grid.Column="5" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999986" Margin="0,0,13.82412263591,6.83654889295695" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4969722946973955324" Grid.Column="4" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzDataGrid Name="GVLog" Width="860" Height="177" Margin="21.1476613399999,22.6801177737099,18.8523386600001,8" HorizontalAlignment="Right" VerticalAlignment="Stretch" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" cm:BindingForm="dsReadGrid">
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
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25.000000000000014" Margin="21.1476613399999,39.2361359499996,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="0" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/12/06 11:46:42', GUID = 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41611" ,"components": [{"value": "","key": "5350526849171206919","label": "chkIfFullNameEmpty","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "4727031311184922478","label": "chkRepetitiveUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5518808438273988579","label": "chkValidateDefineUser","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "res"},{"value": "","key": "4616387636366252940","label": "chkValidateMobileNumber","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"value": "","key": "5149168273184464613","label": "chkValidateNationalCode","controlType": "checkbox","caption": "TZCheckBox" ,"DataBindingField" : "Res"},{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5029765461661542075" , "dataSourceName":"dschkIfFullNameEmpty" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckIfFullNameEmpty_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5415250851119077482" , "dataSourceName":"dschkRepetitiveUser" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckRepeatedUser_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4826913809166912916" , "dataSourceName":"dschkValidateDefineUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_chkValidateDefineUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5277903783870964252" , "dataSourceName":"dschkValidateMobileNumber" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidMobilePhone_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5051561278123939194" , "dataSourceName":"dschkValidateNationalCode" , "controlType": "datasource",  "selectQuery" :"SP_CU_CheckValidNationalCode_Frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "$CurrentUserId","key": "4631033459373652618","label": "testCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"key":"5657269477913813573" , "dataSourceName":"testdsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4671931002698860140","label": "testGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41611
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
