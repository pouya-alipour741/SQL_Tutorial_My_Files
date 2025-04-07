GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 91753) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (91753, N'فرم جستجو پیشرفته فرآیند ریکاوری',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="771.6">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5520056427333846884</ID>
        <Name>از تاریخ و تا تاریخ نادرست</Name>
        <Condition>("{@txtCheckDate.Value}" =="1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد از تاریخ و تا تاریخ نباید از تاریخ کنونی بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4909745519607846127</ComponentID>
            <ComponentName>txtCheckDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4616303781533102167</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4838787262673118100</ID>
        <Name>از تاریخ بزرگتر از تا تاریخ</Name>
        <Condition>("{@txtCheckDate.Value}" =="2")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد از تاریخ نباید بزرگتر از فیلد تا تاریخ باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4909745519607846127</ComponentID>
            <ComponentName>txtCheckDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5054375359875842245</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>2</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5672561889950177378</ID>
        <Name>تاریخ انقضا نادرست</Name>
        <Condition>("{@txtCheckEnghezaDate.Value}" =="1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد انقضا بیمه نامه از و فیلد انقضا بیمه نامه تا نباید از تاریخ کنونی بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5461506809348140965</ComponentID>
            <ComponentName>txtCheckEnghezaDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5262759992011083606</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5489037489384317555</ID>
        <Name>تاریخ انقضا بیمه نامه از بزرگتر از تا</Name>
        <Condition>("{@txtCheckEnghezaDate.Text}" =="2")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد تاریخ انقضا بیمه نامه از نباید بزرگتر از فیلد تاریخ انقضا بیمه نامه تا باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5461506809348140965</ComponentID>
            <ComponentName>txtCheckEnghezaDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Text</ComponentProperty>
            <ExpressionConditionID>5367891801757407527</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>2</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5423955918836062841</ID>
        <Name>حق بیمه نامه سال گذشته اشتباه است</Name>
        <Condition>({@chkCheckMablagh.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد "حق بیمه سال گذشته از" نباید از فیلد "حق بیمه سال گذشته تا" بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5259639043811958146</ComponentID>
            <ComponentName>chkCheckMablagh</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4899318668201447604</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="755.6" ControlID="5729269441728479105" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="فرم جستجو پیشرفته ریکاوری">
      <Canvas>
        <cm:Grid Width="906" Height="718.11666666666667" ControlID="5183621936077225413" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.255849889624724*" />
            <ColumnDefinition Width="0.24635761589404*" />
            <ColumnDefinition Width="0.245474613686534*" />
            <ColumnDefinition Width="0.252317880794702*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.151256350405053*" />
            <RowDefinition Height="0.160812851846767*" />
            <RowDefinition Height="0.173994233145681*" />
            <RowDefinition Height="0.177948647535356*" />
            <RowDefinition Height="0.11875302023051*" />
            <RowDefinition Height="0.10582751607939*" />
            <RowDefinition Height="0.111407380757243*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable5" Content="از تاریخ" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5569294639050352820" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="تا تاریخ" Width="120" Height="23" Margin="0,53.0000000000001,47.2000000000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5150852755364116164" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable7" Content="کدملی" Width="120" Height="23" Margin="0,8,26.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5545532903458368994" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable8" Content="شماره فرآیند" Width="120" Height="23" Margin="0,8,21.5999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5654668088630863660" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzLabel Name="Lable10" Content="نام نمایندگی" Width="120.00000000000001" Height="23" Margin="0,23.9999999999999,34.2,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4997223765062937824" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLabel Name="Lable12" Content="کد نمایندگی" Width="120" Height="23" Margin="0,10.3999999999999,32.4887644900003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4661628338098259656" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable13" Content="نام بیمه گذار" Width="120" Height="23" Margin="0,15.9999999999999,40.0000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5093371326922833636" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLabel Name="Lable14" Content="کد بیمه گذار" Width="120" Height="23" Margin="0,15.9999999999999,28.8000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5235295425107810282" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLabel Name="Lable16" Content="تاریخ انقضا بیمه نامه از" Width="120" Height="23" Margin="0,0,27,72.2" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5300560951398896273" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable18" Content="تاریخ انقضا بیمه نامه تا" Width="120" Height="23" Margin="55.1999999999996,15.9999999999996,47.2000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5235141617679173924" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable19" Content="شماره بیمه نامه سال قبل" Width="120" Height="23" Margin="0,23.1999999999996,26.4000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5367935881248805556" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" />
          <cm:tzLabel Name="Lable20" Content="رشته بیمه ای" Width="119.99999999999999" Height="23" Margin="0,5.7481587257993,3.55470084999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5201436553656899839" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" />
          <cm:tzLabel Name="Lable22" Content="شماره همراه" Width="120" Height="23" Margin="0,17.5999999966667,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5646036295459408392" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" />
          <cm:tzLabel Name="Lable24" Content="استان" Width="120" Height="23.000000000000004" Margin="0,10.4,14.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5011369117545097801" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" />
          <cm:tzLabel Name="Lable25" Content="شهر" Width="119.99999999999999" Height="22.999999999999996" Margin="0,17.5999999966667,26.4000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4648247074419340691" FontFamily="Tahoma" Grid.Column="1" Grid.Row="3" />
          <cm:tzLabel Name="Lable26" Content="نام شعبه سرپرستی مربوط به نماینده" Width="138.22119151999962" Height="23" Margin="0,34.4,50.4000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5693829868519469437" Grid.Column="0" Grid.Row="3" />
          <cm:tzLabel Name="Lable28" Content="نمایندگی ها" Width="120" Height="23" Margin="0,17.8386512066669,7.99999999999989,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5378844496705808137" FontFamily="Tahoma" Grid.Column="3" Grid.Row="4" />
          <cm:tzLabel Name="Lable29" Content="حق بیمه نامه سال گذشته از" Width="119.99999999999992" Height="23" Margin="0,9.83865121000025,50.000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5512177457693403419" FontFamily="Tahoma" Grid.Column="1" Grid.Row="4" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable30" Content="حق بیمه نامه سال گذشته تا" Width="120" Height="23" Margin="0,17.4380914300002,50.4000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4923926440281836968" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable31" Content=" " Width="120" Height="22.999999999999996" Margin="0,21.3335873462022,56.7999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5709318846159155088" FontFamily="Tahoma" Grid.Column="0" Grid.Row="5" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="75.000000000000014" Height="29.999999999999993" Margin="0,0,0,23.6629157423424" HorizontalAlignment="Center" VerticalAlignment="Bottom" Background="#FFA7E8BB" ControlID="5188161456565552248" FontFamily="Tahoma" Grid.Column="0" Grid.Row="5" cm:Event="dsSearch" cm:Validations="5520056427333846884,4838787262673118100,5672561889950177378,5489037489384317555,5423955918836062841" />
          <cm:tzDataGrid Name="GridView24" Width="571.42119151999987" Height="56.799999999999983" Margin="0,5.7732573637212,196.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5073387501763575749" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="6" cm:BindingForm="dsSearch" cm:UserCanExport="True" cm:UserCanInsert="False">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameAndCodeNamayandegi" DecimalMark="False" HeaderText="نام و کد نمایندگی" IsRowColorField="False" KeyField="False" SortMemberPath="NameAndCodeNamayandegi">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameAndCodeNamayandegi}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameAndCodeBimehGozar" DecimalMark="False" HeaderText="نام و کد بیمه گذار" IsRowColorField="False" KeyField="False" SortMemberPath="NameAndCodeBimehGozar">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameAndCodeBimehGozar}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="165" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShomarebimehNameSalGhabl" DecimalMark="False" HeaderText="شماره بیمه نامه سال قبل" IsRowColorField="False" KeyField="False" SortMemberPath="ShomarebimehNameSalGhabl">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShomarebimehNameSalGhabl}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TarikhEnghezaBimehName" DecimalMark="False" HeaderText="تاریخ انقضا بیمه نامه" IsRowColorField="False" KeyField="False" SortMemberPath="TarikhEnghezaBimehName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TarikhEnghezaBimehName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReshteBimeh" DecimalMark="False" HeaderText="رشته بیمه ای" IsRowColorField="False" KeyField="False" SortMemberPath="ReshteBimeh">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReshteBimeh}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNO" DecimalMark="False" HeaderText="شماره همراه" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNO">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNO}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameShobeSarparasti" DecimalMark="False" HeaderText="نام شعبه سرپرستی مربوط به نماینده" IsRowColorField="False" KeyField="False" SortMemberPath="NameShobeSarparasti">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameShobeSarparasti}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProvinceID" DecimalMark="False" HeaderText="استان" IsRowColorField="False" KeyField="False" SortMemberPath="ProvinceID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProvinceID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CityID" DecimalMark="False" HeaderText="شهر" IsRowColorField="False" KeyField="False" SortMemberPath="CityID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CityID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="125" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NegotiateCustomerID" DecimalMark="False" HeaderText="نتیجه مذاکره با مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="NegotiateCustomerID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NegotiateCustomerID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReasonRejectID" DecimalMark="False" HeaderText="علت عدم خرید" IsRowColorField="False" KeyField="False" SortMemberPath="ReasonRejectID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReasonRejectID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusID" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="StatusID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25.000000000000004" Margin="0,13.9732573637211,77.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5760713925829644762" Grid.Column="3" Grid.Row="6" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_AdvancedSearch_SalesLeadRecovery {@pdFromDate},{@pdToDate},{@txtNationalCode},{@txtWFID},{@txtNameNamayandegi},{@txtCodeNamayandegi}, {@txtNameBimehGozar},{@txtCodeBimehGozar},{@pdEnghezaBimehNameFrom},{@pdEnghezaBimehNameTo},{@txtShomareBimehNameSaleGhabl}, {@cmbReshteBimeh},{@txtMobileNumber},{@cmbProvince},{@cmbCity},{@txtShobehSarparastiNamayandeh},{@luNamayandegi}, {@txtHagheBimehNameSalGozashteAz},{@txtHagheBimehNameSalGozashteTa},{@cmbStatus},(@UserID)" />
          <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" Margin="0,40,49.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5613194702389825479" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsGetTarikh" cm:DataBindingField="Tarikh" cm:Event="dsCheckDate" />
          <cm:PDatePicker Name="pdToDate" Width="120.00000000000001" Height="20" Margin="0,0,60.8000000000004,63.8000000000001" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="4723141405861506134" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckDate" />
          <cm:tzTextBox Name="txtNationalCode" Width="120.00000000000001" Height="21.000000000000014" Margin="0,60.0000000000001,33.5361855200001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5558425608556058944" Grid.Column="1" Grid.Row="0" cm:Len="10" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="20.999999999999996" Margin="0,0,28.8000000000004,27.6197061650419" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5584260686688920255" Grid.Column="0" Grid.Row="0" cm:Len="20" />
          <cm:tzTextBox Name="txtNameNamayandegi" Width="119.99999999999999" Height="21" Margin="0,47.9999999999999,85.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5413592906492070802" Grid.Column="3" Grid.Row="1" cm:Len="100" />
          <cm:tzTextBox Name="txtCodeNamayandegi" Width="120" Height="21.000000000000014" Margin="0,47.9999999999999,76.0000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4949386390666111056" Grid.Column="2" Grid.Row="1" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzTextBox Name="txtNameBimehGozar" Width="120" Height="21" Margin="0,47.9999999999999,61.6000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5618862601417499248" Grid.Column="1" Grid.Row="1" cm:Len="100" />
          <cm:tzTextBox Name="txtCodeBimehGozar" Width="120" Height="21" Margin="0,47.9999999999999,28.8000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5103100603469298776" Grid.Column="0" Grid.Row="1" cm:DataType="BigInt" cm:Len="20" />
          <cm:PDatePicker Name="pdEnghezaBimehNameFrom" Width="119.99999999999999" Height="19.999999999999993" Margin="0,58.8333333299996,49.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5112472268721423879" Grid.Column="3" Grid.Row="2" cm:Event="dsCheckEnghezaDate" />
          <cm:PDatePicker Name="pdEnghezaBimehNameTo" Width="120" Height="20" Margin="0,67.6333333299996,76.0000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5683011552712412504" Grid.Column="2" Grid.Row="2" cm:Event="dsCheckEnghezaDate" />
          <cm:tzTextBox Name="txtShomareBimehNameSaleGhabl" Width="120.00000000000003" Height="21" Margin="0,66.6333333299996,40.0000000000009,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4698846908135385693" Grid.Column="1" Grid.Row="2" cm:Len="100" />
          <cm:tzTextBox Name="txtMobileNumber" Width="120" Height="20.999999999999993" Margin="0,55.1878896059318,67.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5382719818120123355" Grid.Column="3" Grid.Row="3" cm:Len="11" />
          <cm:tzTextBox Name="txtShobehSarparastiNamayandeh" Width="120" Height="21" Margin="0,0,40.0398452599999,15.4833333299998" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5525318473331954046" Grid.Column="0" Grid.Row="3" />
          <cm:tzTextBox Name="txtHagheBimehNameSalGozashteAz" Width="119.99999999999999" Height="20.999999999999993" Margin="0,41.4380914300002,61.6000000000005,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5016114664718051316" Grid.Column="1" Grid.Row="4" cm:DecimalMark="True" cm:Event="dsCheckMablagh" cm:IsVisibleItem="False" cm:Len="100" />
          <cm:tzTextBox Name="txtHagheBimehNameSalGozashteTa" Width="120" Height="20.999999999999993" Margin="0,41.4380914300002,56.7999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4674850897938031852" Grid.Column="0" Grid.Row="4" cm:DecimalMark="True" cm:Event="dsCheckMablagh" cm:IsVisibleItem="False" cm:Len="100" />
          <cm:TZLookUp Name="luNamayandegi" Width="190" Height="27" Margin="0,44.4380914300002,21.1999999999998,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4701549116801879898" Grid.Column="3" Grid.Row="4">
            <cm:TZLookUp.LoadFormValue>
              <cm:TZLookupLoadFromBrowse DataGridId="5711210534124133436" DisplayMemberColumn="BranchName" FormID="202" ValueMemberColumn="BranchCode" />
            </cm:TZLookUp.LoadFormValue>
          </cm:TZLookUp>
          <cm:tzLookUpComboBox Name="cmbProvince" Width="120" Height="22" Margin="0,54.1878896059318,60.8000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4728680930548316519" Grid.Column="2" Grid.Row="3" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsCity" cm:tzDisplayItem="ProvinceName" cm:tzValueItem="ProvinceID" />
          <cm:tzLookUpComboBox Name="cmbCity" Width="120" Height="21.999999999999996" Margin="0,0,18.4000000000003,28.5999999999997" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5087263816635130773" Grid.Column="1" Grid.Row="3" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:tzDisplayItem="CityName" cm:tzValueItem="CityID" />
          <cm:tzLabel Name="Lable63" Content="وضعیت" Width="120.00000000000003" Height="23" Margin="0,0,6.60000000000002,52.4398718345328" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5664085909109250825" FontFamily="Tahoma" Grid.Column="2" Grid.Row="4" />
          <cm:tzLookUpComboBox Name="cmbStatus" Width="120" Height="22" Margin="0,40.4380914300002,57.1999999999998,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4765192395696139763" Grid.Column="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetStatus" cm:tzDisplayItem="StatusName" cm:tzValueItem="LogStatusID" />
          <cm:tzDataSource Name="dsReshteBime" Content="dsReshteBime" Width="109.99999999999999" Height="25.000000000000004" Margin="-2.75470085000005,3.7481587257993,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5380350289884255887" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetReshteID" />
          <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" Margin="26.3999999999996,23.4000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4689391317497953415" Grid.Column="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetProvince_Frm91753" />
          <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="25" Margin="24.7087040600003,23.4000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4827193209819580175" Grid.Column="1" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetCity_Frm91753 {@cmbProvince}" />
          <cm:tzDataSource Name="dsGetStatus" Content="dsGetStatus" Width="110.00000000000003" Height="25" Margin="0,0,94.0000000000002,53.8404316145329" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5130384136804268635" Grid.Column="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_StatusForSalesLeadRecovery" />
          <cm:tzDataSource Name="dsGetTarikh" Content="dsGetTarikh" Width="110" Height="25" Margin="0,0,21.1999999999997,14.619706165042" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4643221114165485385" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_DefaultDate_frm91753" />
          <cm:tzDataSource Name="dsCheckDate" Content="dsCheckDate" Width="110" Height="25" Margin="0,27.0000000000001,164.8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5745611305114784426" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdFromDate},{@pdToDate}" />
          <cm:tzTextBox Name="txtCheckDate" Width="120" Height="21" Margin="0,60.0000000000001,155.2,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909745519607846127" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsCheckDate" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtCheckEnghezaDate" Width="120" Height="21" Margin="166.2,0,0,5.53358734620213" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5461506809348140965" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:DataBinding="dsCheckEnghezaDate" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsCheckEnghezaDate" Content="dsCheckEnghezaDate" Width="110" Height="25" Margin="0,53.8333333299996,178.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4617001402693976710" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdEnghezaBimehNameFrom}, {@pdEnghezaBimehNameTo}" />
          <cm:tzDataSource Name="dsCheckMablagh" Content="dsCheckMablagh" Width="110" Height="25" Margin="0,18.4380914300002,171.000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5612519053674105182" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckValidateInsuranceAmount {@txtHagheBimehNameSalGozashteAz} , {@txtHagheBimehNameSalGozashteTa}" />
          <cm:TZCheckBox Name="chkCheckMablagh" Content="chkCheckMablagh" Width="73.599999999999682" Height="20" Margin="0,56.5166666678666,190.6,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5259639043811958146" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="4" cm:DataBinding="dsCheckMablagh" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:TZCheckListBox Name="clbReshteBimeh" Width="213.00000000000003" Height="81.666412653797977" Margin="8,37.7481587257992,10.7999999999999,5.53358734620213" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4791957476887389344" Grid.Column="0" Grid.Row="2" cm:DataBinding="dsReshteBime" cm:tzDisplayItem="BimeGroupName" cm:tzValueItem="BimeGroupID" />
          <cm:tzTextBox Name="txtReshteBimeh" Width="65.418653740000138" Height="21" Margin="0,7.74815872959718,94.6211915199998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5337453673652440187" Grid.Column="0" Grid.Row="2" cm:DataBinding="dsclbReshteBimehResult" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsclbReshteBimehResult" Content="dsclbReshteBimehResult" Width="110" Height="25" Margin="8.00000000000011,0,0,5.25184127420076" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4798583823217722043" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@clbReshteBimeh}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'2025/04/07 12:25:23', 'fea7bb47-3fc9-4aa9-a3f8-2aeff96f4401', 0, N'', N'{"formID": "91753" ,"components": [{"value": "","key": "5259639043811958146","label": "chkCheckMablagh","controlType": "checkbox","caption": "chkCheckMablagh" ,"DataBindingField" : "result"},{"key": "5087263816635130773","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4728680930548316519","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "4765192395696139763","label": "cmbStatus","value": "", "controlType": "dropdown","options":""},{"key":"5745611305114784426" , "dataSourceName":"dsCheckDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdFromDate},{@pdToDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617001402693976710" , "dataSourceName":"dsCheckEnghezaDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdEnghezaBimehNameFrom}, {@pdEnghezaBimehNameTo}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5612519053674105182" , "dataSourceName":"dsCheckMablagh" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidateInsuranceAmount {@txtHagheBimehNameSalGozashteAz} , {@txtHagheBimehNameSalGozashteTa}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4827193209819580175" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetCity_Frm91753 {@cmbProvince}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4798583823217722043" , "dataSourceName":"dsclbReshteBimehResult" , "controlType": "datasource",  "selectQuery" :"select {@clbReshteBimeh}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5130384136804268635" , "dataSourceName":"dsGetStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_StatusForSalesLeadRecovery" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4643221114165485385" , "dataSourceName":"dsGetTarikh" , "controlType": "datasource",  "selectQuery" :"SP_CU_DefaultDate_frm91753" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689391317497953415" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetProvince_Frm91753" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5380350289884255887" , "dataSourceName":"dsReshteBime" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetReshteID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760713925829644762" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_AdvancedSearch_SalesLeadRecovery {@pdFromDate},{@pdToDate},{@txtNationalCode},{@txtWFID},{@txtNameNamayandegi},{@txtCodeNamayandegi}, {@txtNameBimehGozar},{@txtCodeBimehGozar},{@pdEnghezaBimehNameFrom},{@pdEnghezaBimehNameTo},{@txtShomareBimehNameSaleGhabl}, {@cmbReshteBimeh},{@txtMobileNumber},{@cmbProvince},{@cmbCity},{@txtShobehSarparastiNamayandeh},{@luNamayandegi}, {@txtHagheBimehNameSalGozashteAz},{@txtHagheBimehNameSalGozashteTa},{@cmbStatus},(@UserID)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4909745519607846127","label": "txtCheckDate","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5461506809348140965","label": "txtCheckEnghezaDate","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5103100603469298776","label": "txtCodeBimehGozar","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4949386390666111056","label": "txtCodeNamayandegi","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5016114664718051316","label": "txtHagheBimehNameSalGozashteAz","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4674850897938031852","label": "txtHagheBimehNameSalGozashteTa","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5382719818120123355","label": "txtMobileNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5618862601417499248","label": "txtNameBimehGozar","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5413592906492070802","label": "txtNameNamayandegi","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5558425608556058944","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5337453673652440187","label": "txtReshteBimeh","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5525318473331954046","label": "txtShobehSarparastiNamayandeh","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4698846908135385693","label": "txtShomareBimehNameSaleGhabl","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5584260686688920255","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم جستجو پیشرفته فرآیند ریکاوری',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Background="White">
  <Canvas Width="950" Height="771.6">
    <ViewLayouts />
    <Validations xmlns="">
      <Validation>
        <ID>5520056427333846884</ID>
        <Name>از تاریخ و تا تاریخ نادرست</Name>
        <Condition>("{@txtCheckDate.Value}" =="1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد از تاریخ و تا تاریخ نباید از تاریخ کنونی بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4909745519607846127</ComponentID>
            <ComponentName>txtCheckDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4616303781533102167</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>4838787262673118100</ID>
        <Name>از تاریخ بزرگتر از تا تاریخ</Name>
        <Condition>("{@txtCheckDate.Value}" =="2")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد از تاریخ نباید بزرگتر از فیلد تا تاریخ باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>4909745519607846127</ComponentID>
            <ComponentName>txtCheckDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5054375359875842245</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>2</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5672561889950177378</ID>
        <Name>تاریخ انقضا نادرست</Name>
        <Condition>("{@txtCheckEnghezaDate.Value}" =="1")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد انقضا بیمه نامه از و فیلد انقضا بیمه نامه تا نباید از تاریخ کنونی بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5461506809348140965</ComponentID>
            <ComponentName>txtCheckEnghezaDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>5262759992011083606</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>1</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5489037489384317555</ID>
        <Name>تاریخ انقضا بیمه نامه از بزرگتر از تا</Name>
        <Condition>("{@txtCheckEnghezaDate.Text}" =="2")</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>فیلد تاریخ انقضا بیمه نامه از نباید بزرگتر از فیلد تاریخ انقضا بیمه نامه تا باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5461506809348140965</ComponentID>
            <ComponentName>txtCheckEnghezaDate</ComponentName>
            <ComponentDataType>NVarChar</ComponentDataType>
            <ComponentProperty>Text</ComponentProperty>
            <ExpressionConditionID>5367891801757407527</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>2</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
      <Validation>
        <ID>5423955918836062841</ID>
        <Name>حق بیمه نامه سال گذشته اشتباه است</Name>
        <Condition>({@chkCheckMablagh.Value} ==True)</Condition>
        <Description></Description>
        <IsWarning>false</IsWarning>
        <Message>مقدار فیلد "حق بیمه سال گذشته از" نباید از فیلد "حق بیمه سال گذشته تا" بزرگتر باشد.</Message>
        <Priority>0</Priority>
        <ExpressionConditions>
          <ExpressionCondition>
            <ANDOR></ANDOR>
            <ComponentID>5259639043811958146</ComponentID>
            <ComponentName>chkCheckMablagh</ComponentName>
            <ComponentDataType>bit</ComponentDataType>
            <ComponentProperty>Value</ComponentProperty>
            <ExpressionConditionID>4899318668201447604</ExpressionConditionID>
            <Operator>==</Operator>
            <Value>True</Value>
          </ExpressionCondition>
        </ExpressionConditions>
      </Validation>
    </Validations>
    <cm:TzGroupBox Name="GroupBox2" Width="934" Height="755.6" ControlID="5729269441728479105" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="فرم جستجو پیشرفته ریکاوری">
      <Canvas>
        <cm:Grid Width="906" Height="718.11666666666667" ControlID="5183621936077225413" Canvas.Left="8" Canvas.Top="8">
          <Grid.ColumnDefinitions>
            <ColumnDefinition Width="0.255849889624724*" />
            <ColumnDefinition Width="0.24635761589404*" />
            <ColumnDefinition Width="0.245474613686534*" />
            <ColumnDefinition Width="0.252317880794702*" />
          </Grid.ColumnDefinitions>
          <Grid.RowDefinitions>
            <RowDefinition Height="0.151256350405053*" />
            <RowDefinition Height="0.160812851846767*" />
            <RowDefinition Height="0.173994233145681*" />
            <RowDefinition Height="0.177948647535356*" />
            <RowDefinition Height="0.11875302023051*" />
            <RowDefinition Height="0.10582751607939*" />
            <RowDefinition Height="0.111407380757243*" />
          </Grid.RowDefinitions>
          <cm:tzLabel Name="Lable5" Content="از تاریخ" Width="120" Height="23" Margin="0,8,8,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5569294639050352820" FontFamily="Tahoma" Grid.Column="3" Grid.Row="0" />
          <cm:tzLabel Name="Lable6" Content="تا تاریخ" Width="120" Height="23" Margin="0,53.0000000000001,47.2000000000007,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5150852755364116164" FontFamily="Tahoma" Grid.Column="2" Grid.Row="0" />
          <cm:tzLabel Name="Lable7" Content="کدملی" Width="120" Height="23" Margin="0,8,26.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5545532903458368994" FontFamily="Tahoma" Grid.Column="1" Grid.Row="0" />
          <cm:tzLabel Name="Lable8" Content="شماره فرآیند" Width="120" Height="23" Margin="0,8,21.5999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5654668088630863660" FontFamily="Tahoma" Grid.Column="0" Grid.Row="0" />
          <cm:tzLabel Name="Lable10" Content="نام نمایندگی" Width="120.00000000000001" Height="23" Margin="0,23.9999999999999,34.2,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4997223765062937824" FontFamily="Tahoma" Grid.Column="3" Grid.Row="1" />
          <cm:tzLabel Name="Lable12" Content="کد نمایندگی" Width="120" Height="23" Margin="0,10.3999999999999,32.4887644900003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4661628338098259656" FontFamily="Tahoma" Grid.Column="2" Grid.Row="1" />
          <cm:tzLabel Name="Lable13" Content="نام بیمه گذار" Width="120" Height="23" Margin="0,15.9999999999999,40.0000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5093371326922833636" FontFamily="Tahoma" Grid.Column="1" Grid.Row="1" />
          <cm:tzLabel Name="Lable14" Content="کد بیمه گذار" Width="120" Height="23" Margin="0,15.9999999999999,28.8000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5235295425107810282" FontFamily="Tahoma" Grid.Column="0" Grid.Row="1" />
          <cm:tzLabel Name="Lable16" Content="تاریخ انقضا بیمه نامه از" Width="120" Height="23" Margin="0,0,27,72.2" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5300560951398896273" FontFamily="Tahoma" Grid.Column="3" Grid.Row="2" />
          <cm:tzLabel Name="Lable18" Content="تاریخ انقضا بیمه نامه تا" Width="120" Height="23" Margin="55.1999999999996,15.9999999999996,47.2000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5235141617679173924" FontFamily="Tahoma" Grid.Column="2" Grid.Row="2" />
          <cm:tzLabel Name="Lable19" Content="شماره بیمه نامه سال قبل" Width="120" Height="23" Margin="0,23.1999999999996,26.4000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5367935881248805556" FontFamily="Tahoma" Grid.Column="1" Grid.Row="2" />
          <cm:tzLabel Name="Lable20" Content="رشته بیمه ای" Width="119.99999999999999" Height="23" Margin="0,5.7481587257993,3.55470084999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5201436553656899839" FontFamily="Tahoma" Grid.Column="0" Grid.Row="2" />
          <cm:tzLabel Name="Lable22" Content="شماره همراه" Width="120" Height="23" Margin="0,17.5999999966667,27,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5646036295459408392" FontFamily="Tahoma" Grid.Column="3" Grid.Row="3" />
          <cm:tzLabel Name="Lable24" Content="استان" Width="120" Height="23.000000000000004" Margin="0,10.4,14.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5011369117545097801" FontFamily="Tahoma" Grid.Column="2" Grid.Row="3" />
          <cm:tzLabel Name="Lable25" Content="شهر" Width="119.99999999999999" Height="22.999999999999996" Margin="0,17.5999999966667,26.4000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4648247074419340691" FontFamily="Tahoma" Grid.Column="1" Grid.Row="3" />
          <cm:tzLabel Name="Lable26" Content="نام شعبه سرپرستی مربوط به نماینده" Width="138.22119151999962" Height="23" Margin="0,34.4,50.4000000000003,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5693829868519469437" Grid.Column="0" Grid.Row="3" />
          <cm:tzLabel Name="Lable28" Content="نمایندگی ها" Width="120" Height="23" Margin="0,17.8386512066669,7.99999999999989,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5378844496705808137" FontFamily="Tahoma" Grid.Column="3" Grid.Row="4" />
          <cm:tzLabel Name="Lable29" Content="حق بیمه نامه سال گذشته از" Width="119.99999999999992" Height="23" Margin="0,9.83865121000025,50.000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5512177457693403419" FontFamily="Tahoma" Grid.Column="1" Grid.Row="4" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable30" Content="حق بیمه نامه سال گذشته تا" Width="120" Height="23" Margin="0,17.4380914300002,50.4000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4923926440281836968" FontFamily="Tahoma" Grid.Column="0" Grid.Row="4" cm:IsVisibleItem="False" />
          <cm:tzLabel Name="Lable31" Content=" " Width="120" Height="22.999999999999996" Margin="0,21.3335873462022,56.7999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5709318846159155088" FontFamily="Tahoma" Grid.Column="0" Grid.Row="5" />
          <cm:TZButton Name="btnSearch" Content="جستجو" Width="75.000000000000014" Height="29.999999999999993" Margin="0,0,0,23.6629157423424" HorizontalAlignment="Center" VerticalAlignment="Bottom" Background="#FFA7E8BB" ControlID="5188161456565552248" FontFamily="Tahoma" Grid.Column="0" Grid.Row="5" cm:Event="dsSearch" cm:Validations="5520056427333846884,4838787262673118100,5672561889950177378,5489037489384317555,5423955918836062841" />
          <cm:tzDataGrid Name="GridView24" Width="571.42119151999987" Height="56.799999999999983" Margin="0,5.7732573637212,196.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5073387501763575749" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Grid.Column="0" Grid.ColumnSpan="4" Grid.Row="6" cm:BindingForm="dsSearch" cm:UserCanExport="True" cm:UserCanInsert="False">
            <cm:tzDataGrid.Resources>
              <cm:MainCommands x:Key="MainCommands" />
              <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
            </cm:tzDataGrid.Resources>
            <cm:tzDataGrid.Columns>
              <cm:tzDataGridTemplateColumn Width="35" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Radif" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="Radif">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Radif}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="65" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="FullName" DecimalMark="False" HeaderText="نام و نام خانوادگی" IsRowColorField="False" KeyField="False" SortMemberPath="FullName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding FullName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NationalCode" DecimalMark="False" HeaderText="کدملی" IsRowColorField="False" KeyField="False" SortMemberPath="NationalCode">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NationalCode}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="80" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataNavigateUrl="WFID" DataTextField="WFID" DecimalMark="False" HeaderText="شماره فرآیند" HyperLinkType="WorkFlowInstanceID" IsRowColorField="False" KeyField="False" SortMemberPath="WFID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <HyperlinkButton Content="{Binding WFID}" Command="{Binding Source={StaticResource WorkFlowCommands}, Path=Show}" CommandParameter="{Binding WFID}" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="160" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameAndCodeNamayandegi" DecimalMark="False" HeaderText="نام و کد نمایندگی" IsRowColorField="False" KeyField="False" SortMemberPath="NameAndCodeNamayandegi">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameAndCodeNamayandegi}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameAndCodeBimehGozar" DecimalMark="False" HeaderText="نام و کد بیمه گذار" IsRowColorField="False" KeyField="False" SortMemberPath="NameAndCodeBimehGozar">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameAndCodeBimehGozar}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="165" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ShomarebimehNameSalGhabl" DecimalMark="False" HeaderText="شماره بیمه نامه سال قبل" IsRowColorField="False" KeyField="False" SortMemberPath="ShomarebimehNameSalGhabl">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ShomarebimehNameSalGhabl}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="150" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="TarikhEnghezaBimehName" DecimalMark="False" HeaderText="تاریخ انقضا بیمه نامه" IsRowColorField="False" KeyField="False" SortMemberPath="TarikhEnghezaBimehName">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding TarikhEnghezaBimehName}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReshteBimeh" DecimalMark="False" HeaderText="رشته بیمه ای" IsRowColorField="False" KeyField="False" SortMemberPath="ReshteBimeh">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReshteBimeh}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MobileNO" DecimalMark="False" HeaderText="شماره همراه" IsRowColorField="False" KeyField="False" SortMemberPath="MobileNO">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MobileNO}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="130" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NameShobeSarparasti" DecimalMark="False" HeaderText="نام شعبه سرپرستی مربوط به نماینده" IsRowColorField="False" KeyField="False" SortMemberPath="NameShobeSarparasti">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NameShobeSarparasti}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProvinceID" DecimalMark="False" HeaderText="استان" IsRowColorField="False" KeyField="False" SortMemberPath="ProvinceID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProvinceID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="90" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="CityID" DecimalMark="False" HeaderText="شهر" IsRowColorField="False" KeyField="False" SortMemberPath="CityID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding CityID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="125" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="NegotiateCustomerID" DecimalMark="False" HeaderText="نتیجه مذاکره با مشتری" IsRowColorField="False" KeyField="False" SortMemberPath="NegotiateCustomerID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding NegotiateCustomerID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="100" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReasonRejectID" DecimalMark="False" HeaderText="علت عدم خرید" IsRowColorField="False" KeyField="False" SortMemberPath="ReasonRejectID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReasonRejectID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
              <cm:tzDataGridTemplateColumn Width="110" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="StatusID" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="StatusID">
                <cm:tzDataGridTemplateColumn.CellTemplate>
                  <cm:TzDataTemplate>
                    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding StatusID}" TextWrapping="Wrap" />
                  </cm:TzDataTemplate>
                </cm:tzDataGridTemplateColumn.CellTemplate>
              </cm:tzDataGridTemplateColumn>
            </cm:tzDataGrid.Columns>
          </cm:tzDataGrid>
          <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25.000000000000004" Margin="0,13.9732573637211,77.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5760713925829644762" Grid.Column="3" Grid.Row="6" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC SP_CU_AdvancedSearch_SalesLeadRecovery {@pdFromDate},{@pdToDate},{@txtNationalCode},{@txtWFID},{@txtNameNamayandegi},{@txtCodeNamayandegi}, {@txtNameBimehGozar},{@txtCodeBimehGozar},{@pdEnghezaBimehNameFrom},{@pdEnghezaBimehNameTo},{@txtShomareBimehNameSaleGhabl}, {@cmbReshteBimeh},{@txtMobileNumber},{@cmbProvince},{@cmbCity},{@txtShobehSarparastiNamayandeh},{@luNamayandegi}, {@txtHagheBimehNameSalGozashteAz},{@txtHagheBimehNameSalGozashteTa},{@cmbStatus},(@UserID)" />
          <cm:PDatePicker Name="pdFromDate" Width="120" Height="20" Margin="0,40,49.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5613194702389825479" Grid.Column="3" Grid.Row="0" cm:DataBinding="dsGetTarikh" cm:DataBindingField="Tarikh" cm:Event="dsCheckDate" />
          <cm:PDatePicker Name="pdToDate" Width="120.00000000000001" Height="20" Margin="0,0,60.8000000000004,63.8000000000001" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="4723141405861506134" Grid.Column="2" Grid.Row="0" cm:DefaultValue="$CurrentDate" cm:Event="dsCheckDate" />
          <cm:tzTextBox Name="txtNationalCode" Width="120.00000000000001" Height="21.000000000000014" Margin="0,60.0000000000001,33.5361855200001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5558425608556058944" Grid.Column="1" Grid.Row="0" cm:Len="10" />
          <cm:tzTextBox Name="txtWFID" Width="120" Height="20.999999999999996" Margin="0,0,28.8000000000004,27.6197061650419" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5584260686688920255" Grid.Column="0" Grid.Row="0" cm:Len="20" />
          <cm:tzTextBox Name="txtNameNamayandegi" Width="119.99999999999999" Height="21" Margin="0,47.9999999999999,85.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5413592906492070802" Grid.Column="3" Grid.Row="1" cm:Len="100" />
          <cm:tzTextBox Name="txtCodeNamayandegi" Width="120" Height="21.000000000000014" Margin="0,47.9999999999999,76.0000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4949386390666111056" Grid.Column="2" Grid.Row="1" cm:DataType="BigInt" cm:Len="10" />
          <cm:tzTextBox Name="txtNameBimehGozar" Width="120" Height="21" Margin="0,47.9999999999999,61.6000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5618862601417499248" Grid.Column="1" Grid.Row="1" cm:Len="100" />
          <cm:tzTextBox Name="txtCodeBimehGozar" Width="120" Height="21" Margin="0,47.9999999999999,28.8000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5103100603469298776" Grid.Column="0" Grid.Row="1" cm:DataType="BigInt" cm:Len="20" />
          <cm:PDatePicker Name="pdEnghezaBimehNameFrom" Width="119.99999999999999" Height="19.999999999999993" Margin="0,58.8333333299996,49.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5112472268721423879" Grid.Column="3" Grid.Row="2" cm:Event="dsCheckEnghezaDate" />
          <cm:PDatePicker Name="pdEnghezaBimehNameTo" Width="120" Height="20" Margin="0,67.6333333299996,76.0000000000002,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5683011552712412504" Grid.Column="2" Grid.Row="2" cm:Event="dsCheckEnghezaDate" />
          <cm:tzTextBox Name="txtShomareBimehNameSaleGhabl" Width="120.00000000000003" Height="21" Margin="0,66.6333333299996,40.0000000000009,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4698846908135385693" Grid.Column="1" Grid.Row="2" cm:Len="100" />
          <cm:tzTextBox Name="txtMobileNumber" Width="120" Height="20.999999999999993" Margin="0,55.1878896059318,67.4000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5382719818120123355" Grid.Column="3" Grid.Row="3" cm:Len="11" />
          <cm:tzTextBox Name="txtShobehSarparastiNamayandeh" Width="120" Height="21" Margin="0,0,40.0398452599999,15.4833333299998" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5525318473331954046" Grid.Column="0" Grid.Row="3" />
          <cm:tzTextBox Name="txtHagheBimehNameSalGozashteAz" Width="119.99999999999999" Height="20.999999999999993" Margin="0,41.4380914300002,61.6000000000005,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="5016114664718051316" Grid.Column="1" Grid.Row="4" cm:DecimalMark="True" cm:Event="dsCheckMablagh" cm:IsVisibleItem="False" cm:Len="100" />
          <cm:tzTextBox Name="txtHagheBimehNameSalGozashteTa" Width="120" Height="20.999999999999993" Margin="0,41.4380914300002,56.7999999999999,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4674850897938031852" Grid.Column="0" Grid.Row="4" cm:DecimalMark="True" cm:Event="dsCheckMablagh" cm:IsVisibleItem="False" cm:Len="100" />
          <cm:TZLookUp Name="luNamayandegi" Width="190" Height="27" Margin="0,44.4380914300002,21.1999999999998,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4701549116801879898" Grid.Column="3" Grid.Row="4">
            <cm:TZLookUp.LoadFormValue>
              <cm:TZLookupLoadFromBrowse DataGridId="5711210534124133436" DisplayMemberColumn="BranchName" FormID="202" ValueMemberColumn="BranchCode" />
            </cm:TZLookUp.LoadFormValue>
          </cm:TZLookUp>
          <cm:tzLookUpComboBox Name="cmbProvince" Width="120" Height="22" Margin="0,54.1878896059318,60.8000000000004,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4728680930548316519" Grid.Column="2" Grid.Row="3" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsProvince" cm:Event="dsCity" cm:tzDisplayItem="ProvinceName" cm:tzValueItem="ProvinceID" />
          <cm:tzLookUpComboBox Name="cmbCity" Width="120" Height="21.999999999999996" Margin="0,0,18.4000000000003,28.5999999999997" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5087263816635130773" Grid.Column="1" Grid.Row="3" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsCity" cm:tzDisplayItem="CityName" cm:tzValueItem="CityID" />
          <cm:tzLabel Name="Lable63" Content="وضعیت" Width="120.00000000000003" Height="23" Margin="0,0,6.60000000000002,52.4398718345328" HorizontalAlignment="Right" VerticalAlignment="Bottom" HorizontalContentAlignment="Right" ControlID="5664085909109250825" FontFamily="Tahoma" Grid.Column="2" Grid.Row="4" />
          <cm:tzLookUpComboBox Name="cmbStatus" Width="120" Height="22" Margin="0,40.4380914300002,57.1999999999998,0" HorizontalAlignment="Right" VerticalAlignment="Top" HorizontalContentAlignment="Right" ControlID="4765192395696139763" Grid.Column="2" Grid.Row="4" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsGetStatus" cm:tzDisplayItem="StatusName" cm:tzValueItem="LogStatusID" />
          <cm:tzDataSource Name="dsReshteBime" Content="dsReshteBime" Width="109.99999999999999" Height="25.000000000000004" Margin="-2.75470085000005,3.7481587257993,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5380350289884255887" Grid.Column="0" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetReshteID" />
          <cm:tzDataSource Name="dsProvince" Content="dsProvince" Width="110" Height="25" Margin="26.3999999999996,23.4000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4689391317497953415" Grid.Column="2" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetProvince_Frm91753" />
          <cm:tzDataSource Name="dsCity" Content="dsCity" Width="110" Height="25" Margin="24.7087040600003,23.4000000000001,0,0" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="4827193209819580175" Grid.Column="1" Grid.Row="3" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_GetCity_Frm91753 {@cmbProvince}" />
          <cm:tzDataSource Name="dsGetStatus" Content="dsGetStatus" Width="110.00000000000003" Height="25" Margin="0,0,94.0000000000002,53.8404316145329" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="5130384136804268635" Grid.Column="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_StatusForSalesLeadRecovery" />
          <cm:tzDataSource Name="dsGetTarikh" Content="dsGetTarikh" Width="110" Height="25" Margin="0,0,21.1999999999997,14.619706165042" HorizontalAlignment="Right" VerticalAlignment="Bottom" ControlID="4643221114165485385" Grid.Column="3" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="SP_CU_DefaultDate_frm91753" />
          <cm:tzDataSource Name="dsCheckDate" Content="dsCheckDate" Width="110" Height="25" Margin="0,27.0000000000001,164.8,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5745611305114784426" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdFromDate},{@pdToDate}" />
          <cm:tzTextBox Name="txtCheckDate" Width="120" Height="21" Margin="0,60.0000000000001,155.2,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4909745519607846127" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="0" cm:DataBinding="dsCheckDate" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:tzTextBox Name="txtCheckEnghezaDate" Width="120" Height="21" Margin="166.2,0,0,5.53358734620213" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="5461506809348140965" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:DataBinding="dsCheckEnghezaDate" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsCheckEnghezaDate" Content="dsCheckEnghezaDate" Width="110" Height="25" Margin="0,53.8333333299996,178.4,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="4617001402693976710" Grid.Column="2" Grid.ColumnSpan="2" Grid.Row="2" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdEnghezaBimehNameFrom}, {@pdEnghezaBimehNameTo}" />
          <cm:tzDataSource Name="dsCheckMablagh" Content="dsCheckMablagh" Width="110" Height="25" Margin="0,18.4380914300002,171.000000000001,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5612519053674105182" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="4" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="Sp_Cu_CheckValidateInsuranceAmount {@txtHagheBimehNameSalGozashteAz} , {@txtHagheBimehNameSalGozashteTa}" />
          <cm:TZCheckBox Name="chkCheckMablagh" Content="chkCheckMablagh" Width="73.599999999999682" Height="20" Margin="0,56.5166666678666,190.6,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5259639043811958146" FontFamily="Tahoma" Grid.Column="0" Grid.ColumnSpan="2" Grid.Row="4" cm:DataBinding="dsCheckMablagh" cm:DataBindingField="result" cm:IsVisibleItem="False" />
          <cm:TZCheckListBox Name="clbReshteBimeh" Width="213.00000000000003" Height="81.666412653797977" Margin="8,37.7481587257992,10.7999999999999,5.53358734620213" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" ControlID="4791957476887389344" Grid.Column="0" Grid.Row="2" cm:DataBinding="dsReshteBime" cm:tzDisplayItem="BimeGroupName" cm:tzValueItem="BimeGroupID" />
          <cm:tzTextBox Name="txtReshteBimeh" Width="65.418653740000138" Height="21" Margin="0,7.74815872959718,94.6211915199998,0" HorizontalAlignment="Right" VerticalAlignment="Top" ControlID="5337453673652440187" Grid.Column="0" Grid.Row="2" cm:DataBinding="dsclbReshteBimehResult" cm:DataBindingField="Column1" cm:IsVisibleItem="False" />
          <cm:tzDataSource Name="dsclbReshteBimehResult" Content="dsclbReshteBimehResult" Width="110" Height="25" Margin="8.00000000000011,0,0,5.25184127420076" HorizontalAlignment="Left" VerticalAlignment="Bottom" ControlID="4798583823217722043" Grid.Column="0" Grid.Row="1" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SamanCRM" cm:RunQueryMode="Text" cm:tzSelectQuery="select {@clbReshteBimeh}" />
        </cm:Grid>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '2025/04/07 12:25:23', GUID = 'fea7bb47-3fc9-4aa9-a3f8-2aeff96f4401', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "91753" ,"components": [{"value": "","key": "5259639043811958146","label": "chkCheckMablagh","controlType": "checkbox","caption": "chkCheckMablagh" ,"DataBindingField" : "result"},{"key": "5087263816635130773","label": "cmbCity","value": "", "controlType": "dropdown","options":""},{"key": "4728680930548316519","label": "cmbProvince","value": "", "controlType": "dropdown","options":""},{"key": "4765192395696139763","label": "cmbStatus","value": "", "controlType": "dropdown","options":""},{"key":"5745611305114784426" , "dataSourceName":"dsCheckDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdFromDate},{@pdToDate}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4617001402693976710" , "dataSourceName":"dsCheckEnghezaDate" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckDateForSaleLeadsRecoverySearch {@pdEnghezaBimehNameFrom}, {@pdEnghezaBimehNameTo}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5612519053674105182" , "dataSourceName":"dsCheckMablagh" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckValidateInsuranceAmount {@txtHagheBimehNameSalGozashteAz} , {@txtHagheBimehNameSalGozashteTa}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4827193209819580175" , "dataSourceName":"dsCity" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetCity_Frm91753 {@cmbProvince}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4798583823217722043" , "dataSourceName":"dsclbReshteBimehResult" , "controlType": "datasource",  "selectQuery" :"select {@clbReshteBimeh}" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5130384136804268635" , "dataSourceName":"dsGetStatus" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_StatusForSalesLeadRecovery" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4643221114165485385" , "dataSourceName":"dsGetTarikh" , "controlType": "datasource",  "selectQuery" :"SP_CU_DefaultDate_frm91753" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4689391317497953415" , "dataSourceName":"dsProvince" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetProvince_Frm91753" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5380350289884255887" , "dataSourceName":"dsReshteBime" , "controlType": "datasource",  "selectQuery" :"SP_CU_GetReshteID" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5760713925829644762" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"EXEC SP_CU_AdvancedSearch_SalesLeadRecovery {@pdFromDate},{@pdToDate},{@txtNationalCode},{@txtWFID},{@txtNameNamayandegi},{@txtCodeNamayandegi}, {@txtNameBimehGozar},{@txtCodeBimehGozar},{@pdEnghezaBimehNameFrom},{@pdEnghezaBimehNameTo},{@txtShomareBimehNameSaleGhabl}, {@cmbReshteBimeh},{@txtMobileNumber},{@cmbProvince},{@cmbCity},{@txtShobehSarparastiNamayandeh},{@luNamayandegi}, {@txtHagheBimehNameSalGozashteAz},{@txtHagheBimehNameSalGozashteTa},{@cmbStatus},(@UserID)" , "connectionName" :"SamanCRM" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"value": "","key": "4909745519607846127","label": "txtCheckDate","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5461506809348140965","label": "txtCheckEnghezaDate","controlType": "textbox", "type": "" , "DataBindingField" : "result"},{"value": "","key": "5103100603469298776","label": "txtCodeBimehGozar","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4949386390666111056","label": "txtCodeNamayandegi","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5016114664718051316","label": "txtHagheBimehNameSalGozashteAz","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4674850897938031852","label": "txtHagheBimehNameSalGozashteTa","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5382719818120123355","label": "txtMobileNumber","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5618862601417499248","label": "txtNameBimehGozar","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5413592906492070802","label": "txtNameNamayandegi","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5558425608556058944","label": "txtNationalCode","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5337453673652440187","label": "txtReshteBimeh","controlType": "textbox", "type": "" , "DataBindingField" : "Column1"},{"value": "","key": "5525318473331954046","label": "txtShobehSarparastiNamayandeh","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "4698846908135385693","label": "txtShomareBimehNameSaleGhabl","controlType": "textbox", "type": "" , "DataBindingField" : ""},{"value": "","key": "5584260686688920255","label": "txtWFID","controlType": "textbox", "type": "" , "DataBindingField" : ""}],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 91753
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm91753') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm91753] ( [frm91753Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_5558425608556058944]  [nvarchar] ( 10) NULL , [Col_5584260686688920255]  [nvarchar] ( 20) NULL , [Col_5413592906492070802]  [nvarchar] ( 100) NULL , [Col_4949386390666111056]  [bigint] NULL , [Col_5618862601417499248]  [nvarchar] ( 100) NULL , [Col_5103100603469298776]  [bigint] NULL , [Col_4698846908135385693]  [nvarchar] ( 100) NULL , [Col_5382719818120123355]  [nvarchar] ( 11) NULL , [Col_5525318473331954046]  [nvarchar] ( 50) NULL , [Col_5016114664718051316]  [nvarchar] ( 100) NULL , [Col_4674850897938031852]  [nvarchar] ( 100) NULL , [Col_4728680930548316519]  [nvarchar] ( 50) NULL , [Col_5087263816635130773]  [nvarchar] ( 50) NULL , [Col_5613194702389825479]  [nvarchar] ( 10) NULL , [Col_4723141405861506134]  [nvarchar] ( 10) NULL , [Col_5112472268721423879]  [nvarchar] ( 10) NULL , [Col_5683011552712412504]  [nvarchar] ( 10) NULL , [Col_4701549116801879898]  [nvarchar] ( 50) NULL , [Col_4765192395696139763]  [nvarchar] ( 50) NULL , [Col_4909745519607846127]  [nvarchar] ( 50) NULL , [Col_5461506809348140965]  [nvarchar] ( 50) NULL , [Col_5259639043811958146]  [bit] NULL , [Col_5337453673652440187]  [nvarchar] ( 50) NULL ,  PRIMARY KEY CLUSTERED ( [frm91753Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'frm91753Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD frm91753Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5558425608556058944' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5558425608556058944 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5584260686688920255' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5584260686688920255 nvarchar (20) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5413592906492070802' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5413592906492070802 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4949386390666111056' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4949386390666111056 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5618862601417499248' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5618862601417499248 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5103100603469298776' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5103100603469298776 bigint NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4698846908135385693' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4698846908135385693 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5382719818120123355' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5382719818120123355 nvarchar (11) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5525318473331954046' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5525318473331954046 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5016114664718051316' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5016114664718051316 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4674850897938031852' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4674850897938031852 nvarchar (100) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4728680930548316519' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4728680930548316519 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5087263816635130773' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5087263816635130773 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5613194702389825479' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5613194702389825479 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4723141405861506134' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4723141405861506134 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5112472268721423879' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5112472268721423879 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5683011552712412504' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5683011552712412504 nvarchar (10) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4701549116801879898' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4701549116801879898 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4765192395696139763' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4765192395696139763 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_4909745519607846127' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_4909745519607846127 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5461506809348140965' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5461506809348140965 nvarchar (50) NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5259639043811958146' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5259639043811958146 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm91753' AND COLUMN_NAME = 'Col_5337453673652440187' )  BEGIN ALTER TABLE [dbo].[Tbl_frm91753] ADD Col_5337453673652440187 nvarchar (50) NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm91753]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm91753
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm91753] ( @PKFormId as bigint OUTPUT ,  @Col_5558425608556058944 AS nvarchar(10),  @Col_5584260686688920255 AS nvarchar(20),  @Col_5413592906492070802 AS nvarchar(100),  @Col_4949386390666111056 AS bigint,  @Col_5618862601417499248 AS nvarchar(100),  @Col_5103100603469298776 AS bigint,  @Col_4698846908135385693 AS nvarchar(100),  @Col_5382719818120123355 AS nvarchar(11),  @Col_5525318473331954046 AS nvarchar(50),  @Col_5016114664718051316 AS nvarchar(100),  @Col_4674850897938031852 AS nvarchar(100),  @Col_4728680930548316519 AS nvarchar(50),  @Col_5087263816635130773 AS nvarchar(50),  @Col_5613194702389825479 AS nvarchar(10),  @Col_4723141405861506134 AS nvarchar(10),  @Col_5112472268721423879 AS nvarchar(10),  @Col_5683011552712412504 AS nvarchar(10),  @Col_4701549116801879898 AS nvarchar(50),  @Col_4765192395696139763 AS nvarchar(50),  @Col_4909745519607846127 AS nvarchar(50),  @Col_5461506809348140965 AS nvarchar(50),  @Col_5259639043811958146 AS bit,  @Col_5337453673652440187 AS nvarchar(50) ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm91753](Col_5558425608556058944,Col_5584260686688920255,Col_5413592906492070802,Col_4949386390666111056,Col_5618862601417499248,Col_5103100603469298776,Col_4698846908135385693,Col_5382719818120123355,Col_5525318473331954046,Col_5016114664718051316,Col_4674850897938031852,Col_4728680930548316519,Col_5087263816635130773,Col_5613194702389825479,Col_4723141405861506134,Col_5112472268721423879,Col_5683011552712412504,Col_4701549116801879898,Col_4765192395696139763,Col_4909745519607846127,Col_5461506809348140965,Col_5259639043811958146,Col_5337453673652440187) VALUES ( @Col_5558425608556058944,@Col_5584260686688920255,@Col_5413592906492070802,@Col_4949386390666111056,@Col_5618862601417499248,@Col_5103100603469298776,@Col_4698846908135385693,@Col_5382719818120123355,@Col_5525318473331954046,@Col_5016114664718051316,@Col_4674850897938031852,@Col_4728680930548316519,@Col_5087263816635130773,@Col_5613194702389825479,@Col_4723141405861506134,@Col_5112472268721423879,@Col_5683011552712412504,@Col_4701549116801879898,@Col_4765192395696139763,@Col_4909745519607846127,@Col_5461506809348140965,@Col_5259639043811958146,@Col_5337453673652440187 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm91753]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm91753
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm91753] ( @PKFormId as bigint OUTPUT ,  @Col_5558425608556058944 AS nvarchar(10),  @Col_5584260686688920255 AS nvarchar(20),  @Col_5413592906492070802 AS nvarchar(100),  @Col_4949386390666111056 AS bigint,  @Col_5618862601417499248 AS nvarchar(100),  @Col_5103100603469298776 AS bigint,  @Col_4698846908135385693 AS nvarchar(100),  @Col_5382719818120123355 AS nvarchar(11),  @Col_5525318473331954046 AS nvarchar(50),  @Col_5016114664718051316 AS nvarchar(100),  @Col_4674850897938031852 AS nvarchar(100),  @Col_4728680930548316519 AS nvarchar(50),  @Col_5087263816635130773 AS nvarchar(50),  @Col_5613194702389825479 AS nvarchar(10),  @Col_4723141405861506134 AS nvarchar(10),  @Col_5112472268721423879 AS nvarchar(10),  @Col_5683011552712412504 AS nvarchar(10),  @Col_4701549116801879898 AS nvarchar(50),  @Col_4765192395696139763 AS nvarchar(50),  @Col_4909745519607846127 AS nvarchar(50),  @Col_5461506809348140965 AS nvarchar(50),  @Col_5259639043811958146 AS bit,  @Col_5337453673652440187 AS nvarchar(50) ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm91753] SET Col_5558425608556058944 =  @Col_5558425608556058944, Col_5584260686688920255 =  @Col_5584260686688920255, Col_5413592906492070802 =  @Col_5413592906492070802, Col_4949386390666111056 =  @Col_4949386390666111056, Col_5618862601417499248 =  @Col_5618862601417499248, Col_5103100603469298776 =  @Col_5103100603469298776, Col_4698846908135385693 =  @Col_4698846908135385693, Col_5382719818120123355 =  @Col_5382719818120123355, Col_5525318473331954046 =  @Col_5525318473331954046, Col_5016114664718051316 =  @Col_5016114664718051316, Col_4674850897938031852 =  @Col_4674850897938031852, Col_4728680930548316519 =  @Col_4728680930548316519, Col_5087263816635130773 =  @Col_5087263816635130773, Col_5613194702389825479 =  @Col_5613194702389825479, Col_4723141405861506134 =  @Col_4723141405861506134, Col_5112472268721423879 =  @Col_5112472268721423879, Col_5683011552712412504 =  @Col_5683011552712412504, Col_4701549116801879898 =  @Col_4701549116801879898, Col_4765192395696139763 =  @Col_4765192395696139763, Col_4909745519607846127 =  @Col_4909745519607846127, Col_5461506809348140965 =  @Col_5461506809348140965, Col_5259639043811958146 =  @Col_5259639043811958146, Col_5337453673652440187 =  @Col_5337453673652440187 WHERE [frm91753Id] = @PKFormId 
 END 
