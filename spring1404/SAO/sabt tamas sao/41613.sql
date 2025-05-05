GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 41613) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (41613, N'ثبت تماس',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="918.51666667" Background="White">
  <Canvas Width="964" Height="1226">
    <ViewLayouts />
    <cm:TZTabControl Name="TabControl2" Width="928" Height="877" ControlID="4716934453327900403" Canvas.Left="14" Canvas.Top="21.92829219">
      <cm:TZTabItem HeaderText="فرم فرآیند">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox58" Width="911.94924724" Height="643.51666666666665" ControlID="4976751935589366129" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="896" Height="612.22355967333328" ControlID="5621268128858234199" Canvas.Left="2.14677811" Canvas.Top="1.80977366">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.158357660916014*" />
                  <ColumnDefinition Width="0.164582456055109*" />
                  <ColumnDefinition Width="0.169022110496181*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.167734319102866*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.096371323582296*" />
                  <RowDefinition Height="0.10402289252238*" />
                  <RowDefinition Height="0.103227121035759*" />
                  <RowDefinition Height="0.102524676255903*" />
                  <RowDefinition Height="0.0970520213207262*" />
                  <RowDefinition Height="0.0990985950438745*" />
                  <RowDefinition Height="0.096626539350221*" />
                  <RowDefinition Height="0.100738306982145*" />
                  <RowDefinition Height="0.0966265393502208*" />
                  <RowDefinition Height="0.103711984556475*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable8" Content="کد ملی" Width="49" Height="26" Margin="0,2.45352415666673,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5479656272594281761" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtNationalCode" Width="78.572425830000043" Height="21" Margin="13.7175240861678,15.4535241566667,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5718928631750974967" Grid.Column="5" Grid.Row="0" />
                <cm:tzLabel Name="Lable10" Content="نام" Width="38" Height="23" Margin="0,5.45352415666673,6.04729992383216,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4735299319698525072" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtName" Width="101.03490401000033" Height="21" Margin="0,0,45.0472999238322,8.54727061731717" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5015109671430041049" Grid.Column="4" Grid.Row="0" />
                <cm:tzLabel Name="Lable12" Content="نام خانوادگی" Width="66.680628270000057" Height="23" Margin="0,5.45352415666673,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5329317352985743901" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:tzTextBox Name="txtLastName" Width="75.500872610000215" Height="21" Margin="0,0,55.2202643200001,8.54727061731717" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4878731099635972323" Grid.Column="3" Grid.Row="0" />
                <cm:tzLabel Name="Lable14" Content="شماره تماس" Width="68.000000000000057" Height="23" Margin="0,5.45352415666679,4.28706273070429,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5552455479006248384" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
                <cm:tzTextBox Name="txtContactNo" Width="66.6781850000001" Height="21" Margin="24.0651683538738,0,0,8.54727061731705" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5639456084995486972" Grid.Column="2" Grid.Row="0" />
                <cm:tzLabel Name="Lable16" Content="موضوعات پرتکرار" Width="107" Height="23.000000000000007" Margin="35.2899499161679,18.7298656426831,8.00000000000011,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5091018589039932203" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnRegister" Content="ثبت نام" Width="120" Height="20.000000000000007" Margin="12.2190087927313,21.7298656426831,20.2369383438325,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4669561737145455733" GroupName="RepeatedSubjects" Grid.Column="4" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnAffirmation" Content="تاییدیه تحصیلی" Width="120" Height="20.000000000000007" Margin="9.92007681929567,18.7298656426831,22.5358703172682,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5554754662913942396" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="3" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnDegreeApproval" Content="تایید مدرک" Width="120" Height="20.000000000000007" Margin="24.0651683538738,18.7298656426831,7.37864265070436,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5147703354148026239" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="2" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnCommitmentCancelation" Content="لغو تعهد" Width="120" Height="20.000000000000007" Margin="15.9664089892513,18.7298656426831,11.4994716361263,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5277225740029483546" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="1" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnComission" Content="کمیسیون" Width="119.99999999999999" Height="20.000000000000007" Margin="15.5130048600001,18.7298656426831,6.37545932074843,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5085479191938738428" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="0" Grid.Row="1" />
                <cm:tzLabel Name="Lable20" Content="موضوعات دیگر" Width="55.845688930000058" Height="23" Margin="0,8.32399656973149,24.9548974300001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4964955926432859829" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbOtherTopics" Width="79.7267369" Height="22" Margin="20.9984996161678,0,0,8.87407892561086" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5023808873728860115" Grid.Column="5" Grid.Row="2" />
                <cm:tzLabel Name="Lable25" Content="لیست تیکت های ثبت شده" Width="134.18963842000039" Height="23" Margin="0,7.60317437136072,21.1476114199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5090331543454500573" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
                <cm:tzLabel Name="Lable27" Content="لیست فرآیندهای ثبت شده" Width="120.80753046000018" Height="23" Margin="0,24.182908498599,15.76489537,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5505996412291611622" FontFamily="Tahoma" Grid.Column="5" Grid.Row="7" />
                <cm:tzDataGrid Name="gvRegisteredWF" Width="600.83377347" Height="88" Margin="0,18.0066079300001,77.7724731438321,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144064676771733540" ItemsSource="{Binding ElementName=dstest, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="8" Grid.RowSpan="2" cm:BindingForm="dstest">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceID}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:TZButton Name="btnSearchWF" Content="جستجو" Width="105" Height="23" Margin="0,0,0,14.4914563974748" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5045934540818675603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="7" />
                <cm:TZButton Name="btnSearchTicket" Content="جستجو" Width="105.00000000000001" Height="23.000000000000004" Margin="0,20.5718748513609,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5141512261127848650" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" />
                <cm:tzDataGrid Name="gvRegisteredTickets" Width="542.21579702000008" Height="89.000000000000014" Margin="79.8523885799999,15.5166198348937,123.641864483832,15.3109186614009" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5410151616794185598" ItemsSource="{Binding ElementName=dstest, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="5" Grid.RowSpan="2" cm:BindingForm="dstest">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceID}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzLabel Name="Lable22" Content="شرح" Width="635.59620927000014" Height="23" Margin="0,0,30.261452233832,31.8740789268943" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4648431669356448182" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="2" />
                <cm:tzTextBox Name="txtDescription" Width="549.86584405" Height="75.83851193" Margin="79.85238858,40.5215274284481,115.991817453832,9.60605838863924" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="5201950943389170313" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="2" Grid.RowSpan="2" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLabel Name="Lable41" Content="فرآیند مرتبط" Width="96" Height="22" Margin="0,1.18290849859892,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5461645054891786978" FontFamily="Tahoma" Grid.Column="3" Grid.Row="7" />
                <cm:tzTextBox Name="txtRelatedWF" Width="115.16841194000008" Height="21.000000000000004" Margin="14.7516648792954,0,22.5358703172683,14.4914563974748" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5704821534341723680" Grid.Column="3" Grid.Row="7" />
                <cm:tzDataSource Name="dstest" Content="dstest" Width="110" Height="25.000000000000004" Margin="0,40.934153801361,11.4994716361263,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4917056251901359528" Grid.Column="1" Grid.Row="4" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select top 5 * from task.tblworkflowinstance" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox59" Width="911.94924724" Height="190" ControlID="5604939951563303688" Canvas.Left="8" Canvas.Top="652.51666666666665" cm:Header="">
            <Canvas>
              <cm:Grid Width="883.94924724" Height="152.51666666666665" ControlID="4900141141839607149" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.169314163101665*" />
                  <ColumnDefinition Width="0.165173079103264*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.166596984957604*" />
                  <ColumnDefinition Width="0.168569614630938*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.250149965059305*" />
                  <RowDefinition Height="0.250257483918686*" />
                  <RowDefinition Height="0.252438999460677*" />
                  <RowDefinition Height="0.247153551561332*" />
                </Grid.RowDefinitions>
                <cm:TZRadioButton Name="RadioButton29" Content="راهنمایی" Width="120" Height="20" Margin="21.0069839605543,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4680749092622027115" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton30" Content="خطای سامانه" Width="120" Height="20" Margin="0,8,21.6813937094455,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5219106803957463407" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton31" Content="خطای کاربر" Width="120" Height="20" Margin="0,8,16.5920273137178,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5190006649273867614" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton32" Content="پیگیری روز درخواست ثبت شده" Width="120" Height="20" Margin="11.26865983157,8,14.7359591060739,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5622112977338097565" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
                <cm:tzLabel Name="Lable34" Content="توضیحات" Width="101" Height="23" Margin="0,8.37042380237168,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5094469259194278180" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:tzTextBox Name="txtDesc" Width="634" Height="88" Margin="79.26086957,8.37042380237168,21.6813937094457,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5577593720855528687" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" Grid.RowSpan="3" cm:IsMulitiLine="True" cm:Len="1000" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="استعلام سوابق تحصیلی">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox37" Width="906" Height="834.51666666666665" ControlID="5508596512104761493" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="797.0333333333333" ControlID="5067820284656959868" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.162369233692*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.168593042549002*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.167856588181507*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.19832400603776*" />
                  <RowDefinition Height="0.26169576376594*" />
                  <RowDefinition Height="0.290397879791883*" />
                  <RowDefinition Height="0.249582350404417*" />
                </Grid.RowDefinitions>
                <cm:TZButton Name="btnSearchRequest" Content="جستجو" Width="99" Height="23" Margin="0,92.1325719999999,21.259259261576,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4861059585292811700" Grid.Column="0" Grid.Row="0" />
                <cm:tzDataGrid Name="gvSearchRequest" Width="795" Height="553" Margin="0,18.8395061777041,44.87191158,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5383966629826291922" ItemsSource="{Binding ElementName=dsProfile, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" Grid.RowSpan="3" cm:BindingForm="dsProfile">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserId" DecimalMark="False" HeaderText="ایدی" IsRowColorField="False" KeyField="False" SortMemberPath="UserId">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserId}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsProfile" Content="dsProfile" Width="109.99999999999999" Height="25" Margin="29.492078002745,103.55105803,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397884644294965982" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select top 5 * from users.tblusers" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
    </cm:TZTabControl>
  </Canvas>
</cm:TZBaseControl>',1,'2025/05/03 17:19:39', '47d685d0-e691-4c96-b122-f6155f039fcb', 0, N'', N'{"formID": "41613" ,"components": [{"key": "5023808873728860115","label": "cmbOtherTopics","value": "", "controlType": "dropdown","options":""},{"key":"5397884644294965982" , "dataSourceName":"dsProfile" , "controlType": "datasource",  "selectQuery" :"select top 5 * from users.tblusers" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4917056251901359528" , "dataSourceName":"dstest" , "controlType": "datasource",  "selectQuery" :"select top 5 * from task.tblworkflowinstance" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5639456084995486972","label": "txtContactNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5577593720855528687","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5201950943389170313","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4878731099635972323","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5015109671430041049","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5718928631750974967","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704821534341723680","label": "txtRelatedWF","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'ثبت تماس',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Height="918.51666667" Background="White">
  <Canvas Width="964" Height="1226">
    <ViewLayouts />
    <cm:TZTabControl Name="TabControl2" Width="928" Height="877" ControlID="4716934453327900403" Canvas.Left="14" Canvas.Top="21.92829219">
      <cm:TZTabItem HeaderText="فرم فرآیند">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox58" Width="911.94924724" Height="643.51666666666665" ControlID="4976751935589366129" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="896" Height="612.22355967333328" ControlID="5621268128858234199" Canvas.Left="2.14677811" Canvas.Top="1.80977366">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.158357660916014*" />
                  <ColumnDefinition Width="0.164582456055109*" />
                  <ColumnDefinition Width="0.169022110496181*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.170151726714915*" />
                  <ColumnDefinition Width="0.167734319102866*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.096371323582296*" />
                  <RowDefinition Height="0.10402289252238*" />
                  <RowDefinition Height="0.103227121035759*" />
                  <RowDefinition Height="0.102524676255903*" />
                  <RowDefinition Height="0.0970520213207262*" />
                  <RowDefinition Height="0.0990985950438745*" />
                  <RowDefinition Height="0.096626539350221*" />
                  <RowDefinition Height="0.100738306982145*" />
                  <RowDefinition Height="0.0966265393502208*" />
                  <RowDefinition Height="0.103711984556475*" />
                </Grid.RowDefinitions>
                <cm:tzLabel Name="Lable8" Content="کد ملی" Width="49" Height="26" Margin="0,2.45352415666673,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5479656272594281761" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:tzTextBox Name="txtNationalCode" Width="78.572425830000043" Height="21" Margin="13.7175240861678,15.4535241566667,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5718928631750974967" Grid.Column="5" Grid.Row="0" />
                <cm:tzLabel Name="Lable10" Content="نام" Width="38" Height="23" Margin="0,5.45352415666673,6.04729992383216,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4735299319698525072" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:tzTextBox Name="txtName" Width="101.03490401000033" Height="21" Margin="0,0,45.0472999238322,8.54727061731717" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5015109671430041049" Grid.Column="4" Grid.Row="0" />
                <cm:tzLabel Name="Lable12" Content="نام خانوادگی" Width="66.680628270000057" Height="23" Margin="0,5.45352415666673,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5329317352985743901" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:tzTextBox Name="txtLastName" Width="75.500872610000215" Height="21" Margin="0,0,55.2202643200001,8.54727061731717" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4878731099635972323" Grid.Column="3" Grid.Row="0" />
                <cm:tzLabel Name="Lable14" Content="شماره تماس" Width="68.000000000000057" Height="23" Margin="0,5.45352415666679,4.28706273070429,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5552455479006248384" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
                <cm:tzTextBox Name="txtContactNo" Width="66.6781850000001" Height="21" Margin="24.0651683538738,0,0,8.54727061731705" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5639456084995486972" Grid.Column="2" Grid.Row="0" />
                <cm:tzLabel Name="Lable16" Content="موضوعات پرتکرار" Width="107" Height="23.000000000000007" Margin="35.2899499161679,18.7298656426831,8.00000000000011,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5091018589039932203" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnRegister" Content="ثبت نام" Width="120" Height="20.000000000000007" Margin="12.2190087927313,21.7298656426831,20.2369383438325,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4669561737145455733" GroupName="RepeatedSubjects" Grid.Column="4" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnAffirmation" Content="تاییدیه تحصیلی" Width="120" Height="20.000000000000007" Margin="9.92007681929567,18.7298656426831,22.5358703172682,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5554754662913942396" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="3" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnDegreeApproval" Content="تایید مدرک" Width="120" Height="20.000000000000007" Margin="24.0651683538738,18.7298656426831,7.37864265070436,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5147703354148026239" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="2" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnCommitmentCancelation" Content="لغو تعهد" Width="120" Height="20.000000000000007" Margin="15.9664089892513,18.7298656426831,11.4994716361263,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5277225740029483546" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="1" Grid.Row="1" />
                <cm:TZRadioButton Name="rbnComission" Content="کمیسیون" Width="119.99999999999999" Height="20.000000000000007" Margin="15.5130048600001,18.7298656426831,6.37545932074843,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5085479191938738428" FontFamily="Tahoma" GroupName="RepeatedSubjects" Grid.Column="0" Grid.Row="1" />
                <cm:tzLabel Name="Lable20" Content="موضوعات دیگر" Width="55.845688930000058" Height="23" Margin="0,8.32399656973149,24.9548974300001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4964955926432859829" FontFamily="Tahoma" Grid.Column="5" Grid.Row="2" />
                <cm:tzLookUpComboBox Name="cmbOtherTopics" Width="79.7267369" Height="22" Margin="20.9984996161678,0,0,8.87407892561086" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5023808873728860115" Grid.Column="5" Grid.Row="2" />
                <cm:tzLabel Name="Lable25" Content="لیست تیکت های ثبت شده" Width="134.18963842000039" Height="23" Margin="0,7.60317437136072,21.1476114199999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5090331543454500573" FontFamily="Tahoma" Grid.Column="4" Grid.ColumnSpan="2" Grid.Row="4" />
                <cm:tzLabel Name="Lable27" Content="لیست فرآیندهای ثبت شده" Width="120.80753046000018" Height="23" Margin="0,24.182908498599,15.76489537,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5505996412291611622" FontFamily="Tahoma" Grid.Column="5" Grid.Row="7" />
                <cm:tzDataGrid Name="gvRegisteredWF" Width="600.83377347" Height="88" Margin="0,18.0066079300001,77.7724731438321,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5144064676771733540" ItemsSource="{Binding ElementName=dstest, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="8" Grid.RowSpan="2" cm:BindingForm="dstest">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceID}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:TZButton Name="btnSearchWF" Content="جستجو" Width="105" Height="23" Margin="0,0,0,14.4914563974748" HorizontalAlignment="Center" VerticalAlignment="Bottom" ControlID="5045934540818675603" FontFamily="Tahoma" Grid.Column="0" Grid.Row="7" />
                <cm:TZButton Name="btnSearchTicket" Content="جستجو" Width="105.00000000000001" Height="23.000000000000004" Margin="0,20.5718748513609,0,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="5141512261127848650" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" />
                <cm:tzDataGrid Name="gvRegisteredTickets" Width="542.21579702000008" Height="89.000000000000014" Margin="79.8523885799999,15.5166198348937,123.641864483832,15.3109186614009" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5410151616794185598" ItemsSource="{Binding ElementName=dstest, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="5" Grid.RowSpan="2" cm:BindingForm="dstest">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn Width="73" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceID" DecimalMark="False" HeaderText="شماره فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceID">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceID}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WorkflowInstanceName" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WorkflowInstanceName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WorkflowInstanceName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzLabel Name="Lable22" Content="شرح" Width="635.59620927000014" Height="23" Margin="0,0,30.261452233832,31.8740789268943" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4648431669356448182" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="2" />
                <cm:tzTextBox Name="txtDescription" Width="549.86584405" Height="75.83851193" Margin="79.85238858,40.5215274284481,115.991817453832,9.60605838863924" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="5201950943389170313" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="2" Grid.RowSpan="2" cm:IsMulitiLine="True" cm:Len="1000" />
                <cm:tzLabel Name="Lable41" Content="فرآیند مرتبط" Width="96" Height="22" Margin="0,1.18290849859892,9.14811406726812,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5461645054891786978" FontFamily="Tahoma" Grid.Column="3" Grid.Row="7" />
                <cm:tzTextBox Name="txtRelatedWF" Width="115.16841194000008" Height="21.000000000000004" Margin="14.7516648792954,0,22.5358703172683,14.4914563974748" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" ControlID="5704821534341723680" Grid.Column="3" Grid.Row="7" />
                <cm:tzDataSource Name="dstest" Content="dstest" Width="110" Height="25.000000000000004" Margin="0,40.934153801361,11.4994716361263,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4917056251901359528" Grid.Column="1" Grid.Row="4" Grid.RowSpan="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select top 5 * from task.tblworkflowinstance" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
          <cm:TzGroupBox Name="GroupBox59" Width="911.94924724" Height="190" ControlID="5604939951563303688" Canvas.Left="8" Canvas.Top="652.51666666666665" cm:Header="">
            <Canvas>
              <cm:Grid Width="883.94924724" Height="152.51666666666665" ControlID="4900141141839607149" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.169314163101665*" />
                  <ColumnDefinition Width="0.165173079103264*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.165173079103265*" />
                  <ColumnDefinition Width="0.166596984957604*" />
                  <ColumnDefinition Width="0.168569614630938*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.250149965059305*" />
                  <RowDefinition Height="0.250257483918686*" />
                  <RowDefinition Height="0.252438999460677*" />
                  <RowDefinition Height="0.247153551561332*" />
                </Grid.RowDefinitions>
                <cm:TZRadioButton Name="RadioButton29" Content="راهنمایی" Width="120" Height="20" Margin="21.0069839605543,8,8,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="4680749092622027115" FontFamily="Tahoma" Grid.Column="5" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton30" Content="خطای سامانه" Width="120" Height="20" Margin="0,8,21.6813937094455,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5219106803957463407" FontFamily="Tahoma" Grid.Column="4" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton31" Content="خطای کاربر" Width="120" Height="20" Margin="0,8,16.5920273137178,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5190006649273867614" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
                <cm:TZRadioButton Name="RadioButton32" Content="پیگیری روز درخواست ثبت شده" Width="120" Height="20" Margin="11.26865983157,8,14.7359591060739,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5622112977338097565" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
                <cm:tzLabel Name="Lable34" Content="توضیحات" Width="101" Height="23" Margin="0,8.37042380237168,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5094469259194278180" FontFamily="Tahoma" Grid.Column="5" Grid.Row="1" />
                <cm:tzTextBox Name="txtDesc" Width="634" Height="88" Margin="79.26086957,8.37042380237168,21.6813937094457,0" HorizontalAlignment="Stretch" VerticalAlignment="Top" ControlID="5577593720855528687" Grid.Column="0" Grid.ColumnSpan="5" Grid.Row="1" Grid.RowSpan="3" cm:IsMulitiLine="True" cm:Len="1000" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
      <cm:TZTabItem HeaderText="استعلام سوابق تحصیلی">
        <Canvas>
          <cm:TzGroupBox Name="GroupBox37" Width="906" Height="834.51666666666665" ControlID="5508596512104761493" Canvas.Left="8" Canvas.Top="8" cm:Header="">
            <Canvas>
              <cm:Grid Width="878" Height="797.0333333333333" ControlID="5067820284656959868" Canvas.Left="8" Canvas.Top="8">
                <Grid.ColumnDefinitions>
                  <ColumnDefinition Width="0.162369233692*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.168593042549002*" />
                  <ColumnDefinition Width="0.16706037852583*" />
                  <ColumnDefinition Width="0.167856588181507*" />
                </Grid.ColumnDefinitions>
                <Grid.RowDefinitions>
                  <RowDefinition Height="0.19832400603776*" />
                  <RowDefinition Height="0.26169576376594*" />
                  <RowDefinition Height="0.290397879791883*" />
                  <RowDefinition Height="0.249582350404417*" />
                </Grid.RowDefinitions>
                <cm:TZButton Name="btnSearchRequest" Content="جستجو" Width="99" Height="23" Margin="0,92.1325719999999,21.259259261576,0" HorizontalAlignment="Center" VerticalAlignment="Top" ControlID="4861059585292811700" Grid.Column="0" Grid.Row="0" />
                <cm:tzDataGrid Name="gvSearchRequest" Width="795" Height="553" Margin="0,18.8395061777041,44.87191158,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5383966629826291922" ItemsSource="{Binding ElementName=dsProfile, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="6" Grid.Row="1" Grid.RowSpan="3" cm:BindingForm="dsProfile">
                  <cm:tzDataGrid.Resources>
                    <cm:MainCommands x:Key="MainCommands" />
                    <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                  </cm:tzDataGrid.Resources>
                  <cm:tzDataGrid.Columns>
                    <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserId" DecimalMark="False" HeaderText="ایدی" IsRowColorField="False" KeyField="False" SortMemberPath="UserId">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserId}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                    <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="UserName" DecimalMark="False" HeaderText="نام کاربر" IsRowColorField="False" KeyField="False" SortMemberPath="UserName">
                      <cm:tzDataGridTemplateColumn.CellTemplate>
                        <cm:TzDataTemplate>
                          <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding UserName}" TextWrapping="Wrap" />
                        </cm:TzDataTemplate>
                      </cm:tzDataGridTemplateColumn.CellTemplate>
                    </cm:tzDataGridTemplateColumn>
                  </cm:tzDataGrid.Columns>
                </cm:tzDataGrid>
                <cm:tzDataSource Name="dsProfile" Content="dsProfile" Width="109.99999999999999" Height="25" Margin="29.492078002745,103.55105803,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5397884644294965982" Grid.Column="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select top 5 * from users.tblusers" />
              </cm:Grid>
            </Canvas>
          </cm:TzGroupBox>
        </Canvas>
      </cm:TZTabItem>
    </cm:TZTabControl>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/05/03 17:19:39', GUID = '47d685d0-e691-4c96-b122-f6155f039fcb', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "41613" ,"components": [{"key": "5023808873728860115","label": "cmbOtherTopics","value": "", "controlType": "dropdown","options":""},{"key":"5397884644294965982" , "dataSourceName":"dsProfile" , "controlType": "datasource",  "selectQuery" :"select top 5 * from users.tblusers" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4917056251901359528" , "dataSourceName":"dstest" , "controlType": "datasource",  "selectQuery" :"select top 5 * from task.tblworkflowinstance" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "5639456084995486972","label": "txtContactNo","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5577593720855528687","label": "txtDesc","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5201950943389170313","label": "txtDescription","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4878731099635972323","label": "txtLastName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5015109671430041049","label": "txtName","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5718928631750974967","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5704821534341723680","label": "txtRelatedWF","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 41613
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm41613') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm41613] ( [frm41613Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5718928631750974967]  [nvarchar] ( 50) NULL , [Col_5015109671430041049]  [nvarchar] ( 50) NULL , [Col_4878731099635972323]  [nvarchar] ( 50) NULL , [Col_5639456084995486972]  [nvarchar] ( 50) NULL , [Col_5201950943389170313]  [nvarchar] ( 1000) NULL , [Col_5023808873728860115]  [nvarchar] ( 50) NULL , [Col_4669561737145455733]  [bit] NULL , [Col_5554754662913942396]  [bit] NULL , [Col_5147703354148026239]  [bit] NULL , [Col_5277225740029483546]  [bit] NULL , [Col_5085479191938738428]  [bit] NULL , [Col_4680749092622027115]  [bit] NULL , [Col_5219106803957463407]  [bit] NULL , [Col_5190006649273867614]  [bit] NULL , [Col_5622112977338097565]  [bit] NULL , [Col_5704821534341723680]  [nvarchar] ( 50) NULL , [Col_5577593720855528687]  [nvarchar] ( 1000) NULL ,  PRIMARY KEY CLUSTERED ( [frm41613Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'frm41613Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD frm41613Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5718928631750974967' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5718928631750974967 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5015109671430041049' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5015109671430041049 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_4878731099635972323' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_4878731099635972323 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5639456084995486972' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5639456084995486972 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5201950943389170313' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5201950943389170313 nvarchar (1000) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5023808873728860115' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5023808873728860115 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_4669561737145455733' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_4669561737145455733 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5554754662913942396' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5554754662913942396 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5147703354148026239' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5147703354148026239 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5277225740029483546' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5277225740029483546 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5085479191938738428' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5085479191938738428 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_4680749092622027115' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_4680749092622027115 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5219106803957463407' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5219106803957463407 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5190006649273867614' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5190006649273867614 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5622112977338097565' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5622112977338097565 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5704821534341723680' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5704821534341723680 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm41613' AND COLUMN_NAME = 'Col_5577593720855528687' )  BEGIN ALTER TABLE [dbo].[Tbl_frm41613] ADD Col_5577593720855528687 nvarchar (1000) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm41613]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm41613
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm41613] ( @PKFormId as bigint OUTPUT ,  @Col_5718928631750974967 AS nvarchar(50),  @Col_5015109671430041049 AS nvarchar(50),  @Col_4878731099635972323 AS nvarchar(50),  @Col_5639456084995486972 AS nvarchar(50),  @Col_5201950943389170313 AS nvarchar(1000),  @Col_5023808873728860115 AS nvarchar(50),  @Col_4669561737145455733 AS bit,  @Col_5554754662913942396 AS bit,  @Col_5147703354148026239 AS bit,  @Col_5277225740029483546 AS bit,  @Col_5085479191938738428 AS bit,  @Col_4680749092622027115 AS bit,  @Col_5219106803957463407 AS bit,  @Col_5190006649273867614 AS bit,  @Col_5622112977338097565 AS bit,  @Col_5704821534341723680 AS nvarchar(50),  @Col_5577593720855528687 AS nvarchar(1000) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm41613](Col_5718928631750974967,Col_5015109671430041049,Col_4878731099635972323,Col_5639456084995486972,Col_5201950943389170313,Col_5023808873728860115,Col_4669561737145455733,Col_5554754662913942396,Col_5147703354148026239,Col_5277225740029483546,Col_5085479191938738428,Col_4680749092622027115,Col_5219106803957463407,Col_5190006649273867614,Col_5622112977338097565,Col_5704821534341723680,Col_5577593720855528687) VALUES ( @Col_5718928631750974967,@Col_5015109671430041049,@Col_4878731099635972323,@Col_5639456084995486972,@Col_5201950943389170313,@Col_5023808873728860115,@Col_4669561737145455733,@Col_5554754662913942396,@Col_5147703354148026239,@Col_5277225740029483546,@Col_5085479191938738428,@Col_4680749092622027115,@Col_5219106803957463407,@Col_5190006649273867614,@Col_5622112977338097565,@Col_5704821534341723680,@Col_5577593720855528687 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm41613]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm41613
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm41613] ( @PKFormId as bigint OUTPUT ,  @Col_5718928631750974967 AS nvarchar(50),  @Col_5015109671430041049 AS nvarchar(50),  @Col_4878731099635972323 AS nvarchar(50),  @Col_5639456084995486972 AS nvarchar(50),  @Col_5201950943389170313 AS nvarchar(1000),  @Col_5023808873728860115 AS nvarchar(50),  @Col_4669561737145455733 AS bit,  @Col_5554754662913942396 AS bit,  @Col_5147703354148026239 AS bit,  @Col_5277225740029483546 AS bit,  @Col_5085479191938738428 AS bit,  @Col_4680749092622027115 AS bit,  @Col_5219106803957463407 AS bit,  @Col_5190006649273867614 AS bit,  @Col_5622112977338097565 AS bit,  @Col_5704821534341723680 AS nvarchar(50),  @Col_5577593720855528687 AS nvarchar(1000) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm41613] SET Col_5718928631750974967 =  @Col_5718928631750974967, Col_5015109671430041049 =  @Col_5015109671430041049, Col_4878731099635972323 =  @Col_4878731099635972323, Col_5639456084995486972 =  @Col_5639456084995486972, Col_5201950943389170313 =  @Col_5201950943389170313, Col_5023808873728860115 =  @Col_5023808873728860115, Col_4669561737145455733 =  @Col_4669561737145455733, Col_5554754662913942396 =  @Col_5554754662913942396, Col_5147703354148026239 =  @Col_5147703354148026239, Col_5277225740029483546 =  @Col_5277225740029483546, Col_5085479191938738428 =  @Col_5085479191938738428, Col_4680749092622027115 =  @Col_4680749092622027115, Col_5219106803957463407 =  @Col_5219106803957463407, Col_5190006649273867614 =  @Col_5190006649273867614, Col_5622112977338097565 =  @Col_5622112977338097565, Col_5704821534341723680 =  @Col_5704821534341723680, Col_5577593720855528687 =  @Col_5577593720855528687 WHERE [frm41613Id] = @PKFormId 
 END 
GO
