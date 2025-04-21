GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 201990) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (201990, N'Shahin-TicketVeiw',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1338" Height="657.72333333" Background="White">
  <Canvas Width="1255" Height="600">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5050956195802644306</ID>
        <Name>اعتبارسنجی برای تاریخ</Name>
        <Condition>({@chbMandatoryForDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار تاریخ وارد شده معتبر نمیباشد.                                                                                                             تاریخ شروع نباید از تاریخ پایان بزرگتر و تاریخ پایان نباید از تاریخ شروع کوچکتر باشد.  امکان ثبت تاریخ بزرگتر ار روز جاری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4703328241842357957</ComponentID>
            <ComponentName>chbMandatoryForDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4668412289418309231</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="grb1" Width="1230" Height="576" Background="#FF70A3AF" ControlID="5756598373846993945" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="grb2" Width="1202" Height="540.72333333" Background="#FFE5E5E5" ControlID="5399058266298495244" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="grvSM" Width="1174" Height="354.44666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Canvas.Left="8" Canvas.Top="166.99999999999997" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROW_NUMBER" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROW_NUMBER">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROW_NUMBER}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketNo}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerName" DecimalMark="False" HeaderText="مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerCode" DecimalMark="False" HeaderText="کد مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubServiceName" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubServiceName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubServiceName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTitle" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredGroup" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ACTION" DecimalMark="False" HeaderText="اقدامات" IsRowColorField="False" KeyField="False" SortMemberPath="ACTION">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ACTION}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatus" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatusRefer" DecimalMark="False" HeaderText="نتیجه ارجاع" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatusRefer">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatusRefer}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="110" Height="25" ControlID="5498512243631579654" Canvas.Left="77.482033720000658" Canvas.Top="292.32821570666636" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" />
            <cm:TzGroupBox Name="GroupBox44" Width="1171.44933257" Height="149.99999999999997" ControlID="4913431789475265309" FontFamily="Tahoma" Canvas.Left="10.55066743" Canvas.Top="8" cm:Header="جستجو بر اساس">
              <Canvas>
                <cm:tzTextBox Name="txtWFID" Width="120" Height="21" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Canvas.Left="951.75266590333331" Canvas.Top="9.0638303899999073" cm:DataType="BigInt" cm:Len="10" />
                <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Canvas.Left="951.75266590333331" Canvas.Top="36.1488303966664" />
                <cm:tzTextBox Name="txtBranchId" Width="248.04010828666719" Height="22" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Canvas.Left="615.9396493433328" Canvas.Top="36.1488303966664" cm:DataType="Int" cm:Len="10" />
                <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="120" Height="22" ControlID="5206205529288027938" Canvas.Left="951.75266590333331" Canvas.Top="64.823830393333225" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
                <cm:tzLookUpComboBox Name="cmbBank" Width="248.04010828666719" Height="22" ControlID="4866769076819097450" Canvas.Left="615.9396493433328" Canvas.Top="9.06383039" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
                <cm:tzLookUpComboBox Name="cmbService" Width="191.81666666999982" Height="22" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Canvas.Left="347.07631600666627" Canvas.Top="9.0638303899999073" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
                <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="191.81666666999982" Height="22" ControlID="5610629158270476969" Canvas.Left="347.07631600666627" Canvas.Top="64.823830393333168" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
                <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" ControlID="5611599856878086129" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="7.0638303899999073" />
                <cm:tzLabel Name="Lable24" Content=":Ticket شماره" ControlID="5751631579602051096" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="33.70058383" />
                <cm:tzLabel Name="Lable25" Content=":Ticket وضعیت" ControlID="4759944771073043398" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="62.340497059999819" />
                <cm:tzLabel Name="Lable26" Content=":مشتری" ControlID="5733544356522518769" FontFamily="Tahoma" Canvas.Left="864.97975762999977" Canvas.Top="7.9449222166664981" />
                <cm:tzLabel Name="Lable30" Content=":کد " ControlID="5237963644095228093" FontFamily="Tahoma" Canvas.Left="864.97975762999977" Canvas.Top="32.758371246666485" />
                <cm:tzLabel Name="Lable55" Content=":نام سرویس" ControlID="4959885443946943293" FontFamily="Tahoma" Canvas.Left="539.50964934333274" Canvas.Top="7.0638303899997936" />
                <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5270925061741186330" Canvas.Left="387.10135075999938" Canvas.Top="8.23666893666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
                <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" ControlID="5494490826325421717" Canvas.Left="403.86315519666687" Canvas.Top="65.233094723333437" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
                <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" ControlID="4954260394000299803" Canvas.Left="943.75266590333331" Canvas.Top="65.233094723333409" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
                <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" ControlID="5474774259234621899" Canvas.Left="176.16315519666662" Canvas.Top="91.233094723333323" />
                <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" ControlID="5262685415673334101" FontFamily="Tahoma" Canvas.Left="237.16315519666676" Canvas.Top="63.823830393333168" />
                <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور از" ControlID="5135930511966319362" FontFamily="Tahoma" Canvas.Left="237.16315519666676" Canvas.Top="89.030497059999874" />
                <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" ControlID="4895068962898797083" Canvas.Left="144.37152327666658" Canvas.Top="66.392163733333092" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
                <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" ControlID="4717754987366344189" FontFamily="Tahoma" Canvas.Left="539.89298267666618" Canvas.Top="64.030497056666661" />
                <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="218.79163192" Height="22" ControlID="4909725041652514354" Canvas.Left="15.371523280000019" Canvas.Top="37.632163729999746" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
                <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="33.665497063333149" />
                <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="218.79163192" Height="22" ControlID="4854957732111386219" Canvas.Left="15.371523280000019" Canvas.Top="9.06383039" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
                <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" ControlID="4947740875127604141" Canvas.Left="720.75206231666562" Canvas.Top="8.2366689366667174" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
                <cm:tzLabel Name="Lable44" Content=":گروه ثبت کننده " Width="98.22666667" Height="24.48333333" ControlID="4649871390430367497" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="6.5804970599999066" />
                <cm:tzLabel Name="Lable43" Content=":زیرسرویس" ControlID="5429890452776562087" FontFamily="Tahoma" Canvas.Left="539.50964934333274" Canvas.Top="34.872163729999755" />
                <cm:tzLookUpComboBox Name="cmbSubService" Width="191.81666666999982" Height="22" ControlID="5634760713754507600" Canvas.Left="347.07631600666627" Canvas.Top="36.1488303966664" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
                <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4692127204784513660" Canvas.Left="387.10135075999938" Canvas.Top="34.236668936666661" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
                <cm:PDatePicker Name="pdRegisteredDateTo" Width="120" Height="20" ControlID="4688435891586898475" Canvas.Left="15.371523276666967" Canvas.Top="67.233094723333323" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
                <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" ControlID="4995912702823116106" Canvas.Left="46.82666666666627" Canvas.Top="91.233094723333323" />
                <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" ControlID="4935838449943848636" FontFamily="Tahoma" Canvas.Left="107.82666666666604" Canvas.Top="88.233094723333437" />
                <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" ControlID="4877654925528239734" FontFamily="Tahoma" Canvas.Left="107.82666666666604" Canvas.Top="67.23309472333338" />
                <cm:tzLookUpComboBox Name="Cmbrequst" Width="248.04010828666719" Height="22" ControlID="4998721771557464900" Canvas.Left="615.9396493433328" Canvas.Top="64.823830393333168" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
                <cm:tzLabel Name="Lable27" Content=":نوع تیکت" Width="NaN" Height="NaN" ControlID="5288146048034297512" FontFamily="Tahoma" Canvas.Left="864.979757633333" Canvas.Top="65.749761390000074" />
                <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" ControlID="5536746931098071987" Canvas.Left="712.75206231666562" Canvas.Top="60.236668936666618" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
                <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" ControlID="5402118367232801633" Canvas.Left="49.775999236666593" Canvas.Top="8.23666893666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
                <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153" Height="25" ControlID="5012879529886775460" Canvas.Left="49.775999236666621" Canvas.Top="34.236668936666661" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
                <cm:tzLabel Name="Lable51" Content=":نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" FontFamily="Tahoma" Canvas.Left="864.979757633333" Canvas.Top="91.937148426666454" cm:ControlID="5014580280989272697" />
                <cm:tzLookUpComboBox Name="cmbResultStatus" Width="248.04010828666719" Height="22" Canvas.Left="615.9396493433328" Canvas.Top="91.937148426666454" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
                <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25" ControlID="5276806715386994728" Canvas.Left="690.47203338000008" Canvas.Top="97.7233333333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
                <cm:tzLabel Name="Lable53" Content=":نتیجه ارجاع" Width="85.772908273333314" Height="24.48333333" FontFamily="Tahoma" Canvas.Left="539.89298267666618" Canvas.Top="91.937148426666454" cm:ControlID="5143055274979120562" />
                <cm:tzLookUpComboBox Name="cmbResultRefer" Width="191.81666666999982" Height="22" Canvas.Left="347.07631600666627" Canvas.Top="91.937148426666454" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5669998775928739483" cm:DataBinding="dsResulStatusRefer" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
                <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25" ControlID="5278696751676114572" Canvas.Left="345.3807196699986" Canvas.Top="88.9371484266664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
              </Canvas>
            </cm:TzGroupBox>
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" ControlID="4865742882409106383" FontFamily="Tahoma" Canvas.Left="159.55066742999998" Canvas.Top="166.99999999999997" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
            <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114" Height="23.000000000000007" ControlID="4710686342849233362" FontFamily="Tahoma" Canvas.Left="10.550667429999976" Canvas.Top="167" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
            <cm:PDatePicker Name="CurrDate" Width="120" Height="20" ControlID="4950588884094236537" Canvas.Left="469.5" Canvas.Top="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="151.7916319166666" Height="20" ControlID="4703328241842357957" FontFamily="Tahoma" Canvas.Left="274.43782338999995" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" ControlID="5311538154545928717" Canvas.Left="94.443650106665928" Canvas.Top="-5" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
            <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="191.81666666999982" Height="20" ControlID="5459814118812540729" FontFamily="Tahoma" Canvas.Left="620.8771559600001" Canvas.Top="5" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
            <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" ControlID="5126414657779673565" Canvas.Left="760.1700638399991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2021/02/14 08:14:42', 'e2e140ed-de38-4f0b-af2d-574db3a47549', 0, N'', N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "5669998775928739483","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'Shahin-TicketVeiw',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="1338" Height="657.72333333" Background="White">
  <Canvas Width="1255" Height="600">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5050956195802644306</ID>
        <Name>اعتبارسنجی برای تاریخ</Name>
        <Condition>({@chbMandatoryForDate.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار تاریخ وارد شده معتبر نمیباشد.                                                                                                             تاریخ شروع نباید از تاریخ پایان بزرگتر و تاریخ پایان نباید از تاریخ شروع کوچکتر باشد.  امکان ثبت تاریخ بزرگتر ار روز جاری وجود ندارد</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4703328241842357957</ComponentID>
            <ComponentName>chbMandatoryForDate</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4668412289418309231</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="grb1" Width="1230" Height="576" Background="#FF70A3AF" ControlID="5756598373846993945" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="grb2" Width="1202" Height="540.72333333" Background="#FFE5E5E5" ControlID="5399058266298495244" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:tzDataGrid Name="grvSM" Width="1174" Height="354.44666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4945950928667021765" ItemsSource="{Binding ElementName=dsGrid, Path=DataItems}" Canvas.Left="8" Canvas.Top="166.99999999999997" cm:AllowPaging="False" cm:BindingForm="dsGrid" cm:IsSearchable="True" cm:KeyField="شماره فرآیند" cm:PageSize="50" cm:RowColorField="color" cm:UserCanExport="True">
              <cm:tzDataGrid.Resources>
                <cm:MainCommands x:Key="MainCommands" />
                <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
              </cm:tzDataGrid.Resources>
              <cm:tzDataGrid.Columns>
                <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROW_NUMBER" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROW_NUMBER">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROW_NUMBER}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرایند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketNo" DecimalMark="False" HeaderText="شماره تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketNo">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketNo}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="74" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketStatus" DecimalMark="False" HeaderText="وضعیت تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="120" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TicketType" DecimalMark="False" HeaderText="نوع تیکت" IsRowColorField="False" KeyField="False" SortMemberPath="TicketType">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TicketType}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="کارشناس ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="70" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredDate" DecimalMark="False" HeaderText="تاریخ ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredDate">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredDate}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="66" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredTime" DecimalMark="False" HeaderText="ساعت ثبت" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredTime">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredTime}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="180" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerName" DecimalMark="False" HeaderText="مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CustomerCode" DecimalMark="False" HeaderText="کد مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="CustomerCode">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CustomerCode}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="67" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubServiceName" DecimalMark="False" HeaderText="زیر سرویس" IsRowColorField="False" KeyField="False" SortMemberPath="SubServiceName">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubServiceName}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="200" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemGroup" DecimalMark="False" HeaderText="گروه مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTitle" DecimalMark="False" HeaderText="عنوان مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="ProblemTitle">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTitle}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="85" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RegisteredGroup" DecimalMark="False" HeaderText="گروه ثبت کننده" IsRowColorField="False" KeyField="False" SortMemberPath="RegisteredGroup">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RegisteredGroup}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ACTION" DecimalMark="False" HeaderText="اقدامات" IsRowColorField="False" KeyField="False" SortMemberPath="ACTION">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ACTION}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="250" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatus" DecimalMark="False" HeaderText="نتیجه بررسی" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatus">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatus}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
                <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ResultStatusRefer" DecimalMark="False" HeaderText="نتیجه ارجاع" IsRowColorField="False" KeyField="False" SortMemberPath="ResultStatusRefer">
                  <cm:tzDataGridTemplateColumn.CellTemplate>
                    <cm:TzDataTemplate>
                      <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ResultStatusRefer}" TextWrapping="Wrap" />
                    </cm:TzDataTemplate>
                  </cm:tzDataGridTemplateColumn.CellTemplate>
                </cm:tzDataGridTemplateColumn>
              </cm:tzDataGrid.Columns>
            </cm:tzDataGrid>
            <cm:tzDataSource Name="dsGrid" Content="dsGrid" Width="110" Height="25" ControlID="5498512243631579654" Canvas.Left="77.482033720000658" Canvas.Top="292.32821570666636" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" />
            <cm:TzGroupBox Name="GroupBox44" Width="1171.44933257" Height="149.99999999999997" ControlID="4913431789475265309" FontFamily="Tahoma" Canvas.Left="10.55066743" Canvas.Top="8" cm:Header="جستجو بر اساس">
              <Canvas>
                <cm:tzTextBox Name="txtWFID" Width="120" Height="21" ControlID="4720739133189081212" FontWeight="SemiBold" TextAlignment="Center" Canvas.Left="951.75266590333331" Canvas.Top="9.0638303899999073" cm:DataType="BigInt" cm:Len="10" />
                <cm:tzTextBox Name="txtTicketNo" Width="120" Height="21" ControlID="5081194363345449817" FontWeight="SemiBold" Foreground="#FF65AA20" TextAlignment="Center" Canvas.Left="951.75266590333331" Canvas.Top="36.1488303966664" />
                <cm:tzTextBox Name="txtBranchId" Width="248.04010828666719" Height="22" ControlID="5053119443844496676" FontWeight="SemiBold" Foreground="#FFFC0505" TextAlignment="Center" Canvas.Left="615.9396493433328" Canvas.Top="36.1488303966664" cm:DataType="Int" cm:Len="10" />
                <cm:tzLookUpComboBox Name="cmbTicketStatus" Width="120" Height="22" ControlID="5206205529288027938" Canvas.Left="951.75266590333331" Canvas.Top="64.823830393333225" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsTicketStatus" cm:tzDisplayItem="Name" cm:tzValueItem="Id" />
                <cm:tzLookUpComboBox Name="cmbBank" Width="248.04010828666719" Height="22" ControlID="4866769076819097450" Canvas.Left="615.9396493433328" Canvas.Top="9.06383039" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsBank" cm:DataType="NVarChar" cm:tzDisplayItem="CustomerName" cm:tzValueItem="CustomerKey" />
                <cm:tzLookUpComboBox Name="cmbService" Width="191.81666666999982" Height="22" ClearSelectionButtonVisibility="Collapsed" ControlID="5172994599657882546" Canvas.Left="347.07631600666627" Canvas.Top="9.0638303899999073" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsService" cm:DefaultValue="$اولی" cm:Event="dsSubService" cm:tzDisplayItem="ServiceTitle" cm:tzValueItem="ServiceId" />
                <cm:tzLookUpComboBox Name="cmbProblemGroup" Width="191.81666666999982" Height="22" ControlID="5610629158270476969" Canvas.Left="347.07631600666627" Canvas.Top="64.823830393333168" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProblemGroup" cm:tzDisplayItem="ProblemGroupTitle" cm:tzValueItem="ProblemGroupId" />
                <cm:tzLabel Name="Lable23" Content=":شماره فرآیند" ControlID="5611599856878086129" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="7.0638303899999073" />
                <cm:tzLabel Name="Lable24" Content=":Ticket شماره" ControlID="5751631579602051096" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="33.70058383" />
                <cm:tzLabel Name="Lable25" Content=":Ticket وضعیت" ControlID="4759944771073043398" FontFamily="Tahoma" Canvas.Left="1072.7526659033333" Canvas.Top="62.340497059999819" />
                <cm:tzLabel Name="Lable26" Content=":مشتری" ControlID="5733544356522518769" FontFamily="Tahoma" Canvas.Left="864.97975762999977" Canvas.Top="7.9449222166664981" />
                <cm:tzLabel Name="Lable30" Content=":کد " ControlID="5237963644095228093" FontFamily="Tahoma" Canvas.Left="864.97975762999977" Canvas.Top="32.758371246666485" />
                <cm:tzLabel Name="Lable55" Content=":نام سرویس" ControlID="4959885443946943293" FontFamily="Tahoma" Canvas.Left="539.50964934333274" Canvas.Top="7.0638303899997936" />
                <cm:tzDataSource Name="dsService" Content="dsService" Width="110" Height="25" ControlID="5270925061741186330" Canvas.Left="387.10135075999938" Canvas.Top="8.23666893666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchServiceName" />
                <cm:tzDataSource Name="dsProblemGroup" Content="dsProblemGroup" Width="110" Height="25" ControlID="5494490826325421717" Canvas.Left="403.86315519666687" Canvas.Top="65.233094723333437" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" />
                <cm:tzDataSource Name="dsTicketStatus" Content="dsTicketStatus" Width="110" Height="25" ControlID="4954260394000299803" Canvas.Left="943.75266590333331" Canvas.Top="65.233094723333409" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_StatusForSearch" />
                <cm:TzPersianTime Name="ptRegisteredTimeFrom" Width="52" Height="20" ControlID="5474774259234621899" Canvas.Left="176.16315519666662" Canvas.Top="91.233094723333323" />
                <cm:tzLabel Name="lblRegisteredDate" Content=":تاریخ صدور از" ControlID="5262685415673334101" FontFamily="Tahoma" Canvas.Left="237.16315519666676" Canvas.Top="63.823830393333168" />
                <cm:tzLabel Name="lblResgisteredTime" Content=":ساعت صدور از" ControlID="5135930511966319362" FontFamily="Tahoma" Canvas.Left="237.16315519666676" Canvas.Top="89.030497059999874" />
                <cm:PDatePicker Name="pdRegisteredDateFrom" Width="120" Height="20" ControlID="4895068962898797083" Canvas.Left="144.37152327666658" Canvas.Top="66.392163733333092" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
                <cm:tzLabel Name="Lable4142" Content=":گروه مشکل" ControlID="4717754987366344189" FontFamily="Tahoma" Canvas.Left="539.89298267666618" Canvas.Top="64.030497056666661" />
                <cm:tzLookUpComboBox Name="cmbRegisteredUser" Width="218.79163192" Height="22" ControlID="4909725041652514354" Canvas.Left="15.371523280000019" Canvas.Top="37.632163729999746" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredUser" cm:DefaultValue="" cm:tzDisplayItem="FullName" cm:tzValueItem="UserId" />
                <cm:tzLabel Name="Lable58" Content=":کارشناس ثبت کننده" ControlID="5331477548801797718" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="33.665497063333149" />
                <cm:tzLookUpComboBox Name="cmbRegisteredGroup" Width="218.79163192" Height="22" ControlID="4854957732111386219" Canvas.Left="15.371523280000019" Canvas.Top="9.06383039" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsRegisteredGroup" cm:Event="dsRegisteredUser" cm:tzDisplayItem="GroupName" cm:tzValueItem="GroupId" />
                <cm:tzDataSource Name="dsBank" Content="dsBank" Width="110" Height="25" ControlID="4947740875127604141" Canvas.Left="720.75206231666562" Canvas.Top="8.2366689366667174" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForCustomer" />
                <cm:tzLabel Name="Lable44" Content=":گروه ثبت کننده " Width="98.22666667" Height="24.48333333" ControlID="4649871390430367497" FontFamily="Tahoma" Canvas.Left="235.16315519666682" Canvas.Top="6.5804970599999066" />
                <cm:tzLabel Name="Lable43" Content=":زیرسرویس" ControlID="5429890452776562087" FontFamily="Tahoma" Canvas.Left="539.50964934333274" Canvas.Top="34.872163729999755" />
                <cm:tzLookUpComboBox Name="cmbSubService" Width="191.81666666999982" Height="22" ControlID="5634760713754507600" Canvas.Left="347.07631600666627" Canvas.Top="36.1488303966664" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsSubService" cm:DefaultValue="$اولی" cm:Event="dsProblemGroup" cm:tzDisplayItem="SubServiceTitle" cm:tzValueItem="SubServiceId" />
                <cm:tzDataSource Name="dsSubService" Content="dsSubService" Width="110" Height="25" ControlID="4692127204784513660" Canvas.Left="387.10135075999938" Canvas.Top="34.236668936666661" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" />
                <cm:PDatePicker Name="pdRegisteredDateTo" Width="120" Height="20" ControlID="4688435891586898475" Canvas.Left="15.371523276666967" Canvas.Top="67.233094723333323" cm:DefaultValue="$CurrentDate" cm:Event="dsMandatoryForDate" />
                <cm:TzPersianTime Name="ptRegisteredTimeTo" Width="52" Height="20" ControlID="4995912702823116106" Canvas.Left="46.82666666666627" Canvas.Top="91.233094723333323" />
                <cm:tzLabel Name="Lable57" Content=":تا" Width="30.393333330000104" Height="23" ControlID="4935838449943848636" FontFamily="Tahoma" Canvas.Left="107.82666666666604" Canvas.Top="88.233094723333437" />
                <cm:tzLabel Name="Lable59" Content=":تا" Width="27.544856610000522" Height="23" ControlID="4877654925528239734" FontFamily="Tahoma" Canvas.Left="107.82666666666604" Canvas.Top="67.23309472333338" />
                <cm:tzLookUpComboBox Name="Cmbrequst" Width="248.04010828666719" Height="22" ControlID="4998721771557464900" Canvas.Left="615.9396493433328" Canvas.Top="64.823830393333168" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="DSrequst" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="TicketType" cm:tzValueItem="TicketSubjectId" />
                <cm:tzLabel Name="Lable27" Content=":نوع تیکت" Width="NaN" Height="NaN" ControlID="5288146048034297512" FontFamily="Tahoma" Canvas.Left="864.979757633333" Canvas.Top="65.749761390000074" />
                <cm:tzDataSource Name="DSrequst" Content="DSrequst" Width="88" Height="25" ControlID="5536746931098071987" Canvas.Left="712.75206231666562" Canvas.Top="60.236668936666618" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_CU_BPR_TicketType" />
                <cm:tzDataSource Name="dsRegisteredGroup" Content="dsRegisteredGroup" Width="125.38715596" Height="25" ControlID="5402118367232801633" Canvas.Left="49.775999236666593" Canvas.Top="8.23666893666666" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchGroupName" />
                <cm:tzDataSource Name="dsRegisteredUser" Content="dsRegisteredUser" Width="153" Height="25" ControlID="5012879529886775460" Canvas.Left="49.775999236666621" Canvas.Top="34.236668936666661" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" />
                <cm:tzLabel Name="Lable51" Content=":نتیجه بررسی" Width="85.772908273333314" Height="24.48333333" FontFamily="Tahoma" Canvas.Left="864.979757633333" Canvas.Top="91.937148426666454" cm:ControlID="5014580280989272697" />
                <cm:tzLookUpComboBox Name="cmbResultStatus" Width="248.04010828666719" Height="22" Canvas.Left="615.9396493433328" Canvas.Top="91.937148426666454" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="4884950633172409629" cm:DataBinding="dsResultStatus" cm:DataType="Int" cm:DefaultValue="$اولی" cm:Event="dsEnableResultRefer" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
                <cm:tzDataSource Name="dsResultStatus" Content="dsResultStatus" Width="110" Height="25" ControlID="5276806715386994728" Canvas.Left="690.47203338000008" Canvas.Top="97.7233333333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_Shahin_GetResultStatusForSearchForm " />
                <cm:tzLabel Name="Lable53" Content=":نتیجه ارجاع" Width="85.772908273333314" Height="24.48333333" FontFamily="Tahoma" Canvas.Left="539.89298267666618" Canvas.Top="91.937148426666454" cm:ControlID="5143055274979120562" />
                <cm:tzLookUpComboBox Name="cmbResultRefer" Width="191.81666666999982" Height="22" Canvas.Left="347.07631600666627" Canvas.Top="91.937148426666454" cm:CanDeleteItem="True" cm:ComboBoxDataSourceType="DataSystem" cm:ControlID="5669998775928739483" cm:DataBinding="dsResulStatusRefer" cm:DataType="Int" cm:DefaultValue="" cm:IsAutoCompleted="True" cm:PersistFieldName="" cm:TabIndex="9" cm:tzDisplayItem="Result" cm:tzValueItem="ID" />
                <cm:tzDataSource Name="dsResulStatusRefer" Content="dsResulStatusRefer" Width="110" Height="25" ControlID="5278696751676114572" Canvas.Left="345.3807196699986" Canvas.Top="88.9371484266664" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " />
              </Canvas>
            </cm:TzGroupBox>
            <cm:TZButton Name="btnSearch" Content="جستجو" Width="113.88715596" Height="23" ControlID="4865742882409106383" FontFamily="Tahoma" Canvas.Left="159.55066742999998" Canvas.Top="166.99999999999997" cm:Event="dsGrid,dsMandatoryForDate" cm:IsVisibleItem="True" cm:Validations="5050956195802644306" />
            <cm:TZReport Name="rpt" Content="مشاهده گزارش" Width="114" Height="23.000000000000007" ControlID="4710686342849233362" FontFamily="Tahoma" Canvas.Left="10.550667429999976" Canvas.Top="167" cm:ComponentType="tzTextBox,TicketNo#PDatePicker,RegisteredDate#PDatePicker,EndDate#TzPersianTime,RegisteredTime#TzPersianTime,EndTime#tzTextBox,CustomerCode#tzLookUpComboBox,CustomerKey#tzTextBox,WFID#tzLookUpComboBox,TicketStatus#tzLookUpComboBox,TicketType#tzLookUpComboBox,UserId#tzLookUpComboBox,ServiceId#tzLookUpComboBox,Subserviceid#tzLookUpComboBox,ProblemGroupid#tzLookUpComboBox,registerGroupID#PDatePicker,CurrentDate#tzLookUpComboBox,ResultStatusID#tzLookUpComboBox,ResultStatusRefer#" cm:ReportID="104" cm:ReportParamId="5081194363345449817,txtTicketNo,TicketNo#4895068962898797083,pdRegisteredDateFrom,RegisteredDate#4688435891586898475,pdRegisteredDateTo,EndDate#5474774259234621899,ptRegisteredTimeFrom,RegisteredTime#4995912702823116106,ptRegisteredTimeTo,EndTime#5053119443844496676,txtBranchId,CustomerCode#4866769076819097450,cmbBank,CustomerKey#4720739133189081212,txtWFID,WFID#5206205529288027938,cmbTicketStatus,TicketStatus#4998721771557464900,Cmbrequst,TicketType#4854957732111386219,cmbRegisteredUser,UserId#5172994599657882546,cmbService,ServiceId#5634760713754507600,cmbSubService,Subserviceid#5610629158270476969,cmbProblemGroup,ProblemGroupid#4854957732111386219,cmbRegisteredGroup,registerGroupID#4950588884094236537,CurrDate,CurrentDate#4884950633172409629,cmbResultStatus,ResultStatusID#5669998775928739483,cmbResultRefer,ResultStatusRefer#" />
            <cm:PDatePicker Name="CurrDate" Width="120" Height="20" ControlID="4950588884094236537" Canvas.Left="469.5" Canvas.Top="0" cm:DefaultValue="$CurrentDate" cm:IsVisibleItem="False" />
            <cm:TZCheckBox Name="chbMandatoryForDate" Content="chbMandatoryForDate" Width="151.7916319166666" Height="20" ControlID="4703328241842357957" FontFamily="Tahoma" Canvas.Left="274.43782338999995" cm:DataBinding="dsMandatoryForDate" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
            <cm:tzDataSource Name="dsMandatoryForDate" Content="dsMandatoryForDate" Width="146.71999999666684" Height="25" ControlID="5311538154545928717" Canvas.Left="94.443650106665928" Canvas.Top="-5" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" />
            <cm:TZCheckBox Name="chbEnableResultRefer" Content="chbEnableResultRefer" Width="191.81666666999982" Height="20" ControlID="5459814118812540729" FontFamily="Tahoma" Canvas.Left="620.8771559600001" Canvas.Top="5" cm:DataBinding="dsEnableResultRefer" cm:DataBindingField="Result" cm:FCVCol="5669998775928739483#" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5669998775928739483#" cm:TMCol="" cm:TVCol="5669998775928739483#5143055274979120562#" />
            <cm:tzDataSource Name="dsEnableResultRefer" Content="dsEnableResultRefer" Width="110" Height="25" ControlID="5126414657779673565" Canvas.Left="760.1700638399991" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="CNNISC-CRM" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2021/02/14 08:14:42', GUID = 'e2e140ed-de38-4f0b-af2d-574db3a47549', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "201990" ,"components": [{"value": "","key": "5459814118812540729","label": "chbEnableResultRefer","controlType": "checkbox","caption": "chbEnableResultRefer" ,"DataBindingField" : "Result"},{"value": "","key": "4703328241842357957","label": "chbMandatoryForDate","controlType": "checkbox","caption": "chbMandatoryForDate" ,"DataBindingField" : "Column1"},{"key": "4866769076819097450","label": "cmbBank","value": "", "controlType": "dropdown","options":""},{"key": "5610629158270476969","label": "cmbProblemGroup","value": "", "controlType": "dropdown","options":""},{"key": "4854957732111386219","label": "cmbRegisteredGroup","value": "", "controlType": "dropdown","options":""},{"key": "4909725041652514354","label": "cmbRegisteredUser","value": "", "controlType": "dropdown","options":""},{"key": "4998721771557464900","label": "Cmbrequst","value": "", "controlType": "dropdown","options":""},{"key": "5669998775928739483","label": "cmbResultRefer","value": "", "controlType": "dropdown","options":""},{"key": "4884950633172409629","label": "cmbResultStatus","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5172994599657882546","label": "cmbService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5634760713754507600","label": "cmbSubService","value": "$اولی", "controlType": "dropdown","options":""},{"key": "5206205529288027938","label": "cmbTicketStatus","value": "", "controlType": "dropdown","options":""},{"key":"4947740875127604141" , "dataSourceName":"dsBank" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForCustomer" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5126414657779673565" , "dataSourceName":"dsEnableResultRefer" , "controlType": "datasource",  "selectQuery" :"if {@cmbResultStatus}=2 begin select ''True'' as Result end else select ''False'' as Result" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5498512243631579654" , "dataSourceName":"dsGrid" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_GridForSearch {@txtWFID},{@txtTicketNo},{@cmbTicketStatus}, {@Cmbrequst} ,{@pdRegisteredDateFrom},{@pdRegisteredDateTo}, {@ptRegisteredTimeFrom},{@ptRegisteredTimeTo},{@txtBranchId}, {@cmbBank},{@cmbRegisteredUser},{@cmbService},{@cmbSubService}, {@cmbProblemGroup}, {@cmbRegisteredGroup},{@cmbResultStatus},{@cmbResultRefer}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5311538154545928717" , "dataSourceName":"dsMandatoryForDate" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchDateMandatory {@pdRegisteredDateFrom} ,{@pdRegisteredDateTo}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5494490826325421717" , "dataSourceName":"dsProblemGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForProblemGroup {@cmbSubService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5402118367232801633" , "dataSourceName":"dsRegisteredGroup" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchGroupName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5012879529886775460" , "dataSourceName":"dsRegisteredUser" , "controlType": "datasource",  "selectQuery" :"Exec Sp_CU_Shahin_SearchForRegisteredUser {@cmbRegisteredGroup}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5536746931098071987" , "dataSourceName":"DSrequst" , "controlType": "datasource",  "selectQuery" :"Sp_CU_BPR_TicketType" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5278696751676114572" , "dataSourceName":"dsResulStatusRefer" , "controlType": "datasource",  "selectQuery" :"EXEC [dbo].[SP_CU_Shahin_GetResultStatusReferForSearchForm] " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5276806715386994728" , "dataSourceName":"dsResultStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_GetResultStatusForSearchForm " , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5270925061741186330" , "dataSourceName":"dsService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchServiceName" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4692127204784513660" , "dataSourceName":"dsSubService" , "controlType": "datasource",  "selectQuery" :"Exec SP_CU_Shahin_SearchForSubservice {@cmbService}" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4954260394000299803" , "dataSourceName":"dsTicketStatus" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_Shahin_StatusForSearch" , "connectionName" :"CNNISC-CRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5053119443844496676","label": "txtBranchId","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5081194363345449817","label": "txtTicketNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4720739133189081212","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 201990
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm201990') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm201990] ( [frm201990Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4720739133189081212]  [bigint] NULL , [Col_5081194363345449817]  [nvarchar] ( 50) NULL , [Col_5053119443844496676]  [int] NULL , [Col_5206205529288027938]  [nvarchar] ( 50) NULL , [Col_4866769076819097450]  [nvarchar] ( 50) NULL , [Col_5172994599657882546]  [nvarchar] ( 50) NULL , [Col_5610629158270476969]  [nvarchar] ( 50) NULL , [Col_4909725041652514354]  [nvarchar] ( 50) NULL , [Col_4854957732111386219]  [nvarchar] ( 50) NULL , [Col_5634760713754507600]  [nvarchar] ( 50) NULL , [Col_4998721771557464900]  [int] NULL , [Col_4895068962898797083]  [nvarchar] ( 10) NULL , [Col_4688435891586898475]  [nvarchar] ( 10) NULL , [Col_5474774259234621899]  [nvarchar] ( 5) NULL , [Col_4995912702823116106]  [nvarchar] ( 5) NULL , [Col_4703328241842357957]  [bit] NULL , [Col_4950588884094236537]  [nvarchar] ( 10) NULL , [Col_4884950633172409629]  [int] NULL , [Col_5669998775928739483]  [int] NULL , [Col_5459814118812540729]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm201990Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'frm201990Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD frm201990Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4720739133189081212' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4720739133189081212 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5081194363345449817' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5081194363345449817 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5053119443844496676' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5053119443844496676 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5206205529288027938' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5206205529288027938 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4866769076819097450' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4866769076819097450 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5172994599657882546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5172994599657882546 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5610629158270476969' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5610629158270476969 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4909725041652514354' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4909725041652514354 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4854957732111386219' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4854957732111386219 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5634760713754507600' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5634760713754507600 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4998721771557464900' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4998721771557464900 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4895068962898797083' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4895068962898797083 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4688435891586898475' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4688435891586898475 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5474774259234621899' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5474774259234621899 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4995912702823116106' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4995912702823116106 nvarchar (5) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4703328241842357957' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4703328241842357957 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4950588884094236537' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4950588884094236537 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_4884950633172409629' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_4884950633172409629 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5669998775928739483' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5669998775928739483 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm201990' AND COLUMN_NAME = 'Col_5459814118812540729' )  BEGIN ALTER TABLE [dbo].[Tbl_frm201990] ADD Col_5459814118812540729 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5669998775928739483 AS int,  @Col_5459814118812540729 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm201990](Col_4720739133189081212,Col_5081194363345449817,Col_5053119443844496676,Col_5206205529288027938,Col_4866769076819097450,Col_5172994599657882546,Col_5610629158270476969,Col_4909725041652514354,Col_4854957732111386219,Col_5634760713754507600,Col_4998721771557464900,Col_4895068962898797083,Col_4688435891586898475,Col_5474774259234621899,Col_4995912702823116106,Col_4703328241842357957,Col_4950588884094236537,Col_4884950633172409629,Col_5669998775928739483,Col_5459814118812540729) VALUES ( @Col_4720739133189081212,@Col_5081194363345449817,@Col_5053119443844496676,@Col_5206205529288027938,@Col_4866769076819097450,@Col_5172994599657882546,@Col_5610629158270476969,@Col_4909725041652514354,@Col_4854957732111386219,@Col_5634760713754507600,@Col_4998721771557464900,@Col_4895068962898797083,@Col_4688435891586898475,@Col_5474774259234621899,@Col_4995912702823116106,@Col_4703328241842357957,@Col_4950588884094236537,@Col_4884950633172409629,@Col_5669998775928739483,@Col_5459814118812540729 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm201990]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm201990
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm201990] ( @PKFormId as bigint OUTPUT ,  @Col_4720739133189081212 AS bigint,  @Col_5081194363345449817 AS nvarchar(50),  @Col_5053119443844496676 AS int,  @Col_5206205529288027938 AS nvarchar(50),  @Col_4866769076819097450 AS nvarchar(50),  @Col_5172994599657882546 AS nvarchar(50),  @Col_5610629158270476969 AS nvarchar(50),  @Col_4909725041652514354 AS nvarchar(50),  @Col_4854957732111386219 AS nvarchar(50),  @Col_5634760713754507600 AS nvarchar(50),  @Col_4998721771557464900 AS int,  @Col_4895068962898797083 AS nvarchar(10),  @Col_4688435891586898475 AS nvarchar(10),  @Col_5474774259234621899 AS nvarchar(5),  @Col_4995912702823116106 AS nvarchar(5),  @Col_4703328241842357957 AS bit,  @Col_4950588884094236537 AS nvarchar(10),  @Col_4884950633172409629 AS int,  @Col_5669998775928739483 AS int,  @Col_5459814118812540729 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm201990] SET Col_4720739133189081212 =  @Col_4720739133189081212, Col_5081194363345449817 =  @Col_5081194363345449817, Col_5053119443844496676 =  @Col_5053119443844496676, Col_5206205529288027938 =  @Col_5206205529288027938, Col_4866769076819097450 =  @Col_4866769076819097450, Col_5172994599657882546 =  @Col_5172994599657882546, Col_5610629158270476969 =  @Col_5610629158270476969, Col_4909725041652514354 =  @Col_4909725041652514354, Col_4854957732111386219 =  @Col_4854957732111386219, Col_5634760713754507600 =  @Col_5634760713754507600, Col_4998721771557464900 =  @Col_4998721771557464900, Col_4895068962898797083 =  @Col_4895068962898797083, Col_4688435891586898475 =  @Col_4688435891586898475, Col_5474774259234621899 =  @Col_5474774259234621899, Col_4995912702823116106 =  @Col_4995912702823116106, Col_4703328241842357957 =  @Col_4703328241842357957, Col_4950588884094236537 =  @Col_4950588884094236537, Col_4884950633172409629 =  @Col_4884950633172409629, Col_5669998775928739483 =  @Col_5669998775928739483, Col_5459814118812540729 =  @Col_5459814118812540729 WHERE [frm201990Id] = @PKFormId 
 END 
GO
