GO
 SET IDENTITY_INSERT Form.TblForm ON 
GO
 IF NOT EXISTS (SELECT * FROM Form.TblForm WHERE FormId = 20296) 
 INSERT INTO Form.TblForm(FormId,Name,IsActive,Description,Resource,IsSearchForm,LastModifiedDate,GUID,ISPersistable,HelpLink,HTMLResource,DefaultCulture ) VALUES (20296, N'فرم ورود اطلاعات پایه درخواست پشتیبانی سامانه سجاد ',1, N'', N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="909" Height="533.03333333" Background="White">
  <Canvas Width="883" Height="488">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox3" Width="867" Height="472" Background="#FF06427F" ControlID="5115775193232973089" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox5" Width="839" Height="434.51666667" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4961759523186524548" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:TZTabControl Name="TabControl6" Width="811" Height="397.03333333666666" ControlID="5468182173077016786" Canvas.Left="8" Canvas.Top="8" cm:HiddenIndexDataBindingDS="dsHidePremadeResponses" cm:HiddenIndexDataBindingField="hidden_idx">
              <cm:TZTabItem cm:HeaderText="نوع مشکل">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox12" Width="789" Height="358.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5023120846897509688" Canvas.Left="8" Canvas.Top="4" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="GridView8" Width="761" Height="321.06666666999996" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5065566019625399424" ItemsSource="{Binding ElementName=dsSearchProblemType, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSearchProblemType" cm:Form="141" cm:FormName="فرم ورود اطلاعات پایه نوع مشکل" cm:IsSearchable="False" cm:KeyField="ProblemTypeID" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="4715567713357248956">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTypeID" DecimalMark="False" HeaderText="ProblemTypeID" IsRowColorField="False" KeyField="True" SortMemberPath="ProblemTypeID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTypeID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="STATUS" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="STATUS">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding STATUS}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                        <cm:tzDataGrid.PopupValidations>
                          <cm:TzPopupValidation ValidationID="5388706914989042019" />
                        </cm:tzDataGrid.PopupValidations>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsSearchProblemType" Content="dsSearchProblemType" Width="110" Height="25" ControlID="5498493412847802773" Canvas.Left="57.5" Canvas.Top="165.60333333666671" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchProblemType" />
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="واحد سازمانی ">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox11" Width="789" Height="354.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4955709782423615361" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvOrganizationalUnit" Width="761" Height="317.06666666999996" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5261684529266024443" ItemsSource="{Binding ElementName=dtsSearchOrganizationalUnit, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dtsSearchOrganizationalUnit" cm:Event="dtsSelectOrganizationalUnit" cm:EventForAdd="dtsSelectOrganizationalUnit" cm:EventForDelete="dtsSelectOrganizationalUnit" cm:EventForEdit="dtsSelectOrganizationalUnit" cm:Form="20898" cm:FormName="فرم ورود اطلاعات پایه واحدهای سازمانی" cm:KeyField="OrganizationalUnitID" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="5278288846034924808">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OrganizationalUnitID" DecimalMark="False" HeaderText="OrganizationalUnitID" IsRowColorField="False" KeyField="True" SortMemberPath="OrganizationalUnitID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OrganizationalUnitID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROWNUM" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROWNUM">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROWNUM}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OrganizationalUnit" DecimalMark="False" HeaderText="واحد سازمانی/اداره کل" IsRowColorField="False" KeyField="False" SortMemberPath="OrganizationalUnit">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OrganizationalUnit}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="Status">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Status}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dtsSearchOrganizationalUnit" Content="dtsSearchOrganizationalUnit" Width="110" Height="25" ControlID="5398438473230837588" Canvas.Left="111" Canvas.Top="107.03333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchOrganizationalUnit" />
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="ادارات زیرمجموعه">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox124" Width="789" Height="354.55" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5282987526383022565" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvSearchOrganizationalUnit" Width="761" Height="283.58333333666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5710871717238168219" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="41.483333333333334" cm:BindingForm="dsSearch" cm:Form="20714" cm:FormName="فرم ورود اطلاعات پایه ادارات زیرمجموعه" cm:KeyField="SubsidiaryID" cm:ParamValues="4914448860472724194¢OrganizationalUnit" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="5238274383606409461">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubsidiaryID" DecimalMark="False" HeaderText="SubsidiaryID" IsRowColorField="False" KeyField="True" SortMemberPath="SubsidiaryID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubsidiaryID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Subsidiary" DecimalMark="False" HeaderText="فیلد اداره زیرمجموعه/اداره کل " IsRowColorField="False" KeyField="False" SortMemberPath="Subsidiary">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Subsidiary}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Column1" DecimalMark="False" HeaderText="واحد سازمانی/اداره کل " IsRowColorField="False" KeyField="False" SortMemberPath="Column1">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Column1}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="STATUS" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="STATUS">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding STATUS}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzLabel Name="Lable126" Content=":واحد سازمانی" ControlID="4638261797730764348" Canvas.Left="688.25333333333333" Canvas.Top="8" />
                      <cm:tzLookUpComboBox Name="cmbOrganizationalUnit" Width="307" Height="22" ControlID="4914448860472724194" Canvas.Left="380.25333333" Canvas.Top="10.48333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dtsSelectOrganizationalUnit" cm:DataType="Int" cm:Event="dsCheckOrganizationalUnit,dsSearch" cm:tzDisplayItem="OrganizationalUnit" cm:tzValueItem="OrganizationalUnitID" />
                      <cm:tzDataSource Name="dtsSelectOrganizationalUnit" Content="dtsSelectOrganizationalUnit" Width="110" Height="25" ControlID="5566414290495638821" Canvas.Left="544" Canvas.Top="7.4833333299999936" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectOrganizationalUnit" />
                      <cm:TZCheckBox Name="chkCheckOrganizationalUnit" Content="chkCheckOrganizationalUnit" Width="120" Height="20" ControlID="5479333876942929550" Canvas.Left="115" Canvas.Top="7.4833333299999936" cm:DataBinding="dsCheckOrganizationalUnit" cm:DataBindingField="RESULT" cm:FCVCol="" cm:FECol="5710871717238168219#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:tzDataSource Name="dsCheckOrganizationalUnit" Content="dsCheckOrganizationalUnit" Width="110" Height="25" ControlID="4770815407701194442" Canvas.Left="8" Canvas.Top="10.483333329999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckOrganizationalUnitFill">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrganizationalUnit}" IsOutputParameter="False" ParameterType="int" SpParamName=" @CmbOrganizationalUnit" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5359252024991106284" Canvas.Left="348" Canvas.Top="10.483333329999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchSubsidiary">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrganizationalUnit}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OrganizationalUnitID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="اختصاص کارشناس به هر فرایند">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox19" Width="789" Height="354.55" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5715144931427384859" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvExpertWF" Width="761" Height="317.06666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5297092783685957746" ItemsSource="{Binding ElementName=dsExpertWF, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsExpertWF" cm:Form="31156" cm:FormName="فرم اختصاص کارشناس به فرآیند" cm:KeyField="ExpertWfID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="5425806690578622346">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ExpertWfID" DecimalMark="False" HeaderText="ExpertWfID" IsRowColorField="False" KeyField="True" SortMemberPath="ExpertWfID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ExpertWfID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WF" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WF">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WF}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Expert" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="Expert">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Expert}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ITExpert" DecimalMark="False" HeaderText="کارشناس IT" IsRowColorField="False" KeyField="False" SortMemberPath="ITExpert">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ITExpert}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzDataSource Name="dsExpertWF" Content="dsExpertWF" Width="110" Height="25" ControlID="4611929656031552723" Canvas.Left="123.53083700000008" Canvas.Top="185.06716225999998" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_cu_SearchGetExpertName_frm20296" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="پاسخ های از پیش تعیین شده ">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox79" Width="787" Height="352.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5183823254602682657" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="پاسخ های از پیش تعیین شده ">
                    <Canvas>
                      <cm:tzLabel Name="Lable79" Content=":موضوع اصلی" ControlID="5686903851624916336" Canvas.Left="687.71" Canvas.Top="8" />
                      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="428.34333334" Height="22" ControlID="5530768454771502173" Canvas.Left="258.36666666" Canvas.Top="10.48333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataType="Int" cm:Event="dsEnableSaoAsnwer,dsSearchReadyAnswer" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                      <cm:tzDataGrid Name="GridView83" Width="759" Height="282.58333333999997" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5635470536466464130" ItemsSource="{Binding ElementName=dsSearchReadyAnswer, Path=DataItems}" Canvas.Left="8" Canvas.Top="41.48333333" cm:BindingForm="dsSearchReadyAnswer" cm:Form="31291" cm:FormName="فرم پاسخ های از پیش تعیین شده  پشتیبانی سامانه سجاد" cm:KeyField="ReadSaoAnswerID" cm:ParamValues="5530768454771502173¢cmbMainSubject" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="5212902765314877656">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReadSaoAnswerID" DecimalMark="False" HeaderText="ReadSaoAnswerID" IsRowColorField="False" KeyField="True" SortMemberPath="ReadSaoAnswerID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReadSaoAnswerID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Title" DecimalMark="False" HeaderText="عنوان درخواست " IsRowColorField="False" KeyField="False" SortMemberPath="Title">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Title}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Answer" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Answer">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Answer}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Statuss" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="Statuss">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Statuss}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="113" Height="25" ControlID="4791881557067791466" Canvas.Left="8" Canvas.Top="88.483333333333235" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC Sp_Cu_GetMainSubject_frm21041 1">
                        <cm:tzDataSource.StoredProcedureParameterValue />
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsEnableSaoAsnwer" Content="dsEnableSaoAsnwer" Width="110" Height="25" ControlID="5750607399077216418" Canvas.Left="11" Canvas.Top="162.48333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbMainSubject} = ''-1'' select cast(0 as Bit) AS Res else select cast(1 as Bit) AS Res" />
                      <cm:TZCheckBox Name="chkEnableSaoAnswer" Content="chkEnableSaoAnswer" Width="120" Height="20" ControlID="5678054784556929729" FontFamily="Tahoma" Canvas.Left="130" Canvas.Top="167.48333333000005" cm:DataBinding="dsEnableSaoAsnwer" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5635470536466464130#" cm:TMCol="" cm:TVCol="" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzDataSource Name="dsSearchReadyAnswer" Content="dsSearchReadyAnswer" Width="110" Height="25" ControlID="5696543928533695005" Canvas.Left="26" Canvas.Top="146.03333334000007" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Search_Tbl_Cu_Base_SaoReadyAnswer">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TZTabItem>
            </cm:TZTabControl>
            <cm:tzDataSource Name="dsHidePremadeResponses" Content="dsHidePremadeResponses" Width="110" Height="25" ControlID="5355034775384347246" Canvas.Left="630.01898734" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select ''5'' as hidden_idx" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',1,'1403/11/01 16:47:34', 'b50e9cdc-e4a3-4503-8687-25dff4f9d2e9', 0, N'', N'{"formID": "20296" ,"components": [{"value": "","key": "5479333876942929550","label": "chkCheckOrganizationalUnit","controlType": "checkbox","caption": "chkCheckOrganizationalUnit" ,"DataBindingField" : "RESULT"},{"value": "","key": "5678054784556929729","label": "chkEnableSaoAnswer","controlType": "checkbox","caption": "chkEnableSaoAnswer" ,"DataBindingField" : "Res"},{"key": "5530768454771502173","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key": "4914448860472724194","label": "cmbOrganizationalUnit","value": "", "controlType": "dropdown","options":""},{"key":"4770815407701194442" , "dataSourceName":"dsCheckOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckOrganizationalUnitFill" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5750607399077216418" , "dataSourceName":"dsEnableSaoAsnwer" , "controlType": "datasource",  "selectQuery" :"if {@cmbMainSubject} = ''-1'' select cast(0 as Bit) AS Res else select cast(1 as Bit) AS Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4611929656031552723" , "dataSourceName":"dsExpertWF" , "controlType": "datasource",  "selectQuery" :"Sp_cu_SearchGetExpertName_frm20296" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5355034775384347246" , "dataSourceName":"dsHidePremadeResponses" , "controlType": "datasource",  "selectQuery" :"select ''5'' as hidden_idx" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"EXEC Sp_Cu_GetMainSubject_frm21041 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5359252024991106284" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchSubsidiary" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498493412847802773" , "dataSourceName":"dsSearchProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchProblemType" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5696543928533695005" , "dataSourceName":"dsSearchReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Search_Tbl_Cu_Base_SaoReadyAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5398438473230837588" , "dataSourceName":"dtsSearchOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchOrganizationalUnit" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5566414290495638821" , "dataSourceName":"dtsSelectOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectOrganizationalUnit" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',NULL) 
 ELSE UPDATE Form.TblForm SET Name = N'فرم ورود اطلاعات پایه درخواست پشتیبانی سامانه سجاد ',IsActive = 1,Description = N'',Resource = N'<cm:TZBaseControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:sk="http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:cm="clr-namespace:ITS.FormGenerator.Component.SL;assembly=ITS.FormGenerator.Component.WPF" xmlns:my="clr-namespace:Liquid;assembly=Liquid" xmlns:my1="clr-namespace:Liquid;assembly=RichTextEditor" Width="909" Height="533.03333333" Background="White">
  <Canvas Width="883" Height="488">
    <ViewLayouts />
    <cm:TzGroupBox Name="GroupBox3" Width="867" Height="472" Background="#FF06427F" ControlID="5115775193232973089" Canvas.Left="8" Canvas.Top="8" cm:Header="">
      <Canvas>
        <cm:TzGroupBox Name="GroupBox5" Width="839" Height="434.51666667" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4961759523186524548" Canvas.Left="8" Canvas.Top="8" cm:Header="">
          <Canvas>
            <cm:TZTabControl Name="TabControl6" Width="811" Height="397.03333333666666" ControlID="5468182173077016786" Canvas.Left="8" Canvas.Top="8" cm:HiddenIndexDataBindingDS="dsHidePremadeResponses" cm:HiddenIndexDataBindingField="hidden_idx">
              <cm:TZTabItem cm:HeaderText="نوع مشکل">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox12" Width="789" Height="358.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5023120846897509688" Canvas.Left="8" Canvas.Top="4" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="GridView8" Width="761" Height="321.06666666999996" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5065566019625399424" ItemsSource="{Binding ElementName=dsSearchProblemType, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsSearchProblemType" cm:Form="141" cm:FormName="فرم ورود اطلاعات پایه نوع مشکل" cm:IsSearchable="False" cm:KeyField="ProblemTypeID" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="4715567713357248956">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ProblemTypeID" DecimalMark="False" HeaderText="ProblemTypeID" IsRowColorField="False" KeyField="True" SortMemberPath="ProblemTypeID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ProblemTypeID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Problem" DecimalMark="False" HeaderText="نوع مشکل" IsRowColorField="False" KeyField="False" SortMemberPath="Problem">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Problem}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="auto" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="STATUS" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="STATUS">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding STATUS}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                        <cm:tzDataGrid.PopupValidations>
                          <cm:TzPopupValidation ValidationID="5388706914989042019" />
                        </cm:tzDataGrid.PopupValidations>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsSearchProblemType" Content="dsSearchProblemType" Width="110" Height="25" ControlID="5498493412847802773" Canvas.Left="57.5" Canvas.Top="165.60333333666671" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchProblemType" />
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="واحد سازمانی ">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox11" Width="789" Height="354.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="4955709782423615361" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvOrganizationalUnit" Width="761" Height="317.06666666999996" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5261684529266024443" ItemsSource="{Binding ElementName=dtsSearchOrganizationalUnit, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dtsSearchOrganizationalUnit" cm:Event="dtsSelectOrganizationalUnit" cm:EventForAdd="dtsSelectOrganizationalUnit" cm:EventForDelete="dtsSelectOrganizationalUnit" cm:EventForEdit="dtsSelectOrganizationalUnit" cm:Form="20898" cm:FormName="فرم ورود اطلاعات پایه واحدهای سازمانی" cm:KeyField="OrganizationalUnitID" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="5278288846034924808">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OrganizationalUnitID" DecimalMark="False" HeaderText="OrganizationalUnitID" IsRowColorField="False" KeyField="True" SortMemberPath="OrganizationalUnitID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OrganizationalUnitID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ROWNUM" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="ROWNUM">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ROWNUM}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="OrganizationalUnit" DecimalMark="False" HeaderText="واحد سازمانی/اداره کل" IsRowColorField="False" KeyField="False" SortMemberPath="OrganizationalUnit">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding OrganizationalUnit}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Status" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="Status">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Status}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dtsSearchOrganizationalUnit" Content="dtsSearchOrganizationalUnit" Width="110" Height="25" ControlID="5398438473230837588" Canvas.Left="111" Canvas.Top="107.03333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchOrganizationalUnit" />
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="ادارات زیرمجموعه">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox124" Width="789" Height="354.55" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5282987526383022565" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvSearchOrganizationalUnit" Width="761" Height="283.58333333666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5710871717238168219" ItemsSource="{Binding ElementName=dsSearch, Path=DataItems}" Canvas.Left="8" Canvas.Top="41.483333333333334" cm:BindingForm="dsSearch" cm:Form="20714" cm:FormName="فرم ورود اطلاعات پایه ادارات زیرمجموعه" cm:KeyField="SubsidiaryID" cm:ParamValues="4914448860472724194¢OrganizationalUnit" cm:UserCanEdit="False" cm:UserCanInsert="False" cm:ViewLayoutId="5238274383606409461">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="SubsidiaryID" DecimalMark="False" HeaderText="SubsidiaryID" IsRowColorField="False" KeyField="True" SortMemberPath="SubsidiaryID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding SubsidiaryID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNum" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNum">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNum}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Subsidiary" DecimalMark="False" HeaderText="فیلد اداره زیرمجموعه/اداره کل " IsRowColorField="False" KeyField="False" SortMemberPath="Subsidiary">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Subsidiary}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Column1" DecimalMark="False" HeaderText="واحد سازمانی/اداره کل " IsRowColorField="False" KeyField="False" SortMemberPath="Column1">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Column1}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="STATUS" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="STATUS">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding STATUS}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzLabel Name="Lable126" Content=":واحد سازمانی" ControlID="4638261797730764348" Canvas.Left="688.25333333333333" Canvas.Top="8" />
                      <cm:tzLookUpComboBox Name="cmbOrganizationalUnit" Width="307" Height="22" ControlID="4914448860472724194" Canvas.Left="380.25333333" Canvas.Top="10.48333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dtsSelectOrganizationalUnit" cm:DataType="Int" cm:Event="dsCheckOrganizationalUnit,dsSearch" cm:tzDisplayItem="OrganizationalUnit" cm:tzValueItem="OrganizationalUnitID" />
                      <cm:tzDataSource Name="dtsSelectOrganizationalUnit" Content="dtsSelectOrganizationalUnit" Width="110" Height="25" ControlID="5566414290495638821" Canvas.Left="544" Canvas.Top="7.4833333299999936" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SelectOrganizationalUnit" />
                      <cm:TZCheckBox Name="chkCheckOrganizationalUnit" Content="chkCheckOrganizationalUnit" Width="120" Height="20" ControlID="5479333876942929550" Canvas.Left="115" Canvas.Top="7.4833333299999936" cm:DataBinding="dsCheckOrganizationalUnit" cm:DataBindingField="RESULT" cm:FCVCol="" cm:FECol="5710871717238168219#" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="" cm:TMCol="" cm:TVCol="" />
                      <cm:tzDataSource Name="dsCheckOrganizationalUnit" Content="dsCheckOrganizationalUnit" Width="110" Height="25" ControlID="4770815407701194442" Canvas.Left="8" Canvas.Top="10.483333329999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_CheckOrganizationalUnitFill">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrganizationalUnit}" IsOutputParameter="False" ParameterType="int" SpParamName=" @CmbOrganizationalUnit" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsSearch" Content="dsSearch" Width="110" Height="25" ControlID="5359252024991106284" Canvas.Left="348" Canvas.Top="10.483333329999994" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_SearchSubsidiary">
                        <cm:tzDataSource.StoredProcedureParameterValue>
                          <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbOrganizationalUnit}" IsOutputParameter="False" ParameterType="bigint" SpParamName=" @OrganizationalUnitID" />
                        </cm:tzDataSource.StoredProcedureParameterValue>
                      </cm:tzDataSource>
                    </Canvas>
                  </cm:TzGroupBox>
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="اختصاص کارشناس به هر فرایند">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox19" Width="789" Height="354.55" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5715144931427384859" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="">
                    <Canvas>
                      <cm:tzDataGrid Name="gdvExpertWF" Width="761" Height="317.06666667" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5297092783685957746" ItemsSource="{Binding ElementName=dsExpertWF, Path=DataItems}" Canvas.Left="8" Canvas.Top="8" cm:BindingForm="dsExpertWF" cm:Form="31156" cm:FormName="فرم اختصاص کارشناس به فرآیند" cm:KeyField="ExpertWfID" cm:UserCanDelete="True" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="5425806690578622346">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn Width="20" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ExpertWfID" DecimalMark="False" HeaderText="ExpertWfID" IsRowColorField="False" KeyField="True" SortMemberPath="ExpertWfID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ExpertWfID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="34" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="55" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="WF" DecimalMark="False" HeaderText="نام فرآیند" IsRowColorField="False" KeyField="False" SortMemberPath="WF">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding WF}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn Width="75" HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Expert" DecimalMark="False" HeaderText="نام کارشناس" IsRowColorField="False" KeyField="False" SortMemberPath="Expert">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Expert}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ITExpert" DecimalMark="False" HeaderText="کارشناس IT" IsRowColorField="False" KeyField="False" SortMemberPath="ITExpert">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ITExpert}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzDataSource Name="dsExpertWF" Content="dsExpertWF" Width="110" Height="25" ControlID="4611929656031552723" Canvas.Left="123.53083700000008" Canvas.Top="185.06716225999998" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_cu_SearchGetExpertName_frm20296" />
                </Canvas>
              </cm:TZTabItem>
              <cm:TZTabItem HeaderText="پاسخ های از پیش تعیین شده ">
                <Canvas>
                  <cm:TzGroupBox Name="GroupBox79" Width="787" Height="352.55000000333331" Background="#FFC5DEF7" BorderBrush="#FF0BCDEF" ControlID="5183823254602682657" FontFamily="Tahoma" Canvas.Left="8" Canvas.Top="8" cm:Header="پاسخ های از پیش تعیین شده ">
                    <Canvas>
                      <cm:tzLabel Name="Lable79" Content=":موضوع اصلی" ControlID="5686903851624916336" Canvas.Left="687.71" Canvas.Top="8" />
                      <cm:tzLookUpComboBox Name="cmbMainSubject" Width="428.34333334" Height="22" ControlID="5530768454771502173" Canvas.Left="258.36666666" Canvas.Top="10.48333333" cm:ComboBoxDataSourceType="DataSystem" cm:DataBinding="dsMainSubject" cm:DataType="Int" cm:Event="dsEnableSaoAsnwer,dsSearchReadyAnswer" cm:tzDisplayItem="Name" cm:tzValueItem="WorkflowId" />
                      <cm:tzDataGrid Name="GridView83" Width="759" Height="282.58333333999997" HorizontalAlignment="Left" VerticalAlignment="Top" ControlID="5635470536466464130" ItemsSource="{Binding ElementName=dsSearchReadyAnswer, Path=DataItems}" Canvas.Left="8" Canvas.Top="41.48333333" cm:BindingForm="dsSearchReadyAnswer" cm:Form="31291" cm:FormName="فرم پاسخ های از پیش تعیین شده  پشتیبانی سامانه سجاد" cm:KeyField="ReadSaoAnswerID" cm:ParamValues="5530768454771502173¢cmbMainSubject" cm:UserCanEdit="True" cm:UserCanInsert="True" cm:ViewLayoutId="5212902765314877656">
                        <cm:tzDataGrid.Resources>
                          <cm:MainCommands x:Key="MainCommands" />
                          <cm:WorkFlowCommands x:Key="WorkFlowCommands" />
                        </cm:tzDataGrid.Resources>
                        <cm:tzDataGrid.Columns>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="ReadSaoAnswerID" DecimalMark="False" HeaderText="ReadSaoAnswerID" IsRowColorField="False" KeyField="True" SortMemberPath="ReadSaoAnswerID">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding ReadSaoAnswerID}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="RowNumber" DecimalMark="False" HeaderText="ردیف" IsRowColorField="False" KeyField="False" SortMemberPath="RowNumber">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding RowNumber}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="MainSubject" DecimalMark="False" HeaderText="موضوع اصلی" IsRowColorField="False" KeyField="False" SortMemberPath="MainSubject">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding MainSubject}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Title" DecimalMark="False" HeaderText="عنوان درخواست " IsRowColorField="False" KeyField="False" SortMemberPath="Title">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Title}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Answer" DecimalMark="False" HeaderText="پاسخ" IsRowColorField="False" KeyField="False" SortMemberPath="Answer">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Answer}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                          <cm:tzDataGridTemplateColumn HorizontalAlignment="Left" VerticalAlignment="Top" CandidateControlId="" CandidateKey="False" CanUserSort="True" DataTextField="Statuss" DecimalMark="False" HeaderText="وضعیت" IsRowColorField="False" KeyField="False" SortMemberPath="Statuss">
                            <cm:tzDataGridTemplateColumn.CellTemplate>
                              <cm:TzDataTemplate>
                                <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" Text="{Binding Statuss}" TextWrapping="Wrap" />
                              </cm:TzDataTemplate>
                            </cm:tzDataGridTemplateColumn.CellTemplate>
                          </cm:tzDataGridTemplateColumn>
                        </cm:tzDataGrid.Columns>
                      </cm:tzDataGrid>
                      <cm:tzDataSource Name="dsMainSubject" Content="dsMainSubject" Width="113" Height="25" ControlID="4791881557067791466" Canvas.Left="8" Canvas.Top="88.483333333333235" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="False" cm:RunQueryMode="Text" cm:tzSelectQuery="EXEC Sp_Cu_GetMainSubject_frm21041 1">
                        <cm:tzDataSource.StoredProcedureParameterValue />
                      </cm:tzDataSource>
                      <cm:tzDataSource Name="dsEnableSaoAsnwer" Content="dsEnableSaoAsnwer" Width="110" Height="25" ControlID="5750607399077216418" Canvas.Left="11" Canvas.Top="162.48333333" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="Text" cm:tzSelectQuery="if {@cmbMainSubject} = ''-1'' select cast(0 as Bit) AS Res else select cast(1 as Bit) AS Res" />
                      <cm:TZCheckBox Name="chkEnableSaoAnswer" Content="chkEnableSaoAnswer" Width="120" Height="20" ControlID="5678054784556929729" FontFamily="Tahoma" Canvas.Left="130" Canvas.Top="167.48333333000005" cm:DataBinding="dsEnableSaoAsnwer" cm:DataBindingField="Res" cm:FCVCol="" cm:FECol="" cm:FMCol="" cm:FVCol="" cm:IsVisibleItem="False" cm:TCVCol="" cm:TECol="5635470536466464130#" cm:TMCol="" cm:TVCol="" />
                    </Canvas>
                  </cm:TzGroupBox>
                  <cm:tzDataSource Name="dsSearchReadyAnswer" Content="dsSearchReadyAnswer" Width="110" Height="25" ControlID="5696543928533695005" Canvas.Left="26" Canvas.Top="146.03333334000007" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:ForceReload="True" cm:RunQueryMode="StoredProcedure" cm:tzSelectQuery="Sp_Cu_Search_Tbl_Cu_Base_SaoReadyAnswer">
                    <cm:tzDataSource.StoredProcedureParameterValue>
                      <TZStoredProcedure xmlns="clr-namespace:ITS.FormGenerator.Component.SL.Controls;assembly=ITS.FormGenerator.Component.WPF" ComponentName=" {@cmbMainSubject}" IsOutputParameter="False" ParameterType="int" SpParamName=" @MainSubjectID" />
                    </cm:tzDataSource.StoredProcedureParameterValue>
                  </cm:tzDataSource>
                </Canvas>
              </cm:TZTabItem>
            </cm:TZTabControl>
            <cm:tzDataSource Name="dsHidePremadeResponses" Content="dsHidePremadeResponses" Width="110" Height="25" ControlID="5355034775384347246" Canvas.Left="630.01898734" Canvas.Top="8" cm:AWorkFlowInstanceId="-1" cm:ConnectionName="SAODB" cm:RunQueryMode="Text" cm:tzSelectQuery="select ''5'' as hidden_idx" />
          </Canvas>
        </cm:TzGroupBox>
      </Canvas>
    </cm:TzGroupBox>
  </Canvas>
