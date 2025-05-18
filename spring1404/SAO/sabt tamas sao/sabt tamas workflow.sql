 SET IDENTITY_INSERT Workflow.TblWorkflow ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblWorkflow WHERE WorkflowId = 2000588) 
 INSERT INTO Workflow.TblWorkflow(WorkflowId,Name,IsActive,IsInternal,IsStartByCall,Description,Icon,Resource,IsPublished,WorkflowAdmin,IsOptional,CanReturn,IsSubWorkflow,GUID,LastModifiedDate,WorkflowAdminGroupId,WorkflowAdminRoleId,AnonymousAccess ) VALUES (2000588, N'فرآیند ثبت تماس',1,0,0, N'',NULL,NULL,1,NULL,1,1,0,'6bc07bca-1200-40c0-af72-70a5ca959744', '2025/05/17 14:43:18', NULL,NULL,NULL) 
 ELSE UPDATE Workflow.TblWorkflow SET Name = N'فرآیند ثبت تماس',IsActive = 1,IsInternal = 0,IsStartByCall = 0,Description = N'',Icon = NULL , Resource = NULL , IsPublished = 1,WorkflowAdmin = NULL , IsOptional = 1,CanReturn = 1,IsSubWorkflow = 0,GUID = '6bc07bca-1200-40c0-af72-70a5ca959744', LastModifiedDate = '2025/05/17 14:43:18', WorkflowAdminGroupId = NULL , WorkflowAdminRoleId = NULL , AnonymousAccess = NULL WHERE WorkflowId = 2000588
GO
----------
 SET IDENTITY_INSERT Workflow.TblWorkflow OFF 
