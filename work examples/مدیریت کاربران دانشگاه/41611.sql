GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41611) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41611, N'فرم مدیریت کاربران دانشگاه',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1063.51666667" Background="White">
  <Canvas Width="1008" Height="1021">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="985.96131089" ControlID="5519051717023168665" Canvas.Left="17.21483608" Canvas.Top="27.03868911" cm:Header="">
      <Canvas Width="982" Height="946.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14" Canvas.Top="8" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="895" Height="244.51666666666665" ControlID="4972667446817805193" Canvas.Left="8" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.237739755060472*" />
                <ColumnDefinition Width="0.253067711688465*" />
                <ColumnDefinition Width="0.254877929625196*" />
                <ColumnDefinition Width="0.254314603625867*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.260164117566559*" />
                <RowDefinition Height="0.739835882433441*" />
              </Grid.RowDefinitions>
              <cm:tzDataGrid Name="GVUsersList" Width="475.99999999999994" Height="100" Margin="0,37.9850523263499,18.0066079300002,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="3" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
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
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="0,7.99999999999994,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999994" Height="22" Margin="0,0,45.6167400899999,9.61446281364965" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000018" Margin="36.8869516999999,9.29547827635034,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="1" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="23" Margin="36.8869516999999,37.9850523263498,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000014" Height="23" Margin="36.8869516999999,69.9850523263497,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23.000000000000004" Margin="36.8869516999999,101.98505232635,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="0,29.0000000000002,181.48566051,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="77" Height="25" Margin="0,93.9850523263502,79.5588914502986,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="69.000000000000014" Height="24.999999999999993" Margin="9.33201623956113,7.29547827635041,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
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
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="68.9999999995611" Height="25" Margin="9.33201624,0,0,119.917151526667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4847051243098475060" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="68.999999999561012" Height="25" Margin="0,0,134.445064539561,87.9171515266667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4651382184855520842" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="68.99999999956151" Height="25" Margin="9.33201624,0,0,55.9171515266667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5070253460133905117" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
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
              <cm:tzTextBox Name="txtGvUserID" Width="120" Height="21" Margin="34.2743261608775,15.9850523263498,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="1" Grid.Row="1" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="True" />
              <cm:tzDataSource Name="dsGetPrimaryUser" Content="dsGetPrimaryUser" Width="79.000000000000014" Height="24.999999999999993" Margin="0,45.5995151399995,106.128000310298,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5657269477913813573" Grid.Column="1" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:tzTextBox Name="txtCurrentUserID" Width="120" Height="21" Margin="47.2786645608777,15.5995151399995,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="1" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="True" />
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
                <ColumnDefinition Width="0.25622524777313*" />
                <ColumnDefinition Width="0.247513127846517*" />
                <ColumnDefinition Width="0.245374401474081*" />
                <ColumnDefinition Width="0.250887222906272*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable33" Content="نوع کاربر" Width="54" Height="23" Margin="0,8,21.2920696300004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5671631331961875904" Grid.Column="3" Grid.Row="0" cm:IsVisibleItem="False" />
              <cm:tzLookUpComboBox Name="cmbUserTypeDefine" Width="120.00000000000006" Height="22" Margin="20.2519948711129,0,0,4.00743005220309" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5038393170354262335" Grid.Column="3" Grid.Row="0" cm:IsVisibleItem="False" />
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="22.999999999999996" Margin="0,6.20245509779747,21.2920696300005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120" Height="21" Margin="0,0,84.2920696300004,5.29788655949022" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5324017381496457775" Grid.Column="3" Grid.Row="1" cm:Len="10" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000041" Height="23" Margin="0,3.70211344050972,21.2920696300005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
              <cm:tzTextBox Name="txtMobileNo" Width="120" Height="21" Margin="0,0,84.2920696300004,7.85711520962786" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5684824784381191923" Grid.Column="3" Grid.Row="2" cm:Len="11" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000041" Height="23" Margin="0,7.67576165037269,21.2920696300007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" />
              <cm:tzTextBox Name="txtUnitName" Width="120" Height="21" Margin="0,0,84.2920696300002,8" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4944790115182803173" Grid.Column="3" Grid.Row="3" />
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999997" Height="23.000000000000007" Margin="0,5.58156534779722,9.28240912888646,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000009" Height="21.000000000000014" Margin="0,0,85.1818288588859,5.29788655949021" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5615130179215214086" Grid.Column="2" Grid.Row="1" />
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="120" Height="23" Margin="0,3.70211344050949,9.28240912888646,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
              <cm:tzTextBox Name="txtComment" Width="120.00000000000004" Height="20.999999999999993" Margin="0,0,85.1818288588855,7.85711520962798" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5540013699503386460" Grid.Column="2" Grid.Row="2" cm:Len="7" />
              <cm:tzDataSource Name="dsUserTypeDefine" Content="dsUserTypeDefine" Width="78" Height="25" Margin="141.327680190416,0,0,3.41843465220246" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4933998011076535708" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="22.646015200000079" Canvas.Top="618.03699873" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="892" Height="263" ControlID="4754760739861249072" Canvas.Left="16" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.247699205260438*" />
                <ColumnDefinition Width="0.254467282083208*" />
                <ColumnDefinition Width="0.24916588037314*" />
                <ColumnDefinition Width="0.248667632283213*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.195124535688535*" />
                <RowDefinition Height="0.804875464311465*" />
              </Grid.RowDefinitions>
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25" Margin="96.99284979769,52.9881039439156,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999993" Margin="187.869331809468,18.5422993500004,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4969722946973955324" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzLookUpComboBox Name="cmbActionType" Width="119.99999999999999" Height="22.000000000000007" Margin="0,21.5422993500002,31.4649727599995,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5692244804204877740" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataGrid Name="GVLog" Width="434.00000000000006" Height="177" Margin="0,10.6822471139156,43.1727683099996,23.9999999999997" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="3" Grid.Row="1" cm:BindingForm="dsReadGrid">
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
                  <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNo" DecimalMark="False" HeaderText="شماره موبایل" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNo">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNo}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Comment" DecimalMark="False" HeaderText="شماره تلفن ثابت اداری" IsRowColorField="False" KeyField="False" SortMemberPath="Comment">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Comment}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UnitName" DecimalMark="False" HeaderText="پست سازمانی" IsRowColorField="False" KeyField="False" SortMemberPath="UnitName">
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
</cm:TZBaseControl>',0,'1403/12/04 18:03:39', 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', 0, N'', N'{"formID": "41611" ,"components": [{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key": "5038393170354262335","label": "cmbUserTypeDefine","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5657269477913813573" , "dataSourceName":"dsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4933998011076535708" , "dataSourceName":"dsUserTypeDefine" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4631033459373652618","label": "txtCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4671931002698860140","label": "txtGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم مدیریت کاربران دانشگاه',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1059" Height="1063.51666667" Background="White">
  <Canvas Width="1008" Height="1021">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox34" Width="973" Height="985.96131089" ControlID="5519051717023168665" Canvas.Left="17.21483608" Canvas.Top="27.03868911" cm:Header="">
      <Canvas Width="982" Height="946.51666667">
        <cm:TzGroupBox Name="GroupBox15" Width="936.6460152" Height="301" ControlID="4810170904445914694" FontFamily="Tahoma" Canvas.Left="14" Canvas.Top="8" cm:Header="مدیریت کاربران دانشگاه">
          <Canvas>
            <cm:Grid Width="895" Height="244.51666666666665" ControlID="4972667446817805193" Canvas.Left="8" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.237739755060472*" />
                <ColumnDefinition Width="0.253067711688465*" />
                <ColumnDefinition Width="0.254877929625196*" />
                <ColumnDefinition Width="0.254314603625867*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.260164117566559*" />
                <RowDefinition Height="0.739835882433441*" />
              </Grid.RowDefinitions>
              <cm:tzDataGrid Name="GVUsersList" Width="475.99999999999994" Height="100" Margin="0,37.9850523263499,18.0066079300002,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4681847857853830638" ItemsSource="{Binding ElementName=dsGVUsersList, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="3" Grid.Row="1" cm:BindingForm="dsGVUsersList" cm:Event="dsGetPrimaryUser" cm:KeyField="UserId">
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
              <cm:tzLabel Name="Lable23" Content="نوع کاربر" Width="120" Height="23" Margin="0,7.99999999999994,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5606035808766901731" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
              <cm:tzLookUpComboBox Name="cmbUserType" Width="119.99999999999994" Height="22" Margin="0,0,45.6167400899999,9.61446281364965" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5061590753378892400" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsUserType" cm:Event="dsGVUsersList" cm:tzDisplayItem="GroupType" cm:tzValueItem="GroupTypeID" />
              <cm:TZButton Name="BtnDefineNewUser" Content="کاربر جدید" Width="75" Height="23.000000000000018" Margin="36.8869516999999,9.29547827635034,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4645696912971194596" Grid.Column="0" Grid.Row="1" cm:Event="dsDefineNewUser,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnDisable" Content="غیر فعال سازی" Width="75" Height="23" Margin="36.8869516999999,37.9850523263498,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5342605544151783265" Grid.Column="0" Grid.Row="1" cm:Event="dsDisable,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnChangePassword" Content="تغییر رمز به 123" Width="75.000000000000014" Height="23" Margin="36.8869516999999,69.9850523263497,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5559011656968407746" Grid.Column="0" Grid.Row="1" cm:Event="dsChangePass,dsGVUsersList,dsReadGrid" />
              <cm:TZButton Name="BtnEdit" Content="ویرایش" Width="75.000000000000028" Height="23.000000000000004" Margin="36.8869516999999,101.98505232635,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5655862355795594039" Grid.Column="0" Grid.Row="1" cm:Event="dsEdit,dsGVUsersList" />
              <cm:tzDataSource Name="dsUserType" Content="dsUserType" Width="86" Height="25" Margin="0,29.0000000000002,181.48566051,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4692943736430155991" FontWeight="Bold" Foreground="#FFFF0000" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UserType_frm41611" />
              <cm:tzDataSource Name="dsGVUsersList" Content="dsGVUsersList" Width="77" Height="25" Margin="0,93.9850523263502,79.5588914502986,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4965164211197138220" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_GetUserinfo_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @GroupTypeID" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsDefineNewUser" Content="dsDefineNewUser" Width="69.000000000000014" Height="24.999999999999993" Margin="9.33201623956113,7.29547827635041,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5446222662309657061" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DefineNewUser_frm41611_and_Log">
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
              <cm:tzDataSource Name="dsDisable" Content="dsDisable" Width="68.9999999995611" Height="25" Margin="9.33201624,0,0,119.917151526667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4847051243098475060" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_DisableUser_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @user" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserId" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsChangePass" Content="dsChangePass" Width="68.999999999561012" Height="25" Margin="0,0,134.445064539561,87.9171515266667" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4651382184855520842" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ChangePassTo_123_frm41611_And_Log">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@GVUsersList}" IsOutputParameter="False" ParameterType="int" SpParamName=" @User" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" (@UserID)" IsOutputParameter="False" ParameterType="int" SpParamName=" @RegUser" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbUserType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @UserTypeID" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtNationalCode}" IsOutputParameter="False" ParameterType="int" SpParamName=" @NationalCode" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtFullName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @FullName" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtMobileNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @MobileNo" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtComment}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @Comment" />
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtUnitName}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName=" @UnitName" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsEdit" Content="dsEdit" Width="68.99999999956151" Height="25" Margin="9.33201624,0,0,55.9171515266667" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5070253460133905117" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_UpdateUser_frm41611">
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
              <cm:tzTextBox Name="txtGvUserID" Width="120" Height="21" Margin="34.2743261608775,15.9850523263498,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4671931002698860140" Grid.Column="1" Grid.Row="1" cm:DataBinding="dsGetPrimaryUser" cm:DataBindingField="Column1" cm:IsVisibleItem="True" />
              <cm:tzDataSource Name="dsGetPrimaryUser" Content="dsGetPrimaryUser" Width="79.000000000000014" Height="24.999999999999993" Margin="0,45.5995151399995,106.128000310298,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5657269477913813573" Grid.Column="1" Grid.Row="0" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@GVUsersList}" />
              <cm:tzTextBox Name="txtCurrentUserID" Width="120" Height="21" Margin="47.2786645608777,15.5995151399995,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4631033459373652618" Grid.Column="1" Grid.Row="0" cm:DefaultValue="$CurrentUserId" cm:IsVisibleItem="True" />
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
                <ColumnDefinition Width="0.25622524777313*" />
                <ColumnDefinition Width="0.247513127846517*" />
                <ColumnDefinition Width="0.245374401474081*" />
                <ColumnDefinition Width="0.250887222906272*" />
              </Grid.ColumnDefinitions>
              <cm:tzLabel Name="Lable33" Content="نوع کاربر" Width="54" Height="23" Margin="0,8,21.2920696300004,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5671631331961875904" Grid.Column="3" Grid.Row="0" cm:IsVisibleItem="False" />
              <cm:tzLookUpComboBox Name="cmbUserTypeDefine" Width="120.00000000000006" Height="22" Margin="20.2519948711129,0,0,4.00743005220309" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5038393170354262335" Grid.Column="3" Grid.Row="0" cm:IsVisibleItem="False" />
              <cm:tzLabel Name="Lable32" Content="کد ملی" Width="51.118253710000033" Height="22.999999999999996" Margin="0,6.20245509779747,21.2920696300005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5258588753643539523" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
              <cm:tzTextBox Name="txtNationalCode" Width="120" Height="21" Margin="0,0,84.2920696300004,5.29788655949022" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5324017381496457775" Grid.Column="3" Grid.Row="1" cm:Len="10" />
              <cm:tzLabel Name="Lable36" Content="شماره تلفن همراه" Width="94.481131690000041" Height="23" Margin="0,3.70211344050972,21.2920696300005,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5502556304051021086" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
              <cm:tzTextBox Name="txtMobileNo" Width="120" Height="21" Margin="0,0,84.2920696300004,7.85711520962786" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5684824784381191923" Grid.Column="3" Grid.Row="2" cm:Len="11" />
              <cm:tzLabel Name="Lable41" Content="پست سازمانی" Width="94.481131690000041" Height="23" Margin="0,7.67576165037269,21.2920696300007,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5480905144509920304" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" />
              <cm:tzTextBox Name="txtUnitName" Width="120" Height="21" Margin="0,0,84.2920696300002,8" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4944790115182803173" Grid.Column="3" Grid.Row="3" />
              <cm:tzLabel Name="Lable34" Content="نام و نام خانوادگی" Width="108.50346419999997" Height="23.000000000000007" Margin="0,5.58156534779722,9.28240912888646,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5331256032938942622" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
              <cm:tzTextBox Name="txtFullName" Width="120.00000000000009" Height="21.000000000000014" Margin="0,0,85.1818288588859,5.29788655949021" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5615130179215214086" Grid.Column="2" Grid.Row="1" />
              <cm:tzLabel Name="Lable30" Content="شماره تلفن ثابت اداری" Width="120" Height="23" Margin="0,3.70211344050949,9.28240912888646,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4878730191056874538" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
              <cm:tzTextBox Name="txtComment" Width="120.00000000000004" Height="20.999999999999993" Margin="0,0,85.1818288588855,7.85711520962798" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5540013699503386460" Grid.Column="2" Grid.Row="2" cm:Len="7" />
              <cm:tzDataSource Name="dsUserTypeDefine" Content="dsUserTypeDefine" Width="78" Height="25" Margin="141.327680190416,0,0,3.41843465220246" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4933998011076535708" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select 1" />
            </cm:Grid>
          </Canvas>
        </cm:TzGroupBox>
        <cm:TzGroupBox Name="GroupBox46" Width="927.99999999999989" Height="306" ControlID="5121657474042609044" Canvas.Left="22.646015200000079" Canvas.Top="618.03699873" cm:Header="لاگ">
          <Canvas>
            <cm:Grid Width="892" Height="263" ControlID="4754760739861249072" Canvas.Left="16" Canvas.Top="8">
              <Grid.ColumnDefinitions>
                <ColumnDefinition Width="0.247699205260438*" />
                <ColumnDefinition Width="0.254467282083208*" />
                <ColumnDefinition Width="0.24916588037314*" />
                <ColumnDefinition Width="0.248667632283213*" />
              </Grid.ColumnDefinitions>
              <Grid.RowDefinitions>
                <RowDefinition Height="0.195124535688535*" />
                <RowDefinition Height="0.804875464311465*" />
              </Grid.RowDefinitions>
              <cm:tzDataSource Name="dsReadGrid" Content="dsReadGrid" Width="77.666834379999983" Height="25" Margin="96.99284979769,52.9881039439156,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FFDDDDDD" ControlID="5111088283680735503" Grid.Column="1" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ReadLog_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue>
                  <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbActionType}" IsOutputParameter="False" ParameterType="int" SpParamName=" @ActionType" />
                </cm:tzDataSource.StoredProcedureParameterValue>
              </cm:tzDataSource>
              <cm:tzDataSource Name="dsActionTypes" Content="dsActionTypes" Width="86" Height="24.999999999999993" Margin="187.869331809468,18.5422993500004,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4969722946973955324" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="sp_cu_ActionTypes_frm41611">
                <cm:tzDataSource.StoredProcedureParameterValue />
              </cm:tzDataSource>
              <cm:tzLookUpComboBox Name="cmbActionType" Width="119.99999999999999" Height="22.000000000000007" Margin="0,21.5422993500002,31.4649727599995,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5692244804204877740" Grid.Column="3" Grid.Row="0" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsActionTypes" cm:DataType="NVarChar" cm:Event="dsReadGrid" cm:tzDisplayItem="title" cm:tzValueItem="id" />
              <cm:tzDataGrid Name="GVLog" Width="434.00000000000006" Height="177" Margin="0,10.6822471139156,43.1727683099996,23.9999999999997" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4881889694023335445" ItemsSource="{Binding ElementName=dsReadGrid, Path=DataItems}" Grid.Column="1" Grid.ColumnSpan="3" Grid.Row="1" cm:BindingForm="dsReadGrid">
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
                  <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کد ملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNo" DecimalMark="False" HeaderText="شماره موبایل" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNo">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNo}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="61" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Comment" DecimalMark="False" HeaderText="شماره تلفن ثابت اداری" IsRowColorField="False" KeyField="False" SortMemberPath="Comment">
                    <cm:tzDataGridTemplateColumn.CellTemplate>
                      <cm:TzDataTemplate>
                        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Comment}" TextWrapping="Wrap" />
                      </cm:TzDataTemplate>
                    </cm:tzDataGridTemplateColumn.CellTemplate>
                  </cm:tzDataGridTemplateColumn>
                  <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UnitName" DecimalMark="False" HeaderText="پست سازمانی" IsRowColorField="False" KeyField="False" SortMemberPath="UnitName">
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
</cm:TZBaseControl>',IsSearchForm = 0,LastModifiedDate = '1403/12/04 18:03:39', GUID = 'cbf6e861-f140-4ce6-b4cf-7424e871a8d7', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41611" ,"components": [{"key": "5692244804204877740","label": "cmbActionType","value": "", "controlType": "dropdown","options":""},{"key": "5061590753378892400","label": "cmbUserType","value": "", "controlType": "dropdown","options":""},{"key": "5038393170354262335","label": "cmbUserTypeDefine","value": "", "controlType": "dropdown","options":""},{"key":"4969722946973955324" , "dataSourceName":"dsActionTypes" , "controlType": "datasource",  "selectQuery" :"sp_cu_ActionTypes_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4651382184855520842" , "dataSourceName":"dsChangePass" , "controlType": "datasource",  "selectQuery" :"sp_cu_ChangePassTo_123_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5446222662309657061" , "dataSourceName":"dsDefineNewUser" , "controlType": "datasource",  "selectQuery" :"sp_cu_DefineNewUser_frm41611_and_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4847051243098475060" , "dataSourceName":"dsDisable" , "controlType": "datasource",  "selectQuery" :"sp_cu_DisableUser_frm41611_And_Log" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5070253460133905117" , "dataSourceName":"dsEdit" , "controlType": "datasource",  "selectQuery" :"sp_cu_UpdateUser_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5657269477913813573" , "dataSourceName":"dsGetPrimaryUser" , "controlType": "datasource",  "selectQuery" :"select {@GVUsersList}" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4965164211197138220" , "dataSourceName":"dsGVUsersList" , "controlType": "datasource",  "selectQuery" :"sp_cu_GetUserinfo_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5111088283680735503" , "dataSourceName":"dsReadGrid" , "controlType": "datasource",  "selectQuery" :"sp_cu_ReadLog_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4692943736430155991" , "dataSourceName":"dsUserType" , "controlType": "datasource",  "selectQuery" :"sp_cu_UserType_frm41611" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4933998011076535708" , "dataSourceName":"dsUserTypeDefine" , "controlType": "datasource",  "selectQuery" :"select 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5540013699503386460","label": "txtComment","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "$CurrentUserId","key": "4631033459373652618","label": "txtCurrentUserID","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5615130179215214086","label": "txtFullName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4671931002698860140","label": "txtGvUserID","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5684824784381191923","label": "txtMobileNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5324017381496457775","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4944790115182803173","label": "txtUnitName","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41611
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41611') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41611] ( [frm41611Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5061590753378892400]  [nvarchar] ( 50) NULL , [Col_5324017381496457775]  [nvarchar] ( 10) NULL , [Col_5615130179215214086]  [nvarchar] ( 50) NULL , [Col_5684824784381191923]  [nvarchar] ( 11) NULL , [Col_5038393170354262335]  [nvarchar] ( 50) NULL , [Col_5540013699503386460]  [nvarchar] ( 7) NULL , [Col_4944790115182803173]  [nvarchar] ( 50) NULL , [Col_5692244804204877740]  [nvarchar] ( 50) NULL , [Col_4671931002698860140]  [nvarchar] ( 50) NULL , [Col_4631033459373652618]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm41611Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'frm41611Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD frm41611Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5061590753378892400' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5061590753378892400 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5324017381496457775' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5324017381496457775 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5615130179215214086' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5615130179215214086 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5684824784381191923' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5684824784381191923 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5038393170354262335' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5038393170354262335 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5540013699503386460' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5540013699503386460 nvarchar (7) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4944790115182803173' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4944790115182803173 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_5692244804204877740' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_5692244804204877740 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4671931002698860140' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4671931002698860140 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41611' AND COLUMN_NAME = 'Col_4631033459373652618' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41611] ADD Col_4631033459373652618 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41611]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41611
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41611] ( @PKFormId as bigint OUTPUT ,  @Col_5061590753378892400 AS nvarchar(50),  @Col_5324017381496457775 AS nvarchar(10),  @Col_5615130179215214086 AS nvarchar(50),  @Col_5684824784381191923 AS nvarchar(11),  @Col_5038393170354262335 AS nvarchar(50),  @Col_5540013699503386460 AS nvarchar(7),  @Col_4944790115182803173 AS nvarchar(50),  @Col_5692244804204877740 AS nvarchar(50),  @Col_4671931002698860140 AS nvarchar(50),  @Col_4631033459373652618 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41611](Col_5061590753378892400,Col_5324017381496457775,Col_5615130179215214086,Col_5684824784381191923,Col_5038393170354262335,Col_5540013699503386460,Col_4944790115182803173,Col_5692244804204877740,Col_4671931002698860140,Col_4631033459373652618) VALUES ( @Col_5061590753378892400,@Col_5324017381496457775,@Col_5615130179215214086,@Col_5684824784381191923,@Col_5038393170354262335,@Col_5540013699503386460,@Col_4944790115182803173,@Col_5692244804204877740,@Col_4671931002698860140,@Col_4631033459373652618 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41611]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41611
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41611] ( @PKFormId as bigint OUTPUT ,  @Col_5061590753378892400 AS nvarchar(50),  @Col_5324017381496457775 AS nvarchar(10),  @Col_5615130179215214086 AS nvarchar(50),  @Col_5684824784381191923 AS nvarchar(11),  @Col_5038393170354262335 AS nvarchar(50),  @Col_5540013699503386460 AS nvarchar(7),  @Col_4944790115182803173 AS nvarchar(50),  @Col_5692244804204877740 AS nvarchar(50),  @Col_4671931002698860140 AS nvarchar(50),  @Col_4631033459373652618 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41611] SET Col_5061590753378892400 =  @Col_5061590753378892400, Col_5324017381496457775 =  @Col_5324017381496457775, Col_5615130179215214086 =  @Col_5615130179215214086, Col_5684824784381191923 =  @Col_5684824784381191923, Col_5038393170354262335 =  @Col_5038393170354262335, Col_5540013699503386460 =  @Col_5540013699503386460, Col_4944790115182803173 =  @Col_4944790115182803173, Col_5692244804204877740 =  @Col_5692244804204877740, Col_4671931002698860140 =  @Col_4671931002698860140, Col_4631033459373652618 =  @Col_4631033459373652618 WHERE [frm41611Id] = @PKFormId 
 END 
GO
