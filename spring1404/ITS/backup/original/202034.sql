GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 202034) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (202034, N'فرم جستجو ثبت تیکت شفق',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1190" Height="564.72333333" Background="White">
  <Canvas Width="1170" Height="552">
    <ViewLayouts />
    <cm:TzGroupBox Name="grb1" Width="1153" Height="536" Background="#FFBFCDDB" ControlID="5756598373846993945" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="grb2" Width="1132" Height="507.51666667" Background="#FFE5E5E5" ControlID="5399058266298495244" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="grvTicket" Width="1100" Height="341.44666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Canvas.Left="8" Canvas.Top="149" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding TicketNo}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghTicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghTicketType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghTicketType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghFundName" DecimalMark="False" HeaderText="نام صندوق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghFundName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghFundName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IndexCode" DecimalMark="False" HeaderText="کد شاخص" IsRowColorField="False" KeyField="False" SortMemberPath="IndexCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IndexCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghID" DecimalMark="False" HeaderText="شناسه شفق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghID}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Sevice" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="Sevice">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Sevice}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubService" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubService">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubService}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="170" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerId" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="CallerId">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerId}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerName" DecimalMark="False" HeaderText="نام تماس گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="CallerName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tel" DecimalMark="False" HeaderText="شماره تلفن" IsRowColorField="False" KeyField="False" SortMemberPath="Tel">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tel}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="42" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndTime" DecimalMark="False" HeaderText="ساعت خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="77" Height="25" ControlID="5498512243631579654" Canvas.Left="64.437823389999949" Canvas.Top="200.60488238000016" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ShafaghCallInformation_AdvancedSearch">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtTicketNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @TicketNo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbTicketType}" IsOutputParameter="False" ParameterType="int" SpParamName="  @TicketTypeID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghFund}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghFundID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubServiceId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ProblemGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblem}" IsOutputParameter="False" ParameterType="int" SpParamName="  @problemId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRegUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RegUserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptFromTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromTime" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptToTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToTime" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TzGroupBox Name="GroupBox44" Width="1097.44933257" Height="136" BorderBrush="#FF3399FF" ControlID="4913431789475265309" FontFamily="Tahoma" Canvas.Left="10.55066743" Canvas.Top="3" cm:Header="جستجو بر اساس">
              <Canvas>
                <cm:tzTextBox Name="txtWFID" Width="240.85666666" Height="21" ControlID="4720739133189081212" FontWeight="SemiBold" Foreground="#FFFF0202" TextAlignment="Center" Canvas.Left="757.89599924" Canvas.Top="-0.46320743333325254" cm:DataType="Int" cm:Len="10" />
                <cm:tzTextBox Name="txtTicketNo" Width="240.85666666" Height="21" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Canvas.Left="757.89599924" Canvas.Top="26.621792576666735" cm:Len="10" />
                <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" ControlID="5611599856878086129" FontFamily="Tahoma" Canvas.Left="999.75266590333331" Canvas.Top="-2.4632074333333662" />
                <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="NaN" ControlID="5751631579602051096" FontFamily="Tahoma" Canvas.Left="999.75266590333331" Canvas.Top="24.173546006666811" />
                <cm:tzLabel Name="Lable26" Content=":نام صندوق" Width="85.98" Height="24.48333333" ControlID="5733544356522518769" FontFamily="Tahoma" Canvas.Left="1001.8959992366667" Canvas.Top="84.446666666666829" />
                <cm:TzPersianTime Name="ptFromTime" Width="52" Height="20" ControlID="5474774259234621899" Canvas.Left="174.16315519666659" Canvas.Top="54.29679256999998" cm:DefaultValue="" />
                <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ ثبت از" ControlID="5262685415673334101" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="25.621792573333153" />
                <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت ثبت از" ControlID="5135930511966319362" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="54.29679256999998" />
                <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" ControlID="4895068962898797083" Canvas.Left="142.37152327666661" Canvas.Top="25.621792573333153" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
                <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="NaN" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="234.16315519666671" Canvas.Top="-2.4632074333332525" />
                <cm:tzLookUpComboBox Name="cmbRegUser" Width="207.79163192333306" Height="22" ControlID="4854957732111386219" Canvas.Left="25.371523276666949" Canvas.Top="-1.4632074333332525" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegUser" cm:DataType="Int" cm:tzDisplayItem="UserFullName" cm:tzValueItem="UserId" />
                <cm:PDatePicker Name="pdToDate" Width="120" Height="20" ControlID="4688435891586898475" Canvas.Left="25.371523276666949" Canvas.Top="25.621792573333153" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
                <cm:TzPersianTime Name="ptToTime" Width="52" Height="20" ControlID="4995912702823116106" Canvas.Left="56.82666666666637" Canvas.Top="54.29679256999998" cm:DefaultValue="" />
                <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" ControlID="4935838449943848636" FontFamily="Tahoma" Canvas.Left="117.82666666666614" Canvas.Top="54.29679256999998" />
                <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" ControlID="4877654925528239734" FontFamily="Tahoma" Canvas.Left="117.82666666666614" Canvas.Top="25.621792573333153" />
                <cm:tzDataSource Name="dsRegUser" Content="dsRegUser" Width="92.387155956666589" Height="25" ControlID="5402118367232801633" Canvas.Left="81.77599924" Canvas.Top="6.06383039" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " />
                <cm:tzLabel Name="Lable44" Content=":نوع تیکت" ControlID="4649871390430367497" FontFamily="Tahoma" Canvas.Left="1001.8959992366667" Canvas.Top="54.429390233333606" />
                <cm:tzLabel Name="Lable238" Content=":نوع سرویس" Width="79.52000000333328" Height="23" ControlID="5159768220192560974" FontFamily="Tahoma" Canvas.Left="633.04020720333313" Canvas.Top="-8.4632074333333662" />
                <cm:tzLookUpComboBox Name="cmbShafaghSevicesInformationID" Width="281.25862119000016" Height="22" ControlID="4887723304404019372" Canvas.Left="350.78158600999996" Canvas.Top="-3.3653940433333105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ShafaghSevicesName" cm:tzValueItem="ShafaghSevicesInformationID" />
                <cm:tzLabel Name="Lable236" Content=":زیر سرویس" Width="79.629999999999313" Height="23" ControlID="4743625839143732297" FontFamily="Tahoma" Canvas.Left="632.93020720666721" Canvas.Top="21.634605956666746" />
                <cm:tzLookUpComboBox Name="cmbSubService" Width="281.25862119" Height="22" ControlID="5154172817984221498" Canvas.Left="350.78158600999996" Canvas.Top="23.841272616666743" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsShafaghGroup" cm:tzDisplayItem="ShafaghSubSevicesName" cm:tzValueItem="ShafaghSubSevicesInformationID" />
                <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4693615337445523550" Canvas.Left="463.95316804000026" Canvas.Top="29.161643779999963" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable258C" Content=":گروه مشکل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="633.4468738733334" Canvas.Top="52.874605953333571" cm:ControlID="4726897843095603293" />
                <cm:tzLookUpComboBox Name="CmbProblemGroup" Width="281.25862119000004" Height="22" Canvas.Left="350.78158600999996" Canvas.Top="55.357939286666806" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5722945023967337425" cm:DataBinding="dsShafaghGroup" cm:DataBindingField="ShafaghProblemGroupInformationID" cm:DefaultValue="" cm:Event="dsTitle" cm:SelectedDataBinding="dsSelectedProblemGroup" cm:TabIndex="16" cm:tzDisplayItem="ShafaghProblemGroupName" cm:tzValueItem="ShafaghProblemGroupInformationID" />
                <cm:tzDataSource Name="dsShafaghGroup" Content="dsShafaghGroup" Width="110" Height="25" ControlID="4783604119840092644" Canvas.Left="463.95316804000038" Canvas.Top="64.368310443333485" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable259C" Content=":عنوان مشکل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="633.16020720666654" Canvas.Top="86.446666666666715" cm:ControlID="5736312967899308118" />
                <cm:tzLookUpComboBox Name="CmbProblem" Width="281.2586211900001" Height="22" Canvas.Left="350.78158600999996" Canvas.Top="86.929999996666766" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5040068565779153190" cm:DataBinding="dsTitle" cm:DataBindingField="ShafaghProblemInformationID" cm:DefaultValue="$اولی" cm:Event="dsAction,dsHelpDesk" cm:SelectedDataBinding="dsSelectedTitle" cm:TabIndex="17" cm:tzDisplayItem="ShafaghProblemName" cm:tzValueItem="ShafaghProblemInformationID" />
                <cm:tzDataSource Name="dsTitle" Content="dsTitle" Width="110" Height="25" ControlID="5377478888097132560" Canvas.Left="463.95316804000049" Canvas.Top="95.457037819999982" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghProblemGroupInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLookUpComboBox Name="cmbShafaghFund" Width="242.99999998999991" Height="22" ControlID="5226164960908557387" TextSearchMode="Contains" Canvas.Left="757.89599924" Canvas.Top="84.802555226666755" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsFund" cm:DataBindingField="ShafaghFundInformationID" cm:Event="dsBranch,dsGetShafaghID" cm:SelectedDataBinding="dsCallData" cm:TabIndex="2" cm:tzDisplayItem="ShafaghFundName" cm:tzValueItem="ShafaghFundInformationID" />
                <cm:tzDataSource Name="dsFund" Content="dsFund" Width="40" Height="25" ControlID="5354940988832056505" Canvas.Left="805.40779480666652" Canvas.Top="95.457037819999982" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" />
                <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5600808754086256767" Canvas.Left="402.78158601000007" Canvas.Top="3.1616437799999666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" />
                <cm:tzDataSource Name="dsTicketType" Content="dsTicketType" Width="77" Height="25" ControlID="4870534762343277613" Canvas.Left="752.89599924" Canvas.Top="60.329593050000028" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" />
                <cm:tzLookUpComboBox Name="cmbTicketType" Width="242.99999998999996" Height="22" ControlID="4998721771557464900" Canvas.Left="757.89599924" Canvas.Top="53.802555226666755" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketType" cm:DefaultValue="$اولی" cm:Event="dsMandatory,dsClearGrid3,dtsCheckVSAT,dsEnableunitCode,DataSource322,dsMandatoryIncidentTree" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="ShafaghTicketType" cm:tzValueItem="ShafaghTicketTypeID" />
              </Canvas>
            </cm:TzGroupBox>
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" ControlID="4865742882409106383" FontFamily="Tahoma" Canvas.Left="10.550667429999976" Canvas.Top="148" cm:Event="dsGrid" cm:Validations="5422101555066720170" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzDataSource Name="dsCheckFilterDate" Content="dsCheckFilterDate" Width="128" Height="25" ControlID="5047859374208359026" Canvas.Left="122.52502909999998" Canvas.Top="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" />
        <cm:TZCheckBox Name="chbFilterDate" Content="chbFilterDate" Width="103" Height="20" ControlID="5614717349457016048" FontFamily="Tahoma" Canvas.Left="275.5250291" Canvas.Top="8" cm:DataBinding="dsCheckFilterDate" cm:DataBindingField="IsValid" cm:IsVisibleItem="False" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="89" Height="20" ControlID="4848897338105661592" FontFamily="Tahoma" Canvas.Left="48" Canvas.Top="19.13833333" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
  </Canvas>
