 SET IDENTITY_INSERT Workflow.TblWorkflow ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblWorkflow WHERE WorkflowId = 2000579) 
 INSERT INTO Workflow.TblWorkflow(WorkflowId,Name,IsActive,IsInternal,IsStartByCall,Description,Icon,Resource,IsPublished,WorkflowAdmin,IsOptional,CanReturn,IsSubWorkflow,GUID,LastModifiedDate,WorkflowAdminGroupId,WorkflowAdminRoleId,AnonymousAccess ) VALUES (2000579, N'درخواست پشتیبانی سامانه سجاد-پورتال',1,0,0, N'',NULL,NULL,1,NULL,1,1,0,'ec6e25db-23e9-418c-92fe-422aa85e651d', '1403/11/23 11:54:50', NULL,NULL,1) 
 ELSE UPDATE Workflow.TblWorkflow SET Name = N'درخواست پشتیبانی سامانه سجاد-پورتال',IsActive = 1,IsInternal = 0,IsStartByCall = 0,Description = N'',Icon = NULL , Resource = NULL , IsPublished = 1,WorkflowAdmin = NULL , IsOptional = 1,CanReturn = 1,IsSubWorkflow = 0,GUID = 'ec6e25db-23e9-418c-92fe-422aa85e651d', LastModifiedDate = '1403/11/23 11:54:50', WorkflowAdminGroupId = NULL , WorkflowAdminRoleId = NULL , AnonymousAccess = 1 WHERE WorkflowId = 2000579
GO
----------
 SET IDENTITY_INSERT Workflow.TblWorkflow OFF 