GO
GO
----------
 IF (SELECT COUNT(*) FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm91753'  ) = 1 
 BEGIN 
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_Cfrm4791957476887389344') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_Cfrm4791957476887389344] ( [Cfrm4791957476887389344Id]  [bigint] IDENTITY(1,1) NOT NULL , [frm91753Id]  [bigint] NULL , [Col_4791957476887389344]  [bigint] NULL ,  PRIMARY KEY CLUSTERED ( [Cfrm4791957476887389344Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  
 ALTER TABLE [dbo].[Tbl_Cfrm4791957476887389344] WITH NOCHECK ADD  CONSTRAINT [FK_frm47919574768873893441]  FOREIGN KEY ([frm91753Id]) REFERENCES [dbo].[Tbl_frm91753] ([frm91753Id]) 
 ALTER TABLE [dbo].[Tbl_Cfrm4791957476887389344] CHECK CONSTRAINT [FK_frm47919574768873893441] END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm4791957476887389344' AND COLUMN_NAME = 'Cfrm4791957476887389344Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm4791957476887389344] ADD Cfrm4791957476887389344Id bigint NOT NULL END 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm4791957476887389344' AND COLUMN_NAME = 'frm91753Id' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm4791957476887389344] ADD frm91753Id bigint NOT NULL END 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_Cfrm4791957476887389344' AND COLUMN_NAME = 'Col_4791957476887389344' ) 
 BEGIN ALTER TABLE [dbo].[Tbl_Cfrm4791957476887389344] ADD Col_4791957476887389344 bigint NOT NULL END 
 END 
 END 
 GO 
----------