</cm:TZBaseControl>',1,'2022/11/05 14:18:50', 'e39fac7c-269d-462e-b2eb-cac962873a25', 0, N'', N'{"formID": "202034" ,"components": [{"value": "","key": "4848897338105661592","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : ""},{"value": "","key": "5614717349457016048","label": "chbFilterDate","controlType": "checkbox","caption": "chbFilterDate" ,"DataBindingField" : "IsValid"},{"key": "5040068565779153190","label": "CmbProblem","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5722945023967337425","label": "CmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegUser","value": "", "controlType": "dropdown","options":""},{"key": "5226164960908557387","label": "cmbShafaghFund","value": "", "controlType": "dropdown","options":""},{"key": "4887723304404019372","label": "cmbShafaghSevicesInformationID","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5154172817984221498","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "cmbTicketType","value": "$اولی", "controlType": "dropdown","options":""},{"key":"5047859374208359026" , "dataSourceName":"dsCheckFilterDate" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5354940988832056505" , "dataSourceName":"dsFund" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"SP_CU_ShafaghCallInformation_AdvancedSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegUser" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5600808754086256767" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783604119840092644" , "dataSourceName":"dsShafaghGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4693615337445523550" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4870534762343277613" , "dataSourceName":"dsTicketType" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5377478888097132560" , "dataSourceName":"dsTitle" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجو ثبت تیکت شفق',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1190" Height="564.72333333" Background="White">
  <Canvas Width="1170" Height="552">
    <ViewLayouts />
    <cm:TzGroupBox Name="grb1" Width="1153" Height="536" Background="#FFBFCDDB" ControlID="5756598373846993945" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="grb2" Width="1132" Height="507.51666667" Background="#FFE5E5E5" ControlID="5399058266298495244" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="grvTicket" Width="1100" Height="341.44666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Canvas.Left="8" Canvas.Top="149" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding TicketNo}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WFID}" TextWrapping="Wrap" />
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
                <cm:tzDataGridTemplateColumn Width="62" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegUser" DecimalMark="False" HeaderText="کاربر ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegUser">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegUser}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="51" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghTicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghTicketType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghTicketType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghFundName" DecimalMark="False" HeaderText="نام صندوق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghFundName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghFundName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="59" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="IndexCode" DecimalMark="False" HeaderText="کد شاخص" IsRowColorField="False" KeyField="False" SortMemberPath="IndexCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding IndexCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShafaghID" DecimalMark="False" HeaderText="شناسه شفق" IsRowColorField="False" KeyField="False" SortMemberPath="ShafaghID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShafaghID}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Sevice" DecimalMark="False" HeaderText="نام سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="Sevice">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Sevice}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubService" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubService">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubService}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="170" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerId" DecimalMark="False" HeaderText="شماره تماس" IsRowColorField="False" KeyField="False" SortMemberPath="CallerId">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerId}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CallerName" DecimalMark="False" HeaderText="نام تماس گیرنده" IsRowColorField="False" KeyField="False" SortMemberPath="CallerName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CallerName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="64" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Tel" DecimalMark="False" HeaderText="شماره تلفن" IsRowColorField="False" KeyField="False" SortMemberPath="Tel">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Tel}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="42" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Result" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="Result">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Result}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="89" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndDate" DecimalMark="False" HeaderText="تاریخ خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="99" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="EndTime" DecimalMark="False" HeaderText="ساعت خاتمه فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="EndTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding EndTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="77" Height="25" ControlID="5498512243631579654" Canvas.Left="64.437823389999949" Canvas.Top="200.60488238000016" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_ShafaghCallInformation_AdvancedSearch">
              <cm:tzDataSource.StoredProcedureParameterValue>
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtWFID}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @WFID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@txtTicketNo}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @TicketNo" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbTicketType}" IsOutputParameter="False" ParameterType="int" SpParamName="  @TicketTypeID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghFund}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghFundID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @SubServiceId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ProblemGroup" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblem}" IsOutputParameter="False" ParameterType="int" SpParamName="  @problemId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbRegUser}" IsOutputParameter="False" ParameterType="bigint" SpParamName="  @RegUserId" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdFromDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@pdToDate}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToDate" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptFromTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @FromTime" />
                <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@ptToTime}" IsOutputParameter="False" ParameterType="nvarchar" SpParamName="  @ToTime" />
              </cm:tzDataSource.StoredProcedureParameterValue>
            </cm:tzDataSource>
            <cm:TzGroupBox Name="GroupBox44" Width="1097.44933257" Height="136" BorderBrush="#FF3399FF" ControlID="4913431789475265309" FontFamily="Tahoma" Canvas.Left="10.55066743" Canvas.Top="3" cm:Header="جستجو بر اساس">
              <Canvas>
                <cm:tzTextBox Name="txtWFID" Width="240.85666666" Height="21" ControlID="4720739133189081212" FontWeight="SemiBold" Foreground="#FFFF0202" TextAlignment="Center" Canvas.Left="757.89599924" Canvas.Top="-0.46320743333325254" cm:DataType="Int" cm:Len="10" />
                <cm:tzTextBox Name="txtTicketNo" Width="240.85666666" Height="21" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FFFC0202" TextAlignment="Center" Canvas.Left="757.89599924" Canvas.Top="26.621792576666735" cm:Len="10" />
                <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" ControlID="5611599856878086129" FontFamily="Tahoma" Canvas.Left="999.75266590333331" Canvas.Top="-2.4632074333333662" />
                <cm:tzLabel Name="Lable24" Content=":Ticket شماره" Width="NaN" ControlID="5751631579602051096" FontFamily="Tahoma" Canvas.Left="999.75266590333331" Canvas.Top="24.173546006666811" />
                <cm:tzLabel Name="Lable26" Content=":نام صندوق" Width="85.98" Height="24.48333333" ControlID="5733544356522518769" FontFamily="Tahoma" Canvas.Left="1001.8959992366667" Canvas.Top="84.446666666666829" />
                <cm:TzPersianTime Name="ptFromTime" Width="52" Height="20" ControlID="5474774259234621899" Canvas.Left="174.16315519666659" Canvas.Top="54.29679256999998" cm:DefaultValue="" />
                <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ ثبت از" ControlID="5262685415673334101" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="25.621792573333153" />
                <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت ثبت از" ControlID="5135930511966319362" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="54.29679256999998" />
                <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" ControlID="4895068962898797083" Canvas.Left="142.37152327666661" Canvas.Top="25.621792573333153" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
                <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" Width="NaN" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="234.16315519666671" Canvas.Top="-2.4632074333332525" />
                <cm:tzLookUpComboBox Name="cmbRegUser" Width="207.79163192333306" Height="22" ControlID="4854957732111386219" Canvas.Left="25.371523276666949" Canvas.Top="-1.4632074333332525" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegUser" cm:DataType="Int" cm:tzDisplayItem="UserFullName" cm:tzValueItem="UserId" />
                <cm:PDatePicker Name="pdToDate" Width="120" Height="20" ControlID="4688435891586898475" Canvas.Left="25.371523276666949" Canvas.Top="25.621792573333153" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckFilterDate" />
                <cm:TzPersianTime Name="ptToTime" Width="52" Height="20" ControlID="4995912702823116106" Canvas.Left="56.82666666666637" Canvas.Top="54.29679256999998" cm:DefaultValue="" />
                <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" ControlID="4935838449943848636" FontFamily="Tahoma" Canvas.Left="117.82666666666614" Canvas.Top="54.29679256999998" />
                <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" ControlID="4877654925528239734" FontFamily="Tahoma" Canvas.Left="117.82666666666614" Canvas.Top="25.621792573333153" />
                <cm:tzDataSource Name="dsRegUser" Content="dsRegUser" Width="92.387155956666589" Height="25" ControlID="5402118367232801633" Canvas.Left="81.77599924" Canvas.Top="6.06383039" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " />
                <cm:tzLabel Name="Lable44" Content=":نوع تیکت" ControlID="4649871390430367497" FontFamily="Tahoma" Canvas.Left="1001.8959992366667" Canvas.Top="54.429390233333606" />
                <cm:tzLabel Name="Lable238" Content=":نوع سرویس" Width="79.52000000333328" Height="23" ControlID="5159768220192560974" FontFamily="Tahoma" Canvas.Left="633.04020720333313" Canvas.Top="-8.4632074333333662" />
                <cm:tzLookUpComboBox Name="cmbShafaghSevicesInformationID" Width="281.25862119000016" Height="22" ControlID="4887723304404019372" Canvas.Left="350.78158600999996" Canvas.Top="-3.3653940433333105" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ShafaghSevicesName" cm:tzValueItem="ShafaghSevicesInformationID" />
                <cm:tzLabel Name="Lable236" Content=":زیر سرویس" Width="79.629999999999313" Height="23" ControlID="4743625839143732297" FontFamily="Tahoma" Canvas.Left="632.93020720666721" Canvas.Top="21.634605956666746" />
                <cm:tzLookUpComboBox Name="cmbSubService" Width="281.25862119" Height="22" ControlID="5154172817984221498" Canvas.Left="350.78158600999996" Canvas.Top="23.841272616666743" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsShafaghGroup" cm:tzDisplayItem="ShafaghSubSevicesName" cm:tzValueItem="ShafaghSubSevicesInformationID" />
                <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4693615337445523550" Canvas.Left="463.95316804000026" Canvas.Top="29.161643779999963" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable258C" Content=":گروه مشکل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="633.4468738733334" Canvas.Top="52.874605953333571" cm:ControlID="4726897843095603293" />
                <cm:tzLookUpComboBox Name="CmbProblemGroup" Width="281.25862119000004" Height="22" Canvas.Left="350.78158600999996" Canvas.Top="55.357939286666806" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5722945023967337425" cm:DataBinding="dsShafaghGroup" cm:DataBindingField="ShafaghProblemGroupInformationID" cm:DefaultValue="" cm:Event="dsTitle" cm:SelectedDataBinding="dsSelectedProblemGroup" cm:TabIndex="16" cm:tzDisplayItem="ShafaghProblemGroupName" cm:tzValueItem="ShafaghProblemGroupInformationID" />
                <cm:tzDataSource Name="dsShafaghGroup" Content="dsShafaghGroup" Width="110" Height="25" ControlID="4783604119840092644" Canvas.Left="463.95316804000038" Canvas.Top="64.368310443333485" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLabel Name="Lable259C" Content=":عنوان مشکل" Width="NaN" Height="NaN" FontFamily="Tahoma" Canvas.Left="633.16020720666654" Canvas.Top="86.446666666666715" cm:ControlID="5736312967899308118" />
                <cm:tzLookUpComboBox Name="CmbProblem" Width="281.2586211900001" Height="22" Canvas.Left="350.78158600999996" Canvas.Top="86.929999996666766" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5040068565779153190" cm:DataBinding="dsTitle" cm:DataBindingField="ShafaghProblemInformationID" cm:DefaultValue="$اولی" cm:Event="dsAction,dsHelpDesk" cm:SelectedDataBinding="dsSelectedTitle" cm:TabIndex="17" cm:tzDisplayItem="ShafaghProblemName" cm:tzValueItem="ShafaghProblemInformationID" />
                <cm:tzDataSource Name="dsTitle" Content="dsTitle" Width="110" Height="25" ControlID="5377478888097132560" Canvas.Left="463.95316804000049" Canvas.Top="95.457037819999982" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation">
                  <cm:tzDataSource.StoredProcedureParameterValue>
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbShafaghSevicesInformationID}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbSubService}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghSubSevicesInformationID" />
                    <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@CmbProblemGroup}" IsOutputParameter="False" ParameterType="int" SpParamName="  @ShafaghProblemGroupInformationID" />
                  </cm:tzDataSource.StoredProcedureParameterValue>
                </cm:tzDataSource>
                <cm:tzLookUpComboBox Name="cmbShafaghFund" Width="242.99999998999991" Height="22" ControlID="5226164960908557387" TextSearchMode="Contains" Canvas.Left="757.89599924" Canvas.Top="84.802555226666755" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsFund" cm:DataBindingField="ShafaghFundInformationID" cm:Event="dsBranch,dsGetShafaghID" cm:SelectedDataBinding="dsCallData" cm:TabIndex="2" cm:tzDisplayItem="ShafaghFundName" cm:tzValueItem="ShafaghFundInformationID" />
                <cm:tzDataSource Name="dsFund" Content="dsFund" Width="40" Height="25" ControlID="5354940988832056505" Canvas.Left="805.40779480666652" Canvas.Top="95.457037819999982" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" />
                <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5600808754086256767" Canvas.Left="402.78158601000007" Canvas.Top="3.1616437799999666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" />
                <cm:tzDataSource Name="dsTicketType" Content="dsTicketType" Width="77" Height="25" ControlID="4870534762343277613" Canvas.Left="752.89599924" Canvas.Top="60.329593050000028" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" />
                <cm:tzLookUpComboBox Name="cmbTicketType" Width="242.99999998999996" Height="22" ControlID="4998721771557464900" Canvas.Left="757.89599924" Canvas.Top="53.802555226666755" cm:CanDeleteItem="False" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketType" cm:DefaultValue="$اولی" cm:Event="dsMandatory,dsClearGrid3,dtsCheckVSAT,dsEnableunitCode,DataSource322,dsMandatoryIncidentTree" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="ShafaghTicketType" cm:tzValueItem="ShafaghTicketTypeID" />
              </Canvas>
            </cm:TzGroupBox>
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" ControlID="4865742882409106383" FontFamily="Tahoma" Canvas.Left="10.550667429999976" Canvas.Top="148" cm:Event="dsGrid" cm:Validations="5422101555066720170" />
          </Canvas>
        </cm:TzGroupBox>
        <cm:tzDataSource Name="dsCheckFilterDate" Content="dsCheckFilterDate" Width="128" Height="25" ControlID="5047859374208359026" Canvas.Left="122.52502909999998" Canvas.Top="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" />
        <cm:TZCheckBox Name="chbFilterDate" Content="chbFilterDate" Width="103" Height="20" ControlID="5614717349457016048" FontFamily="Tahoma" Canvas.Left="275.5250291" Canvas.Top="8" cm:DataBinding="dsCheckFilterDate" cm:DataBindingField="IsValid" cm:IsVisibleItem="False" />
      </Canvas>
    </cm:TzGroupBox>
    <cm:TZCheckBox Name="chbEnable" Content="chbEnable" Width="89" Height="20" ControlID="4848897338105661592" FontFamily="Tahoma" Canvas.Left="48" Canvas.Top="19.13833333" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2022/11/05 14:18:50', GUID = 'e39fac7c-269d-462e-b2eb-cac962873a25', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "202034" ,"components": [{"value": "","key": "4848897338105661592","label": "chbEnable","controlType": "checkbox","caption": "chbEnable" ,"DataBindingField" : ""},{"value": "","key": "5614717349457016048","label": "chbFilterDate","controlType": "checkbox","caption": "chbFilterDate" ,"DataBindingField" : "IsValid"},{"key": "5040068565779153190","label": "CmbProblem","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5722945023967337425","label": "CmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegUser","value": "", "controlType": "dropdown","options":""},{"key": "5226164960908557387","label": "cmbShafaghFund","value": "", "controlType": "dropdown","options":""},{"key": "4887723304404019372","label": "cmbShafaghSevicesInformationID","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5154172817984221498","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "cmbTicketType","value": "$اولی", "controlType": "dropdown","options":""},{"key":"5047859374208359026" , "dataSourceName":"dsCheckFilterDate" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Nima_CheckFilterDateOfSearchForm]  {@pdFromDate},{@pdToDate}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5354940988832056505" , "dataSourceName":"dsFund" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghFundInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"SP_CU_ShafaghCallInformation_AdvancedSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegUser" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shafagh_GetUserGroupList] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5600808754086256767" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4783604119840092644" , "dataSourceName":"dsShafaghGroup" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghProblemGroupInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4693615337445523550" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Search_Tbl_CU_Base_ShafaghSubSevicesInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"4870534762343277613" , "dataSourceName":"dsTicketType" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghTicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5377478888097132560" , "dataSourceName":"dsTitle" , "controlType": "datasource",  "selectQuery" :"SP_CU_Shafagh_Get_Tbl_CU_Base_ShafaghProblemInformation" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 202034
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm202034') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm202034] ( [frm202034Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [int] NULL , [Col_5081194363345449817]  [nvarchar] ( 10) NULL , [Col_4854957732111386219]  [int] NULL , [Col_4887723304404019372]  [nvarchar] ( 50) NULL , [Col_5154172817984221498]  [nvarchar] ( 50) NULL , [Col_5722945023967337425]  [nvarchar] ( 50) NULL , [Col_5040068565779153190]  [nvarchar] ( 50) NULL , [Col_5226164960908557387]  [nvarchar] ( 50) NULL , [Col_4998721771557464900]  [nvarchar] ( 50) NULL , [Col_5614717349457016048]  [bit] NULL , [Col_4848897338105661592]  [bit] NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_4688435891586898475]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4995912702823116106]  [nvarchar] ( 5) NULL ,  PRIMARY KEY CLUSTERED ( [frm202034Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'frm202034Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD frm202034Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4720739133189081212' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4720739133189081212 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5081194363345449817' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5081194363345449817 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4854957732111386219' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4854957732111386219 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4887723304404019372' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4887723304404019372 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5154172817984221498' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5154172817984221498 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5722945023967337425' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5722945023967337425 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5040068565779153190' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5040068565779153190 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5226164960908557387' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5226164960908557387 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4998721771557464900' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4998721771557464900 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5614717349457016048' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5614717349457016048 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4848897338105661592' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4848897338105661592 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4895068962898797083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4895068962898797083 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4688435891586898475' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4688435891586898475 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_5474774259234621899' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_5474774259234621899 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm202034' AND COLUMN_NAME = 'Col_4995912702823116106' )  BEGIN ALTER TABLE [dbo].[Tbl_frm202034] ADD Col_4995912702823116106 nvarchar (5) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm202034]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm202034
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm202034] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS int,  @Col_5081194363345449817 AS nvarchar(10),  @Col_4854957732111386219 AS int,  @Col_4887723304404019372 AS nvarchar(50),  @Col_5154172817984221498 AS nvarchar(50),  @Col_5722945023967337425 AS nvarchar(50),  @Col_5040068565779153190 AS nvarchar(50),  @Col_5226164960908557387 AS nvarchar(50),  @Col_4998721771557464900 AS nvarchar(50),  @Col_5614717349457016048 AS bit,  @Col_4848897338105661592 AS bit,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm202034](Col_4720739133189081212,Col_5081194363345449817,Col_4854957732111386219,Col_4887723304404019372,Col_5154172817984221498,Col_5722945023967337425,Col_5040068565779153190,Col_5226164960908557387,Col_4998721771557464900,Col_5614717349457016048,Col_4848897338105661592,Col_4895068962898797083,Col_4688435891586898475,Col_5474774259234621899,Col_4995912702823116106) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_4854957732111386219,@Col_4887723304404019372,@Col_5154172817984221498,@Col_5722945023967337425,@Col_5040068565779153190,@Col_5226164960908557387,@Col_4998721771557464900,@Col_5614717349457016048,@Col_4848897338105661592,@Col_4895068962898797083,@Col_4688435891586898475,@Col_5474774259234621899,@Col_4995912702823116106 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm202034]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm202034
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm202034] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS int,  @Col_5081194363345449817 AS nvarchar(10),  @Col_4854957732111386219 AS int,  @Col_4887723304404019372 AS nvarchar(50),  @Col_5154172817984221498 AS nvarchar(50),  @Col_5722945023967337425 AS nvarchar(50),  @Col_5040068565779153190 AS nvarchar(50),  @Col_5226164960908557387 AS nvarchar(50),  @Col_4998721771557464900 AS nvarchar(50),  @Col_5614717349457016048 AS bit,  @Col_4848897338105661592 AS bit,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm202034] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_4854957732111386219 =  @Col_4854957732111386219, Col_4887723304404019372 =  @Col_4887723304404019372, Col_5154172817984221498 =  @Col_5154172817984221498, Col_5722945023967337425 =  @Col_5722945023967337425, Col_5040068565779153190 =  @Col_5040068565779153190, Col_5226164960908557387 =  @Col_5226164960908557387, Col_4998721771557464900 =  @Col_4998721771557464900, Col_5614717349457016048 =  @Col_5614717349457016048, Col_4848897338105661592 =  @Col_4848897338105661592, Col_4895068962898797083 =  @Col_4895068962898797083, Col_4688435891586898475 =  @Col_4688435891586898475, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4995912702823116106 =  @Col_4995912702823116106 WHERE [frm202034Id] = @PKFormId 
 END 
GO