GO
GO
 INSERT INTO Workflow.TblWorkflowResource(WorkflowId,IsPublished,Version,Resource,LastModifiedDate,BPMSResource,UserId,Descriptions ) VALUES (2000588,1, N'1', N'<Workflow>
  <GUID>6bc07bca-1200-40c0-af72-70a5ca959744</GUID>
  <WorkflowId>2000588</WorkflowId>
  <WorkflowName>فرآیند ثبت تماس</WorkflowName>
  <IsOptional>true</IsOptional>
  <IsInternal>false</IsInternal>
  <IsPublished>true</IsPublished>
  <IsStartByCall>false</IsStartByCall>
  <IsSubWorkflow>false</IsSubWorkflow>
  <WorkflowAdmin>-1</WorkflowAdmin>
  <Version>1</Version>
  <Description></Description>
  <DesignerItems>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>396</Left>
      <Top>0</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5642179667695830696</ID>
      <zIndex>0</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>1</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70"&gt;&lt;av:Grid /&gt;&lt;/av:Grid&gt;&lt;/TZUCStartActivity&gt;</Content>
      <DataContext>&lt;TZStartActivity Value="-1☼4740755324617000677" Description="" ID="5642179667695830696" Title="" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>389</Left>
      <Top>123</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4740755324617000677</ID>
      <zIndex>1</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>true</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="41614☼4655287268986225047☼true☼☼5555783278308707097☼0☼-1☼False☼," Permission="4974617992524334540" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="" Description="" ID="4740755324617000677" Title="کارشناسان ثبت تماس" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>360</Left>
      <Top>242</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5165260391919762533</ID>
      <zIndex>3</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="4777231237549319719" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec sp_cu_Insert_Update_Tbl_CU_CallCentre_log @WorkflowInstanceId, 1934☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5165260391919762533" Title="درج در لاگ" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>371</Left>
      <Top>361</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4758646143844810411</ID>
      <zIndex>4</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$SystemError == true" FalseCondition="5651932248546559507" TrueCondition="5167733444192395308" Description="" ID="4758646143844810411" Title="خطای سیستمی؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>496</Left>
      <Top>564</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5329563859383616711</ID>
      <zIndex>6</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="5329563859383616711" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>548</Left>
      <Top>409</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5431329368045396042</ID>
      <zIndex>7</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5301779281144767818" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec sp_cu_Insert_Update_Tbl_CU_CallCentre_log @WorkflowInstanceId, 1935☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5431329368045396042" Title="درج در لاگ" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>148</Left>
      <Top>503</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4862293386916434753</ID>
      <zIndex>8</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartWorkflowActivityConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartWorkflowActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCStartWorkflowActivity&gt;</Content>
      <DataContext>&lt;TZStartWorkflowActivity Value="&amp;lt;Root&amp;gt;&amp;#xA;  &amp;lt;WorkflowId&amp;gt;2000045&amp;lt;/WorkflowId&amp;gt;&amp;#xA;  &amp;lt;WorkflowParameterId&amp;gt;0&amp;lt;/WorkflowParameterId&amp;gt;&amp;#xA;  &amp;lt;PublicParameters&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;PortalID&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;4881604134686163892&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;$Sajad_ID&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;BigInt&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;0&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;ProblemTypeSub&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;4770311836277663579&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;0&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;Int&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;0&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;  &amp;lt;/PublicParameters&amp;gt;&amp;#xA;&amp;lt;/Root&amp;gt;" IsContinue="True" IsAutomatic="True" SuccessExecute="5377864065133802366" FailedExecute="-1" Description="" ID="4862293386916434753" Title="شروع فرایندکاری" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>119</Left>
      <Top>382</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4659900023897276329</ID>
      <zIndex>12</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5199402257381144763" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Insert_Tbl_CU_QuestionAnswer_From_CallCentre @WorkflowInstanceId,1936&amp;#xA;exec sp_cu_Insert_Update_Tbl_CU_CallCentre_log @WorkflowInstanceId, 1937☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;id&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5013956522517794961&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4659900023897276329" Title="درج در لاگ پشتیبانی سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
  </DesignerItems>
  <Connections>
    <Connection>
      <SourceID>5642179667695830696</SourceID>
      <SinkID>4740755324617000677</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>2</zIndex>
      <ConnectionID>5609948281172087370</ConnectionID>
      <Description></Description>
      <NextActivityId>4740755324617000677</NextActivityId>
      <Title>Manual</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4740755324617000677</SourceID>
      <SinkID>5165260391919762533</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>15</zIndex>
      <ConnectionID>5399387766847053078</ConnectionID>
      <Description></Description>
      <NextActivityId>5165260391919762533</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5386732490360936388&lt;/ValidationId&gt;
    &lt;FormId&gt;41614&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5749821239461959921&lt;/ValidationId&gt;
    &lt;FormId&gt;41614&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5380057079521002667&lt;/ValidationId&gt;
    &lt;FormId&gt;41614&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5374134374431881089&lt;/ValidationId&gt;
    &lt;FormId&gt;41614&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5165260391919762533</SourceID>
      <SinkID>4758646143844810411</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>5</zIndex>
      <ConnectionID>4777231237549319719</ConnectionID>
      <Description></Description>
      <NextActivityId>4758646143844810411</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4758646143844810411</SourceID>
      <SinkID>5431329368045396042</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>11</zIndex>
      <ConnectionID>5651932248546559507</ConnectionID>
      <Description></Description>
      <NextActivityId>5329563859383616711</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5431329368045396042</SourceID>
      <SinkID>5329563859383616711</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>10</zIndex>
      <ConnectionID>5301779281144767818</ConnectionID>
      <Description></Description>
      <NextActivityId>5329563859383616711</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4758646143844810411</SourceID>
      <SinkID>4659900023897276329</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>13</zIndex>
      <ConnectionID>5167733444192395308</ConnectionID>
      <Description></Description>
      <NextActivityId>4862293386916434753</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4862293386916434753</SourceID>
      <SinkID>5329563859383616711</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>9</zIndex>
      <ConnectionID>5377864065133802366</ConnectionID>
      <Description></Description>
      <NextActivityId>5329563859383616711</NextActivityId>
      <Title>اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4659900023897276329</SourceID>
      <SinkID>4862293386916434753</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>14</zIndex>
      <ConnectionID>5199402257381144763</ConnectionID>
      <Description></Description>
      <NextActivityId>4862293386916434753</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
  </Connections>
  <Parameters>
    <Parameter>
      <ID>5098842142999821700</ID>
      <Name>SystemError</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5013956522517794961</ID>
      <Name>Sajad_ID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
  </Parameters>
  <Permissions>
    <Permission>
      <ID>4974617992524334540</ID>
      <Name>کارشناسان مرکز تماس</Name>
      <Type>Plural</Type>
      <IsStartPermission>True</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId>کارشناسان مرکز تماس</GroupId>
      <GroupGUID>46437cf2-e666-4cd8-b6f6-3f2cf42a6bbe</GroupGUID>
      <ParameterId />
    </Permission>
  </Permissions>
  <Forms>
    <Form>
      <ID>41614</ID>
    </Form>
  </Forms>
</Workflow>','2025/05/17 14:43:19',  N'<BPMS_Workflow>
  <GUID>88c5d689-d96a-4e02-a0c2-12bf4da4c0b3</GUID>
  <BPMS_WorkflowId>-1</BPMS_WorkflowId>
  <BPMS_WorkflowName />
  <IsOptional>false</IsOptional>
  <IsInternal>false</IsInternal>
  <IsPublished>false</IsPublished>
  <IsStartByCall>false</IsStartByCall>
  <IsSubWorkflow />
  <BPMS_WorkflowAdmin>-1</BPMS_WorkflowAdmin>
  <Version></Version>
  <Description></Description>
  <DesignerItems />
  <Connections />
  <Forms />
</BPMS_Workflow>',1, N'') 
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5098842142999821700 AND WorkflowId = 2000588 AND ComponentId = 5219106803957463407 AND FormId = 41614 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200478583,5098842142999821700,2000588,5219106803957463407,41614) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5098842142999821700,WorkflowId = 2000588,ComponentId = 5219106803957463407,FormId = 41614 WHERE ParameterComponenetId = 200478583
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000588 AND PermissionId = 4974617992524334540 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 51147 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200394759,2000588,4974617992524334540,NULL,NULL,51147,NULL,1,1,0, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000588,PermissionId = 4974617992524334540,UserId = NULL , RoleId = NULL , GroupId = 51147,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200394759
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