</cm:TZBaseControl>',IsSearchForm = 1,LastModifiedDate = '1403/11/01 16:47:34', GUID = 'b50e9cdc-e4a3-4503-8687-25dff4f9d2e9', ISPersistable = 0,HelpLink = N'',HTMLResource = N'{"formID": "20296" ,"components": [{"value": "","key": "5479333876942929550","label": "chkCheckOrganizationalUnit","controlType": "checkbox","caption": "chkCheckOrganizationalUnit" ,"DataBindingField" : "RESULT"},{"value": "","key": "5678054784556929729","label": "chkEnableSaoAnswer","controlType": "checkbox","caption": "chkEnableSaoAnswer" ,"DataBindingField" : "Res"},{"key": "5530768454771502173","label": "cmbMainSubject","value": "", "controlType": "dropdown","options":""},{"key": "4914448860472724194","label": "cmbOrganizationalUnit","value": "", "controlType": "dropdown","options":""},{"key":"4770815407701194442" , "dataSourceName":"dsCheckOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_CheckOrganizationalUnitFill" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5750607399077216418" , "dataSourceName":"dsEnableSaoAsnwer" , "controlType": "datasource",  "selectQuery" :"if {@cmbMainSubject} = ''-1'' select cast(0 as Bit) AS Res else select cast(1 as Bit) AS Res" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4611929656031552723" , "dataSourceName":"dsExpertWF" , "controlType": "datasource",  "selectQuery" :"Sp_cu_SearchGetExpertName_frm20296" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5355034775384347246" , "dataSourceName":"dsHidePremadeResponses" , "controlType": "datasource",  "selectQuery" :"select ''5'' as hidden_idx" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"4791881557067791466" , "dataSourceName":"dsMainSubject" , "controlType": "datasource",  "selectQuery" :"EXEC Sp_Cu_GetMainSubject_frm21041 1" , "connectionName" :"SAODB" , "runQueryMode":"Text" , "relatedComponent" :[] } ,{"key":"5359252024991106284" , "dataSourceName":"dsSearch" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchSubsidiary" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5498493412847802773" , "dataSourceName":"dsSearchProblemType" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchProblemType" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5696543928533695005" , "dataSourceName":"dsSearchReadyAnswer" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_Search_Tbl_Cu_Base_SaoReadyAnswer" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5398438473230837588" , "dataSourceName":"dtsSearchOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SearchOrganizationalUnit" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ,{"key":"5566414290495638821" , "dataSourceName":"dtsSelectOrganizationalUnit" , "controlType": "datasource",  "selectQuery" :"Sp_Cu_SelectOrganizationalUnit" , "connectionName" :"SAODB" , "runQueryMode":"StoredProcedure" , "relatedComponent" :[] } ],"layouts":[]}',DefaultCulture = NULL  WHERE FormId = 20296
GO
----------
 SET IDENTITY_INSERT Form.TblForm OFF 
GO
----------
 IF NOT EXISTS ( SELECT name FROM sysobjects WHERE xtype='U' AND  NAME = 'Tbl_frm20296') BEGIN SET ANSI_NULLS ON  SET QUOTED_IDENTIFIER ON  
 CREATE TABLE [dbo].[Tbl_frm20296] ( [frm20296Id]  [bigint] IDENTITY(1,1) NOT NULL , [Col_4914448860472724194]  [int] NULL , [Col_5479333876942929550]  [bit] NULL , [Col_5530768454771502173]  [int] NULL , [Col_5678054784556929729]  [bit] NULL ,  PRIMARY KEY CLUSTERED ( [frm20296Id] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY]  END 
 ELSE 
 BEGIN 
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm20296' AND COLUMN_NAME = 'frm20296Id' )  BEGIN ALTER TABLE [dbo].[Tbl_frm20296] ADD frm20296Id bigint NOT NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm20296' AND COLUMN_NAME = 'Col_4914448860472724194' )  BEGIN ALTER TABLE [dbo].[Tbl_frm20296] ADD Col_4914448860472724194 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm20296' AND COLUMN_NAME = 'Col_5479333876942929550' )  BEGIN ALTER TABLE [dbo].[Tbl_frm20296] ADD Col_5479333876942929550 bit NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm20296' AND COLUMN_NAME = 'Col_5530768454771502173' )  BEGIN ALTER TABLE [dbo].[Tbl_frm20296] ADD Col_5530768454771502173 int NULL END  
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tbl_frm20296' AND COLUMN_NAME = 'Col_5678054784556929729' )  BEGIN ALTER TABLE [dbo].[Tbl_frm20296] ADD Col_5678054784556929729 bit NULL END  
 END 
----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Insert_frm20296]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Insert_frm20296
GO----------
 CREATE PROCEDURE [dbo].[SP_Insert_frm20296] ( @PKFormId as bigint OUTPUT ,  @Col_4914448860472724194 AS int,  @Col_5479333876942929550 AS bit,  @Col_5530768454771502173 AS int,  @Col_5678054784556929729 AS bit ) AS BEGIN 
 INSERT INTO [dbo].[Tbl_frm20296](Col_4914448860472724194,Col_5479333876942929550,Col_5530768454771502173,Col_5678054784556929729) VALUES ( @Col_4914448860472724194,@Col_5479333876942929550,@Col_5530768454771502173,@Col_5678054784556929729 )  SELECT @PKFormId = Convert(bigint, @@IDENTITY) 
 END 
GO----------
 IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Update_frm20296]') AND type in (N'P', N'PC')) DROP PROCEDURE SP_Update_frm20296
GO----------
 CREATE PROCEDURE [dbo].[SP_Update_frm20296] ( @PKFormId as bigint OUTPUT ,  @Col_4914448860472724194 AS int,  @Col_5479333876942929550 AS bit,  @Col_5530768454771502173 AS int,  @Col_5678054784556929729 AS bit ) AS BEGIN 
 UPDATE [dbo].[Tbl_frm20296] SET Col_4914448860472724194 =  @Col_4914448860472724194, Col_5479333876942929550 =  @Col_5479333876942929550, Col_5530768454771502173 =  @Col_5530768454771502173, Col_5678054784556929729 =  @Col_5678054784556929729 WHERE [frm20296Id] = @PKFormId 
 END 
GO