GO
GO
 INSERT INTO Workflow.TblWorkflowResource(WorkflowId,IsPublished,Version,Resource,LastModifiedDate,BPMSResource,UserId,Descriptions ) VALUES (2000579,1, N'5', N'<Workflow>
  <GUID>ec6e25db-23e9-418c-92fe-422aa85e651d</GUID>
  <WorkflowId>2000579</WorkflowId>
  <WorkflowName>درخواست پشتیبانی سامانه سجاد-پورتال</WorkflowName>
  <IsOptional>true</IsOptional>
  <IsInternal>false</IsInternal>
  <IsPublished>true</IsPublished>
  <IsStartByCall>false</IsStartByCall>
  <IsSubWorkflow>false</IsSubWorkflow>
  <WorkflowAdmin>-1</WorkflowAdmin>
  <Version>5</Version>
  <Description></Description>
  <DesignerItems>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>436</Left>
      <Top>0</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4652411545724252904</ID>
      <zIndex>0</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>1</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartActivity DesignerItemStatuseStatus="None" SmallImage="{assembly:Null}" OverSmallImage="{assembly:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:assembly="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70"&gt;&lt;av:Grid /&gt;&lt;/av:Grid&gt;&lt;/TZUCStartActivity&gt;</Content>
      <DataContext>&lt;TZStartActivity Value="-1☼4827913538206183691" Description="" ID="4652411545724252904" Title="" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>379</Left>
      <Top>194</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4827913538206183691</ID>
      <zIndex>1</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>true</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="31548☼5591385503275760470☼true☼☼4859691392425773076☼0☼5591385503275760470☼False☼," Permission="4852109228624382393" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="False" ShowSaveMessage="True" TaskNameVariable="" Description="" ID="4827913538206183691" Title="درخواست پشتیبانی سامانه سجاد پورتال" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>438</Left>
      <Top>338</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4801642229187423505</ID>
      <zIndex>3</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5748996479955585639" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Insert_Tbl_CU_SaoSajadSupoort_Portal_New @WorkflowInstanceId,1500&amp;#xA;exec Sp_Insert_Tbl_CU_QuestionAnswer_Attachment_New @WorkflowInstanceId, 1500☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;id&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5414885668321138014&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4801642229187423505" Title="درج در لاگ" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>455</Left>
      <Top>653</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5708912041284001927</ID>
      <zIndex>4</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>1</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="5708912041284001927" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>440</Left>
      <Top>483</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5637582066200139111</ID>
      <zIndex>5</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartWorkflowActivityConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartWorkflowActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCStartWorkflowActivity&gt;</Content>
      <DataContext>&lt;TZStartWorkflowActivity Value="&amp;lt;Root&amp;gt;&amp;#xA;  &amp;lt;WorkflowId&amp;gt;2000045&amp;lt;/WorkflowId&amp;gt;&amp;#xA;  &amp;lt;WorkflowParameterId&amp;gt;0&amp;lt;/WorkflowParameterId&amp;gt;&amp;#xA;  &amp;lt;PublicParameters&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;PortalID&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;4881604134686163892&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;$ID&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;BigInt&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;0&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;ProblemTypeSub&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;4770311836277663579&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;$ProblemTypeMain&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;Int&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;0&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;  &amp;lt;/PublicParameters&amp;gt;&amp;#xA;&amp;lt;/Root&amp;gt;" IsContinue="True" IsAutomatic="True" SuccessExecute="4881181552004462908" FailedExecute="-1" Description="" ID="5637582066200139111" Title="شروع فرایندکاری" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
  </DesignerItems>
  <Connections>
    <Connection>
      <SourceID>4652411545724252904</SourceID>
      <SinkID>4827913538206183691</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>2</zIndex>
      <ConnectionID>5140915871770784870</ConnectionID>
      <Description></Description>
      <NextActivityId>4827913538206183691</NextActivityId>
      <Title>Manual</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4827913538206183691</SourceID>
      <SinkID>4801642229187423505</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>8</zIndex>
      <ConnectionID>4948268421550515861</ConnectionID>
      <Description></Description>
      <NextActivityId>4801642229187423505</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5646887670739877569&lt;/ValidationId&gt;
    &lt;FormId&gt;31548&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5399638861972903409&lt;/ValidationId&gt;
    &lt;FormId&gt;31548&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;4730218701630974631&lt;/ValidationId&gt;
    &lt;FormId&gt;31548&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5664613290973684370&lt;/ValidationId&gt;
    &lt;FormId&gt;31548&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5637582066200139111</SourceID>
      <SinkID>5708912041284001927</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>6</zIndex>
      <ConnectionID>4881181552004462908</ConnectionID>
      <Description></Description>
      <NextActivityId>5708912041284001927</NextActivityId>
      <Title>اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4801642229187423505</SourceID>
      <SinkID>5637582066200139111</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>7</zIndex>
      <ConnectionID>5748996479955585639</ConnectionID>
      <Description></Description>
      <NextActivityId>5637582066200139111</NextActivityId>
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
      <ID>5414885668321138014</ID>
      <Name>ID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Public</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5378563347654705495</ID>
      <Name>ProblemTypeMain</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Public</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
  </Parameters>
  <Permissions>
    <Permission>
      <ID>4852109228624382393</ID>
      <Name>ثبت کننده </Name>
      <Type>Single</Type>
      <IsStartPermission>True</IsStartPermission>
      <Description></Description>
      <UserId>Admin</UserId>
      <UserGUID>fa79b472-83f5-4b4b-b3da-42e631959ed6</UserGUID>
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId />
    </Permission>
  </Permissions>
  <Forms>
    <Form>
      <ID>31548</ID>
    </Form>
  </Forms>
</Workflow>','1403/11/23 11:54:51',  N'<BPMS_Workflow>
  <GUID>ff0958a0-4f4a-4a02-a271-d1f45a173de0</GUID>
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
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5378563347654705495 AND WorkflowId = 2000579 AND ComponentId = 4685558585417077630 AND FormId = 31548 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200357336,5378563347654705495,2000579,4685558585417077630,31548) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5378563347654705495,WorkflowId = 2000579,ComponentId = 4685558585417077630,FormId = 31548 WHERE ParameterComponenetId = 200357336
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000579 AND PermissionId = 4852109228624382393 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200228312,2000579,4852109228624382393,1,NULL,NULL,NULL,0,1,0, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000579,PermissionId = 4852109228624382393,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200228312
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000579 AND PermissionId = 4852109228624382393 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231201,2000579,4852109228624382393,1,NULL,NULL,NULL,0,1,0, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000579,PermissionId = 4852109228624382393,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231201
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000579 AND PermissionId = 4852109228624382393 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231592,2000579,4852109228624382393,1,NULL,NULL,NULL,0,1,0, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000579,PermissionId = 4852109228624382393,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231592
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000579 AND PermissionId = 4852109228624382393 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232591,2000579,4852109228624382393,1,NULL,NULL,NULL,0,1,0, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000579,PermissionId = 4852109228624382393,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232591
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000579 AND PermissionId = 4852109228624382393 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200243836,2000579,4852109228624382393,1,NULL,NULL,NULL,0,1,0, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000579,PermissionId = 4852109228624382393,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200243836
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
