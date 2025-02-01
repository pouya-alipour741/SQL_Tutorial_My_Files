 SET IDENTITY_INSERT Workflow.TblWorkflow ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblWorkflow WHERE WorkflowId = 2000045) 
 INSERT INTO Workflow.TblWorkflow(WorkflowId,Name,IsActive,IsInternal,IsStartByCall,Description,Icon,Resource,IsPublished,WorkflowAdmin,IsOptional,CanReturn,IsSubWorkflow,GUID,LastModifiedDate,WorkflowAdminGroupId,WorkflowAdminRoleId,AnonymousAccess ) VALUES (2000045, N'فرآیند درخواست پشتیبانی سامانه سجاد',1,0,0, N'',NULL,NULL,1,NULL,1,1,0,'cf394ca3-1fb0-4a2b-99f9-0827e7ca697e', '1403/11/08 11:14:17', NULL,NULL,NULL) 
 ELSE UPDATE Workflow.TblWorkflow SET Name = N'فرآیند درخواست پشتیبانی سامانه سجاد',IsActive = 1,IsInternal = 0,IsStartByCall = 0,Description = N'',Icon = NULL , Resource = NULL , IsPublished = 1,WorkflowAdmin = NULL , IsOptional = 1,CanReturn = 1,IsSubWorkflow = 0,GUID = 'cf394ca3-1fb0-4a2b-99f9-0827e7ca697e', LastModifiedDate = '1403/11/08 11:14:17', WorkflowAdminGroupId = NULL , WorkflowAdminRoleId = NULL , AnonymousAccess = NULL WHERE WorkflowId = 2000045
GO
----------
 SET IDENTITY_INSERT Workflow.TblWorkflow OFF 
GO
GO
 INSERT INTO Workflow.TblWorkflowResource(WorkflowId,IsPublished,Version,Resource,LastModifiedDate,BPMSResource,UserId,Descriptions ) VALUES (2000045,1, N'31', N'<Workflow>
  <GUID>cf394ca3-1fb0-4a2b-99f9-0827e7ca697e</GUID>
  <WorkflowId>2000045</WorkflowId>
  <WorkflowName>فرآیند درخواست پشتیبانی سامانه سجاد</WorkflowName>
  <IsOptional>true</IsOptional>
  <IsInternal>false</IsInternal>
  <IsPublished>true</IsPublished>
  <IsStartByCall>false</IsStartByCall>
  <IsSubWorkflow>false</IsSubWorkflow>
  <WorkflowAdmin>-1</WorkflowAdmin>
  <Version>31</Version>
  <Description></Description>
  <DesignerItems>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>439</Left>
      <Top>0</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5015567563898775859</ID>
      <zIndex>0</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70"&gt;&lt;av:Grid /&gt;&lt;/av:Grid&gt;&lt;/TZUCStartActivity&gt;</Content>
      <DataContext>&lt;TZStartActivity Value="5139831927998754475☼5753723988987375715" Description="" ID="5015567563898775859" Title="" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1484.3272834932504</Left>
      <Top>172.94540412770454</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4625338406536221786</ID>
      <zIndex>4</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5213890639513494027" SuccessExecute="5338687302280169979" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec [dbo].[Sp_Cu_Check_EmailAndSMS_Applier] @WorkflowId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Both&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5258908701320087664&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Email&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5394843293937210158&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SMS&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5632725652335759021&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Teext&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5032894516671958522&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4625338406536221786" Title="CheckEmail&amp;amp;Sms" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1438.9915056523398</Left>
      <Top>25.689546465248469</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5139831927998754475</ID>
      <zIndex>3</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>AssignConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCAssignActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCAssignActivity&gt;</Content>
      <DataContext>&lt;TZAssignActivity To="$IsAutomat" Value="$IsAutomat☼true" Successful="5556839410945849937" Unsuccessfull="4897886659626279216" Description="" ID="5139831927998754475" Title="انتصاب" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1095.0993686303086</Left>
      <Top>767.1027418452735</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5652978255305006445</ID>
      <zIndex>5</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5762523089312090931" SuccessExecute="5316387041664277980" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼[dbo].[Sp_LoadInfo_Tbl_CU_QuestionAnswer_LOG]@WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;FullName&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5406478022168974661&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;NationalCode&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5284838067383089349&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;RegisteredDate&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4903377208807737207&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;RegisteredTime&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5518803313678431636&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;PortalUserID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5681153490470800943&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;FollowUpCode&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4915167348216933527&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MainSubjectID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4685877624631256695&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileNO&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4864472286525018705&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Email&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5305303899668709726&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OrienProblem&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5688283105553776774&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;QuestionLetter&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4635903430984750997&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ProblemType&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5517303748452609367&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Descript&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5127421865626688020&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;PortalLogID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5119275183439000772&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;StatusID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5481975548472856767&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;IsAutomat&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5538939670604997851&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;EntryID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5607988555014458378&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;PriorityID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4892567329320323540&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5652978255305006445" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>25.997616525423837</Left>
      <Top>2057.0916073979743</Top>
      <Width>142.27000000000004</Width>
      <Height>NaN</Height>
      <ID>5079146201392509584</ID>
      <zIndex>9</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4758356032329010723☼true☼☼5042047635546793339☼0☼-1☼false☼," Permission="5299052617432131194" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5079146201392509584" Title="بررسی درخواست ارجاع داده شده سامانه به ادارات سازمان امور دانشجویان " BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>83.63131348591412</Left>
      <Top>800.93603758529616</Top>
      <Width>157.27000000000004</Width>
      <Height>NaN</Height>
      <ID>5215090122552527259</ID>
      <zIndex>7</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4758356032329010723☼true☼☼5042047635546793339☼0☼5379163633942963406☼false☼," Permission="4987312281844816726" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5215090122552527259" Title="بررسی درخواست پشتیبانی سامانه سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>426.10699404761965</Left>
      <Top>276.40476190476187</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5092028410463335188</ID>
      <zIndex>6</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5342787630494405337" SuccessExecute="5302282897502089693" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1501☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5092028410463335188" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>419.27856456604275</Left>
      <Top>1166.8521566388502</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5499611259131768463</ID>
      <zIndex>8</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5231190641472298660" SuccessExecute="5372139286064602524" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼Sp_Cu_GetValues_From_SaoSupportResult_Log @WorkflowInstanceId  ,$AttachmentSecond ,$IsAutomat&amp;#xA;&amp;#xA;☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendResult&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5500185179236591797&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;DesiredOffice&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5199522934282053140&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OtherOrg&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5416730154019680888&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4704085124094693244&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OrganizationId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OfficeId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendToTazarv&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5611201786585541136&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;InstitudeID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5652333981498134328&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;UniversityID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4832702164274059749&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5499611259131768463" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1459.7645511486569</Left>
      <Top>1516.5878932524392</Top>
      <Width>157.58666666666662</Width>
      <Height>NaN</Height>
      <ID>5355033646134273192</ID>
      <zIndex>57</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4838605854342166465☼true☼☼5042047635546793339☼0☼4838605854342166465☼false☼," Permission="5440811842417883169" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5355033646134273192" Title="مشاهده نتیجه نهایی درخواست توسط کاربر ثبت کننده" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1437.2334530962337</Left>
      <Top>2585.0219356594225</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5694342043943880870</ID>
      <zIndex>56</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>5</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5035754403754435707" SuccessExecute="5001401237197601202" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1507☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5694342043943880870" Title="درج اتمام تیکت" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>562.18867863114167</Left>
      <Top>1593.459723062954</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4672212668007583093</ID>
      <zIndex>35</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>8</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$SendResult == False" FalseCondition="5068219710843932022" TrueCondition="4647341610673868784" Description="" ID="4672212668007583093" Title="ارجاع دوباره؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1189.4987083884514</Left>
      <Top>877.91191231469463</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5618309099746617127</ID>
      <zIndex>43</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsAutomat==1" FalseCondition="5237299746530449787" TrueCondition="4712886821426616060" Description="" ID="5618309099746617127" Title="مسیر اتوماتیک است؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>380.1884169884172</Left>
      <Top>130.3544401544402</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5753723988987375715</ID>
      <zIndex>10</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>true</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼5506106183357399091☼true☼☼5042047635546793339☼0☼5506106183357399091☼false☼," Permission="5123372079034883419" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="" Description="" ID="5753723988987375715" Title="فرم درخواست پشتیبانی سامانه سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>416.12938844802113</Left>
      <Top>439.5123518484404</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5679989114078456046</ID>
      <zIndex>12</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5018523667333738379" SuccessExecute="5100656714893933154" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5679989114078456046" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1517.2044675889874</Left>
      <Top>3681.5750259545289</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4977248618101654400</ID>
      <zIndex>13</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="4977248618101654400" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>317.1171867731066</Left>
      <Top>1387.76942342615</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4981133139336741470</ID>
      <zIndex>16</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$DesiredUnit == False" FalseCondition="4914635716658133846" TrueCondition="5151929746177899511" Description="" ID="4981133139336741470" Title="ارجاع به داخل اداره؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>404.65460315749408</Left>
      <Top>2036.6373077717835</Top>
      <Width>142.27000000000004</Width>
      <Height>NaN</Height>
      <ID>5206771541047775559</ID>
      <zIndex>17</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4758356032329010723☼true☼☼5042047635546793339☼0☼-1☼false☼," Permission="5299052617432131194" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5206771541047775559" Title="بررسی درخواست ارجاع داده شده سامانه به دانشگاه" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>827.70722841396469</Left>
      <Top>1752.8053932778821</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4717078541720909006</ID>
      <zIndex>40</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$NeedTazarvSupport == true" FalseCondition="4804649651280475494" TrueCondition="5565706635913417364" Description="" ID="4717078541720909006" Title="درخواست پشتیبانی یا تغییر؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>414.077353561584</Left>
      <Top>1704.1643252896024</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5684762310484468949</ID>
      <zIndex>21</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4719886411628269161" SuccessExecute="4652627495878772376" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1503☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5684762310484468949" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>418.26520781302258</Left>
      <Top>1814.0230234761559</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5163950478719452894</ID>
      <zIndex>20</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4842750295539146826" SuccessExecute="5255683723494859634" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5163950478719452894" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>33.1864406779664</Left>
      <Top>1718.525961797149</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5349566102883827743</ID>
      <zIndex>23</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5157828918609520797" SuccessExecute="5684255696953923445" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1502☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5349566102883827743" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>37.711864406779569</Left>
      <Top>1823.6545242579157</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4893967913713061711</ID>
      <zIndex>22</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5626710253440176300" SuccessExecute="4839282841367080620" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4893967913713061711" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>30.287341101694665</Left>
      <Top>1932.5423728813562</Top>
      <Width>128.84333333333333</Width>
      <Height>NaN</Height>
      <ID>5361776556386029805</ID>
      <zIndex>24</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4729390916724256608" SuccessExecute="5443301505954797336" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼SP_CU_GetGroupName_QuestionRefer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5374546887164210331&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5361776556386029805" Title="پیدا کردن ارجاع گیرنده به ادارات سازمان امور دانشجویان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>407.60089274748225</Left>
      <Top>1923.464447463768</Top>
      <Width>128.84333333333333</Width>
      <Height>NaN</Height>
      <ID>5010713951524064403</ID>
      <zIndex>30</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4848894565645618606" SuccessExecute="5507395517829462223" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼SP_CU_GetGroupName_QuestionRefer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5374546887164210331&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5010713951524064403" Title="پیدا کردن کاربر ارجاع گیرند به دانشگاه" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1468.9299302359032</Left>
      <Top>1266.0571058688145</Top>
      <Width>128.84333333333333</Width>
      <Height>NaN</Height>
      <ID>5504272185711950109</ID>
      <zIndex>58</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5391461185633657773" SuccessExecute="5160774698574792271" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetUserID_QuestionAnswer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;RegisteredUserId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5340628198769156907&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5504272185711950109" Title="پیدا کردن کاربر ثبت کننده" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>18.390625</Left>
      <Top>2284.2668842334283</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4943917596592846603</ID>
      <zIndex>36</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$SendResult == False" FalseCondition="5343388427725150378" TrueCondition="4647672263967365986" Description="" ID="4943917596592846603" Title="ارجاع دوباره؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>240.4550624111115</Left>
      <Top>2157.4891158821679</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4874627853814910225</ID>
      <zIndex>37</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>5</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5381837448641267262" SuccessExecute="5150060103628628923" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_Update_sajadExpertUserID_SaoSupport @WorkflowInstanceId&amp;#xA;EXEC Sp_Cu_GetValues_From_SaoSupportResult_Log_Sec @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendResult&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5500185179236591797&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;DesiredOffice&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5199522934282053140&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OtherOrg&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5410664933669157193&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4704085124094693244&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OrganizationId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OfficeId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendToTazarv&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5611201786585541136&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;InstitudeID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5652333981498134328&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;UniversityID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4832702164274059749&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4874627853814910225" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>237.99254682467415</Left>
      <Top>2361.2167249750787</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5041617862714217451</ID>
      <zIndex>41</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$NeedTazarvSupport == true" FalseCondition="5217439850891722212" TrueCondition="5509489452814179433" Description="" ID="5041617862714217451" Title="درخواست پشتیبانی یا تغییر؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>565.825540320732</Left>
      <Top>2355.6712642753564</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4951026755247257135</ID>
      <zIndex>44</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsAutomat==1" FalseCondition="4870467240336467455" TrueCondition="5191373052686157261" Description="" ID="4951026755247257135" Title="مسیر اتوماتیک است؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>404.08958722194006</Left>
      <Top>3068.5633684033655</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5190687566293051164</ID>
      <zIndex>46</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5721107465206823065" SuccessExecute="5362388479723076925" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1507☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5190687566293051164" Title="درج اتمام تیکت" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1036.5554027021678</Left>
      <Top>2818.5594122397824</Top>
      <Width>157.58666666666662</Width>
      <Height>NaN</Height>
      <ID>5301958918738439373</ID>
      <zIndex>48</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4838605854342166465☼true☼☼5042047635546793339☼0☼4838605854342166465☼false☼," Permission="5440811842417883169" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5301958918738439373" Title="مشاهده نتیجه نهایی درخواست توسط کاربر ثبت کننده" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1259.7315101666627</Left>
      <Top>3004.2273483443341</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5427263783413837374</ID>
      <zIndex>49</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5184131765316672643" SuccessExecute="5094054403266693838" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1507☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5427263783413837374" Title="درج اتمام تیکت" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>888.96732954545428</Left>
      <Top>2125.448863636364</Top>
      <Width>128.84333333333333</Width>
      <Height>NaN</Height>
      <ID>4839850536441130380</ID>
      <zIndex>47</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5161433631305115929" SuccessExecute="5134113557789913370" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetUserID_QuestionAnswer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;RegisteredUserId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5340628198769156907&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4839850536441130380" Title="پیدا کردن کاربر ثبت کننده" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>905.20454545454618</Left>
      <Top>2355.7795714090739</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5745961671592323669</ID>
      <zIndex>50</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ParallelConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCParallActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCParallActivity&gt;</Content>
      <DataContext>&lt;TZParallelActivity Description="" ID="5745961671592323669" Title="موازی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>232.17519899423246</Left>
      <Top>944.85165040299319</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4770762682474413495</ID>
      <zIndex>51</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>5</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5364999731532273803" SuccessExecute="5178622284301500989" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,$StatusID☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4770762682474413495" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>893.9673295454545</Left>
      <Top>2235.3082386363644</Top>
      <Width>128.84333333333333</Width>
      <Height>NaN</Height>
      <ID>5266308649884482765</ID>
      <zIndex>52</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5013803809003146916" SuccessExecute="5121250817330473848" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetFirstRefer_QuestionAnswer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;FirstReferID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5639443057853924965&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5266308649884482765" Title="پیدا کردن پشتیبان سامانه سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>717.48722088398586</Left>
      <Top>2820.5366849670554</Top>
      <Width>157.58666666666662</Width>
      <Height>NaN</Height>
      <ID>4992885876247864781</ID>
      <zIndex>55</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4838605854342166465☼true☼☼5042047635546793339☼0☼4838605854342166465☼false☼," Permission="5627111493590920407" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="4992885876247864781" Title="مشاهده نتیجه نهایی درخواست توسط کاربر سامانه سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1487.3098388952835</Left>
      <Top>1397.5192195644074</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4754359725994327484</ID>
      <zIndex>59</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5207404439679418917" SuccessExecute="4804250203125168999" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetQuestionReferDetails_frm21041 @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5008597864531390565&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Attachment&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4749049630855314398&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;AttachmentTilte&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5248515133110302934&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4754359725994327484" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>901.73131221237645</Left>
      <Top>2958.5750259545289</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5107383616337365724</ID>
      <zIndex>62</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>JoinConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCJoinActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCJoinActivity&gt;</Content>
      <DataContext>&lt;TZJoinActivity ExitCondition="5198703854626563497" Description="" ID="5107383616337365724" Title="همگرایی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>911.984975427779</Left>
      <Top>780.04099099099119</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5584769963438550243</ID>
      <zIndex>65</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5275130336275928631" SuccessExecute="5735835823890701636" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5584769963438550243" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>897.61363636363785</Left>
      <Top>2017.2787132352937</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4670963591703013812</ID>
      <zIndex>66</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5418592112458785551" SuccessExecute="5389018005799768871" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetQuestionReferDetails_frm21041 @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5008597864531390565&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Attachment&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4749049630855314398&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;AttachmentTilte&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5248515133110302934&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4670963591703013812" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>744.70588577912429</Left>
      <Top>2694.5484472049693</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5298529172830865861</ID>
      <zIndex>69</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5416478939695113504" SuccessExecute="5595023352378722396" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5298529172830865861" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1060.7058857791244</Left>
      <Top>2692.5484472049693</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5055565066443855289</ID>
      <zIndex>72</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5392935750087509879" SuccessExecute="4828607747795174437" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5055565066443855289" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1484.9084174246939</Left>
      <Top>1160.7889535340833</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5619704170837597416</ID>
      <zIndex>75</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5332403289093025475" SuccessExecute="5660104099779986192" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5619704170837597416" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1484.8862567811941</Left>
      <Top>1050.5877034358048</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5104210001984538360</ID>
      <zIndex>78</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4871424703789135820" SuccessExecute="4785085212647387816" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1510☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5104210001984538360" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1063.5571428571434</Left>
      <Top>2564.7142857142858</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5339819734454359695</ID>
      <zIndex>81</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4738492993050271357" SuccessExecute="5674200616183191492" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1510☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5339819734454359695" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>754.55714285714339</Left>
      <Top>2567.7142857142858</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5278376508287612305</ID>
      <zIndex>84</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4687011683029553499" SuccessExecute="4842839144750521174" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1511☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5278376508287612305" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>287.76937046004923</Left>
      <Top>3544.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4815901315475223242</ID>
      <zIndex>87</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="4815901315475223242" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>93.013518966909714</Left>
      <Top>3546.3093220338992</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4704799026601478347</ID>
      <zIndex>88</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="4704799026601478347" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>418.45315578007217</Left>
      <Top>2519.4374774489816</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5115720641574310845</ID>
      <zIndex>89</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4646506181333072519" SuccessExecute="5223090153873205128" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetQuestionReferDetails_frm21041 @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5008597864531390565&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Attachment&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4749049630855314398&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;AttachmentTilte&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5248515133110302934&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5115720641574310845" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>420.97871376811588</Left>
      <Top>603.97803442028987</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5189651015325098723</ID>
      <zIndex>91</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4914541351968121389" SuccessExecute="5297077507165535026" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_cu_SelectWxpertByMainSubject_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5259953627560440632&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5189651015325098723" Title="GetExpert" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>673.18334694311136</Left>
      <Top>805.01351351351354</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5285061181035697002</ID>
      <zIndex>92</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4749498047978144212" SuccessExecute="5663243833641302468" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_cu_SelectWxpertByMainSubject_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5259953627560440632&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4755973138899128644&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5285061181035697002" Title="GetExpert" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>636.05180701282507</Left>
      <Top>1808.4500044839035</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4759343114811969265</ID>
      <zIndex>94</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5093828666556037765" SuccessExecute="5140170443891504849" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1554☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4759343114811969265" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>638.67726467468447</Left>
      <Top>1912.6324400473256</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5269871589935450743</ID>
      <zIndex>95</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartWorkflowActivityConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartWorkflowActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCStartWorkflowActivity&gt;</Content>
      <DataContext>&lt;TZStartWorkflowActivity Value="&amp;lt;Root&amp;gt;&amp;#xA;  &amp;lt;WorkflowId&amp;gt;157&amp;lt;/WorkflowId&amp;gt;&amp;#xA;  &amp;lt;WorkflowParameterId&amp;gt;0&amp;lt;/WorkflowParameterId&amp;gt;&amp;#xA;  &amp;lt;PublicParameters&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;PL_WFID&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;5311466814460847608&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;@WorkflowInstanceId&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;BigInt&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;-1&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;  &amp;lt;/PublicParameters&amp;gt;&amp;#xA;&amp;lt;/Root&amp;gt;" IsContinue="True" IsAutomatic="True" SuccessExecute="4737134651675439399" FailedExecute="4954207834171404113" Description="" ID="5269871589935450743" Title="شروع زیر فراِیند پشتیبانی تذرو افزار" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>637.59806179821089</Left>
      <Top>2131.7159107762468</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5643618019361205468</ID>
      <zIndex>97</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4995169893956383883" SuccessExecute="5672690477047930684" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1560☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5643618019361205468" Title="درج اتمام تیکت" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>99.948392618327034</Left>
      <Top>2614.5178010940731</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5498317292194614929</ID>
      <zIndex>98</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4689053689716037012" SuccessExecute="5467931880747666300" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1554☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5498317292194614929" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>99.014528246288592</Left>
      <Top>2723.0070408825013</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5114583902507171422</ID>
      <zIndex>99</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>StartWorkflowActivityConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCStartWorkflowActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCStartWorkflowActivity&gt;</Content>
      <DataContext>&lt;TZStartWorkflowActivity Value="&amp;lt;Root&amp;gt;&amp;#xA;  &amp;lt;WorkflowId&amp;gt;157&amp;lt;/WorkflowId&amp;gt;&amp;#xA;  &amp;lt;WorkflowParameterId&amp;gt;0&amp;lt;/WorkflowParameterId&amp;gt;&amp;#xA;  &amp;lt;PublicParameters&amp;gt;&amp;#xA;    &amp;lt;PublicParameter&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;PL_WFID&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;ParameterId&amp;gt;5311466814460847608&amp;lt;/ParameterId&amp;gt;&amp;#xA;      &amp;lt;Value&amp;gt;@WorkflowInstanceId&amp;lt;/Value&amp;gt;&amp;#xA;      &amp;lt;ParameterType&amp;gt;BigInt&amp;lt;/ParameterType&amp;gt;&amp;#xA;      &amp;lt;AccessKind&amp;gt;Private&amp;lt;/AccessKind&amp;gt;&amp;#xA;      &amp;lt;DefaultValue&amp;gt;-1&amp;lt;/DefaultValue&amp;gt;&amp;#xA;    &amp;lt;/PublicParameter&amp;gt;&amp;#xA;  &amp;lt;/PublicParameters&amp;gt;&amp;#xA;&amp;lt;/Root&amp;gt;" IsContinue="True" IsAutomatic="True" SuccessExecute="5495557724778916256" FailedExecute="5340308654688368337" Description="" ID="5114583902507171422" Title="شروع زیر فراِیند پشتیبانی تذرو افزار" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>103.71670586600794</Left>
      <Top>2949.2752328101451</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5618240044106389737</ID>
      <zIndex>102</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5753887089304062363" SuccessExecute="4727006717591355663" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1560☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5618240044106389737" Title="درج اتمام تیکت" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>230.38811102923114</Left>
      <Top>1050.2711864406779</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4855161686984350557</ID>
      <zIndex>103</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5379649203982755138" SuccessExecute="5092178921443328702" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_InsertIntoQuestionRefer_SaoAnswer $FinalDesSecond,$ResultSecond,$SecondReferID,@WorkflowInstanceId,$IsAutomat,$AttachmentSecond☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4855161686984350557" Title="درج در questionRefer" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>154.33977754237276</Left>
      <Top>1396.2372881355934</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4691537069502571604</ID>
      <zIndex>105</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5449833878948113335" SuccessExecute="5739410998256115516" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_CheckReferType_SaoAnswer @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5381315451910707650&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4691537069502571604" Title="SelectReferType" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>152.71265889830511</Left>
      <Top>1502.1355932203389</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4885767263008986889</ID>
      <zIndex>106</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$ExpertID == -1" FalseCondition="5381478036622543736" TrueCondition="4981980760912044531" Description="" ID="4885767263008986889" Title="شرط" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>239.72881355932168</Left>
      <Top>1818.1022329835894</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4780690261883765166</ID>
      <zIndex>109</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5369923185081225464" SuccessExecute="4943519304785951526" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1571☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4780690261883765166" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>243.27118644067787</Left>
      <Top>1925.2477445968989</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5292191757363494855</ID>
      <zIndex>110</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5030418250571642042" SuccessExecute="5233197817035527291" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_TaskName_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME1&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME2&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4683807795276323147&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME3&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME4&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TASKNAME5&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;-1&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5292191757363494855" Title="TaskName" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>225.76271186440636</Left>
      <Top>2032.743884940347</Top>
      <Width>142.27000000000004</Width>
      <Height>NaN</Height>
      <ID>5325114414053339885</ID>
      <zIndex>113</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4758356032329010723☼true☼☼5042047635546793339☼0☼-1☼false☼," Permission="4921597879240552456" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5325114414053339885" Title="بررسی درخواست ارجاع داده شده سامانه به ادارات سازمان امور دانشجویان " BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1064.447299196916</Left>
      <Top>1089.0487019952793</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4879776166545765439</ID>
      <zIndex>115</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5267789107781368275" SuccessExecute="4871303422262120587" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_SelectEmailText_SaoSupport $PL_PortalUserID☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TextMessage&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5283929832899489863&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4879776166545765439" Title="SelectTextData" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1062.751302250932</Left>
      <Top>1200.3429352331873</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5434119298241760436</ID>
      <zIndex>116</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$MobileNumber" Body="$TextMessage" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$MobileNumber&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$TextMessage&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="5268591451256238558" SuccessCondition="4919267437231474284" Description="" ID="5434119298241760436" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1060.9850214127882</Left>
      <Top>1322.343129132887</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5439006806990558238</ID>
      <zIndex>119</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EmailConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendMailActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendMailActivity&gt;</Content>
      <DataContext>&lt;TZSendMailActivity To="$Email" CC="" BCC="" Subject="بررسی درخواست پشتیبانی سامانه سجاد با کد پیگیری $FollowUpCode" AttachmentsID="" Body=" متقاضي گرامي درخواست شما بررسي گرديد نتيجه درخواست برابر است با: $FinalDescript" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$Email&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Subject&amp;gt;بررسی درخواست پشتیبانی سامانه سجاد با کد پیگیری $FollowUpCode&amp;lt;/Subject&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;CC&amp;gt;&amp;lt;/CC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;BCC&amp;gt;&amp;lt;/BCC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt; متقاضي گرامي درخواست شما بررسي گرديد نتيجه درخواست برابر است با: $FinalDescript&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;AttachmentsID&amp;gt;&amp;lt;/AttachmentsID&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;EmailAccountId&amp;gt;&amp;lt;/EmailAccountId&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions&amp;gt;&amp;#xD;&amp;#xA;    &amp;lt;PermissionId&amp;gt;4705316877560878449&amp;lt;/PermissionId&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;/Permmissions&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="5537946835329092126" SuccessCondition="5203560539260422201" Description="" ID="5439006806990558238" Title="پست الکترونیک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1061.706105790799</Left>
      <Top>969.96869392613257</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4929154375250997349</ID>
      <zIndex>122</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5731698657902413569" SuccessExecute="5065647182081478496" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetQuestionReferDetails_frm21041 @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5008597864531390565&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Attachment&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4749049630855314398&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;AttachmentTilte&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5248515133110302934&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4929154375250997349" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>414.67107091972252</Left>
      <Top>2629.4940999785445</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4679648670566512511</ID>
      <zIndex>123</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5408633014857341912" SuccessExecute="5162794018895763616" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_SelectEmailText_SaoSupport $PL_PortalUserID☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;TextMessage&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5283929832899489863&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4679648670566512511" Title="SelectTextData" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>412.61227629083794</Left>
      <Top>2740.29895325507</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5407822482687002080</ID>
      <zIndex>128</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$MobileNumber" Body="$TextMessage" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$MobileNumber&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$TextMessage&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="5107641066185665137" SuccessCondition="5757295191972070254" Description="" ID="5407822482687002080" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>410.10130547200311</Left>
      <Top>2847.1571175473905</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5196530943346596456</ID>
      <zIndex>131</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EmailConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendMailActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendMailActivity&gt;</Content>
      <DataContext>&lt;TZSendMailActivity To="$Email" CC="" BCC="" Subject="بررسی درخواست پشتیبانی سامانه سجاد با کد پیگیری $FollowUpCode" AttachmentsID="" Body=" متقاضي گرامي درخواست شما بررسي گرديد نتيجه درخواست برابر است با: $FinalDescript" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$Email&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Subject&amp;gt;بررسی درخواست پشتیبانی سامانه سجاد با کد پیگیری $FollowUpCode&amp;lt;/Subject&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;CC&amp;gt;&amp;lt;/CC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;BCC&amp;gt;&amp;lt;/BCC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt; متقاضي گرامي درخواست شما بررسي گرديد نتيجه درخواست برابر است با: $FinalDescript&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;AttachmentsID&amp;gt;&amp;lt;/AttachmentsID&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;EmailAccountId&amp;gt;&amp;lt;/EmailAccountId&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions&amp;gt;&amp;#xD;&amp;#xA;    &amp;lt;PermissionId&amp;gt;4705316877560878449&amp;lt;/PermissionId&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;/Permmissions&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="4702056224115520037" SuccessCondition="5224110876645206837" Description="" ID="5196530943346596456" Title="پست الکترونیک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>671.57112312620825</Left>
      <Top>911.96282723401407</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5665864811938951239</ID>
      <zIndex>137</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="4961725366564722661" SuccessExecute="4737109724749103861" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼EXEC Sp_Cu_getMainSubject_ByQuestionAnswer @WorkflowInstanceId,$PL_PortalLogID☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;fosSideshow&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5074393740122216236&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;UserName&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5416544190251967166&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;fosmobile&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5402886700803850317&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileRes&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5181265043090875979&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;fosemail&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5637692892908518925&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;EmailRes&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5491170038842798723&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5665864811938951239" Title="GetMainsubject" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>669.82774299723542</Left>
      <Top>1025.213179280976</Top>
      <Width>NaN</Width>
      <Height>80</Height>
      <ID>4850891310934175052</ID>
      <zIndex>139</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$SideShow == 5" FalseCondition="5415496456400713378" TrueCondition="5005516578786031452" Description="" ID="4850891310934175052" Title="?ResetPassword" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1074.4143126177023</Left>
      <Top>1771.7325800376648</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4762888134799951694</ID>
      <zIndex>141</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ServiceConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>6</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCServiceActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCServiceActivity&gt;</Content>
      <DataContext>&lt;TZServiceActivity Default="&amp;lt;Root&amp;gt;&amp;#xA;  &amp;lt;WebServiceAddress&amp;gt;http://172.50.0.60/SAOInternalServices/ImportExcelFile.asmx?op=ImportUniEduExcelFile&amp;lt;/WebServiceAddress&amp;gt;&amp;#xA;  &amp;lt;AssignTo&amp;gt;-1&amp;lt;/AssignTo&amp;gt;&amp;#xA;  &amp;lt;Methods&amp;gt;&amp;#xA;    &amp;lt;Method&amp;gt;&amp;#xA;      &amp;lt;Name&amp;gt;PortalResetPassword&amp;lt;/Name&amp;gt;&amp;#xA;      &amp;lt;IsDefault&amp;gt;true&amp;lt;/IsDefault&amp;gt;&amp;#xA;      &amp;lt;Arguments&amp;gt;&amp;#xA;        &amp;lt;Argument&amp;gt;&amp;#xA;          &amp;lt;Name&amp;gt;emailAddress&amp;lt;/Name&amp;gt;&amp;#xA;          &amp;lt;ArgumentType&amp;gt;System.String&amp;lt;/ArgumentType&amp;gt;&amp;#xA;          &amp;lt;Value&amp;gt;$PortalUserName&amp;lt;/Value&amp;gt;&amp;#xA;        &amp;lt;/Argument&amp;gt;&amp;#xA;      &amp;lt;/Arguments&amp;gt;&amp;#xA;    &amp;lt;/Method&amp;gt;&amp;#xA;  &amp;lt;/Methods&amp;gt;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedExecute="5745158642202750361" SuccessExecute="5102899312318289071" Description="" ID="4762888134799951694" Title="سرویس" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1279.7335216572503</Left>
      <Top>2594.02573760201</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5286980171096020355</ID>
      <zIndex>142</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="5286980171096020355" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1140.3163841807918</Left>
      <Top>1596.8524795982423</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4665043229069601680</ID>
      <zIndex>140</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼-1☼false☼☼0☼0☼0☼false☼," Permission="5707197081783210608" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="" Description="" ID="4665043229069601680" Title="تصمیم گیری" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>669.78818772946443</Left>
      <Top>1260</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5099313230308642538</ID>
      <zIndex>144</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>WaitConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCWaitActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCWaitActivity&gt;</Content>
      <DataContext>&lt;TZWaitActivity Value="Radio2☼15☼wf_Min" Description="" ID="5099313230308642538" Title="انتظار" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>876.78818772946443</Left>
      <Top>1048.485747303544</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4964570722228573170</ID>
      <zIndex>145</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$EmailRes == true" FalseCondition="5124872320286503892" TrueCondition="4845162227299160914" Description="" ID="4964570722228573170" Title="ایمیل" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>879.78818772946443</Left>
      <Top>1169</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5565252718209581563</ID>
      <zIndex>146</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EmailConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendMailActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendMailActivity&gt;</Content>
      <DataContext>&lt;TZSendMailActivity To="$EmailReset" CC="" BCC="" Subject="بازیابی رمز عبور " AttachmentsID="" Body="کاربر گرامي سامانه سجاد، پيرو درخواست شما در اين سامانه، کلمه عبور شما تغيير يافت. با نام کاربري کد ملي و رمز عبور 12345678 مي توانيد وارد سيستم شويد. در صورت نياز، از قسمت ويرايش پروفايل نسبت به تغيير شماره همراه ثبت شده در سامانه اقدام نماييد." EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$EmailReset&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Subject&amp;gt;بازیابی رمز عبور &amp;lt;/Subject&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;CC&amp;gt;&amp;lt;/CC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;BCC&amp;gt;&amp;lt;/BCC&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;کاربر گرامي سامانه سجاد، پيرو درخواست شما در اين سامانه، کلمه عبور شما تغيير يافت. با نام کاربري کد ملي و رمز عبور 12345678 مي توانيد وارد سيستم شويد. در صورت نياز، از قسمت ويرايش پروفايل نسبت به تغيير شماره همراه ثبت شده در سامانه اقدام نماييد.&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;AttachmentsID&amp;gt;&amp;lt;/AttachmentsID&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;EmailAccountId&amp;gt;&amp;lt;/EmailAccountId&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="5567750467280353007" SuccessCondition="4897643664769848473" Description="" ID="5565252718209581563" Title="پست الکترونیک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>874.78818772946443</Left>
      <Top>1399</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5122564908230475032</ID>
      <zIndex>147</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$MobileReset" Body="کاربر گرامي سامانه سجاد، پيرو درخواست شما در اين سامانه، کلمه عبور شما تغيير يافت. با نام کاربري کد ملي و رمز عبور 12345678 مي توانيد وارد سيستم شويد. در صورت نياز، از قسمت ويرايش پروفايل نسبت به تغيير شماره همراه ثبت شده در سامانه اقدام نماييد." EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$MobileReset&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;کاربر گرامي سامانه سجاد، پيرو درخواست شما در اين سامانه، کلمه عبور شما تغيير يافت. با نام کاربري کد ملي و رمز عبور 12345678 مي توانيد وارد سيستم شويد. در صورت نياز، از قسمت ويرايش پروفايل نسبت به تغيير شماره همراه ثبت شده در سامانه اقدام نماييد.&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="5011865060222762411" SuccessCondition="4983642074329590931" Description="" ID="5122564908230475032" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>873.78818772946443</Left>
      <Top>1291</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5062801922170816519</ID>
      <zIndex>148</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>5</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$MobileRes == true" FalseCondition="5155048454709208598" TrueCondition="4872290177681070924" Description="" ID="5062801922170816519" Title="پیامک؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1076.2407407407409</Left>
      <Top>1889.3736538880198</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5623973085900822712</ID>
      <zIndex>161</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5741020508027397269" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_UpdatePassForPortalUser_Frm20661 $PortalUserName☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5623973085900822712" Title="ADO" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1290.1704019404028</Left>
      <Top>1251</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4791655403373269591</ID>
      <zIndex>163</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$RegisteredUser==59853" FalseCondition="5752964818673032057" TrueCondition="4919713433415299997" Description="" ID="4791655403373269591" Title="کاربر مرکز تماس" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>571.17040194040294</Left>
      <Top>2468</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4993045018730173055</ID>
      <zIndex>166</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$RegisteredUser==59853" FalseCondition="5047962150635819920" TrueCondition="4980176302785248482" Description="" ID="4993045018730173055" Title="کاربر مرکز تماس" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1456.9372306729815</Left>
      <Top>3435.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4652769508339853640</ID>
      <zIndex>168</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5303604085766499262" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_GetSMSTextAndMobileNO_Survey $PL_PortalUserID,@WorkflowId,@WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SMSText&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4826554401727306362&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileNO&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5300361362913226832&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="4652769508339853640" Title="لینک نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1467.1704019404028</Left>
      <Top>3325.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5166716401783958103</ID>
      <zIndex>169</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsSurvey==true" FalseCondition="5440918738676200812" TrueCondition="5573254695394679644" Description="" ID="5166716401783958103" Title="ارسال گردد؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1495.1704019404028</Left>
      <Top>3218.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5497091488868967879</ID>
      <zIndex>170</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>7</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5019786668416607131" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetData_Tbl_CU_Survey_ActiveService @WorkflowId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Res&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4926767464341374231&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5497091488868967879" Title="بررسی نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1457.1704019404028</Left>
      <Top>3552.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5148196714002621267</ID>
      <zIndex>171</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$AppMobile" Body="$SurveyText" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$AppMobile&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$SurveyText&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="0" SuccessCondition="5352545263158006297" Description="" ID="5148196714002621267" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>98.170401940402826</Left>
      <Top>3098.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5063301051687647965</ID>
      <zIndex>172</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5034858452306341789" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetData_Tbl_CU_Survey_ActiveService @WorkflowId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Res&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4926767464341374231&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5063301051687647965" Title="بررسی نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>268.42747054747224</Left>
      <Top>3073.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5650666589796262347</ID>
      <zIndex>173</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5396595816734747903" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetData_Tbl_CU_Survey_ActiveService @WorkflowId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Res&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4926767464341374231&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5650666589796262347" Title="بررسی نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1102.1704019404028</Left>
      <Top>2132.54449437209</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5004814135001212382</ID>
      <zIndex>174</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5559072422113497816" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_GetData_Tbl_CU_Survey_ActiveService @WorkflowId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Res&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4926767464341374231&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5004814135001212382" Title="بررسی نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>88.170401940402826</Left>
      <Top>3205.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5567215101742416508</ID>
      <zIndex>175</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsSurvey==true" FalseCondition="5364594260443108740" TrueCondition="5180418036184468551" Description="" ID="5567215101742416508" Title="ارسال گردد؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>274.17040194040283</Left>
      <Top>3190.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5296387129021651963</ID>
      <zIndex>176</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsSurvey==true" FalseCondition="5673699499109909721" TrueCondition="5235000870245212265" Description="" ID="5296387129021651963" Title="ارسال گردد؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1255.1704019404028</Left>
      <Top>2255.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5216916326269152624</ID>
      <zIndex>177</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$IsSurvey==true" FalseCondition="5539919198993883938" TrueCondition="4819792848141416660" Description="" ID="5216916326269152624" Title="ارسال گردد؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>80.937230672981514</Left>
      <Top>3313.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5440186918469079659</ID>
      <zIndex>178</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5701710247666733795" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_GetSMSTextAndMobileNO_Survey $PL_PortalUserID,@WorkflowId,@WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SMSText&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4826554401727306362&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileNO&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5300361362913226832&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5440186918469079659" Title="لینک نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>262.93723067298151</Left>
      <Top>3303.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5658028149739277229</ID>
      <zIndex>179</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="4731536617929247245" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_GetSMSTextAndMobileNO_Survey $PL_PortalUserID,@WorkflowId,@WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SMSText&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4826554401727306362&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileNO&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5300361362913226832&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5658028149739277229" Title="لینک نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1257.9372306729815</Left>
      <Top>2482.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5625766007388430366</ID>
      <zIndex>180</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5089061033479068057" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_GetSMSTextAndMobileNO_Survey $PL_PortalUserID,@WorkflowId,@WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SMSText&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4826554401727306362&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;MobileNO&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5300361362913226832&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5625766007388430366" Title="لینک نظرسنجی" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>76.170401940402826</Left>
      <Top>3423.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4954346896474870712</ID>
      <zIndex>181</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$AppMobile" Body="$SurveyText" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$AppMobile&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$SurveyText&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="0" SuccessCondition="5453508394017562257" Description="" ID="4954346896474870712" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>266.08373527373624</Left>
      <Top>3430.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5402399780784269949</ID>
      <zIndex>182</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$AppMobile" Body="$SurveyText" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$AppMobile&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$SurveyText&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="0" SuccessCondition="5480600912945864551" Description="" ID="5402399780784269949" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1254.1704019404028</Left>
      <Top>2372.5597601633094</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5676384835005747597</ID>
      <zIndex>183</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>SMSConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCSendSMSActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCSendSMSActivity&gt;</Content>
      <DataContext>&lt;TZSendSMSActivity To="$AppMobile" Body="$SurveyText" EmailValue="&amp;lt;Root&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;TO&amp;gt;$AppMobile&amp;lt;/TO&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Body&amp;gt;$SurveyText&amp;lt;/Body&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;SenderProviderNumber&amp;gt;&amp;lt;/SenderProviderNumber&amp;gt;&amp;#xD;&amp;#xA;  &amp;lt;Permmissions /&amp;gt;&amp;#xD;&amp;#xA;&amp;lt;/Root&amp;gt;" FailedCondition="0" SuccessCondition="5179477039405698243" Description="" ID="5676384835005747597" Title="پیامک" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1458.1693536883879</Left>
      <Top>465.87711148648646</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5430818956966307071</ID>
      <zIndex>213</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5757343143941297459" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼SP_CU_checkEmty_Descript_Tbl_CU_SaoSajadSupoort_Portal @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5124646284842754215&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5430818956966307071" Title="متن خالی ؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1410.3363202473383</Left>
      <Top>606.75675675675677</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5043876278556955928</ID>
      <zIndex>214</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition=" $descriptemty==true" FalseCondition="4745892831978487132" TrueCondition="4820866586012627477" Description="" ID="5043876278556955928" Title="شرط" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1275.7626813910904</Left>
      <Top>742</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5377314205876849660</ID>
      <zIndex>216</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>EndConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>1</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCEndActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCEndActivity&gt;</Content>
      <DataContext>&lt;TZEndActivity Description="" ID="5377314205876849660" Title="پایان" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>1488.9882513727712</Left>
      <Top>328.40540540540542</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4906336203136839137</ID>
      <zIndex>235</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5019600208951688451" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_Update_WFID_Tbl_CU_QuestionAnswer @WorkflowInstanceId, $PortalID☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4906336203136839137" Title="ADO" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>350</Left>
      <Top>786</Top>
      <Width>178.97000000000003</Width>
      <Height>NaN</Height>
      <ID>4981242400227183039</ID>
      <zIndex>239</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼4758356032329010723☼true☼☼0☼0☼-1☼false☼," Permission="4965599692467491054" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="4981242400227183039" Title="بررسی گروهی درخواست پشتیبانی سامانه سجاد" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>310.7253170289855</Left>
      <Top>698.36231884057986</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4803612339895948588</ID>
      <zIndex>240</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$ExpertGroupID==0" FalseCondition="4920621543089916662" TrueCondition="5598879358681467181" Description="" ID="4803612339895948588" Title="فردی؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>416</Left>
      <Top>915.50847457627128</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4894579617628947937</ID>
      <zIndex>242</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5025808440799396744" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec SP_CU_Update_ExpertUserID_Sajad @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4894579617628947937" Title="UpdateExpertID" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>650.06898783603731</Left>
      <Top>329.31790418135557</Top>
      <Width>110</Width>
      <Height>NaN</Height>
      <ID>5012698392437218490</ID>
      <zIndex>243</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼5036251028853039277☼true☼☼0☼0☼-1☼false☼," Permission="5742634669489320799" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5012698392437218490" Title="بررسی کاربر مشاهده کننده فرایند " BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>886.29088397424186</Left>
      <Top>312.56581541240951</Top>
      <Width>110</Width>
      <Height>NaN</Height>
      <ID>5669317155888546760</ID>
      <zIndex>244</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>2</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼5036251028853039277☼true☼☼0☼0☼-1☼false☼," Permission="5160115988394170729" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5669317155888546760" Title="بررسی گروه مشاهده کننده فرایند " BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>888.44960181026568</Left>
      <Top>613.37163801144561</Top>
      <Width>110</Width>
      <Height>NaN</Height>
      <ID>4677496980118159382</ID>
      <zIndex>245</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$ProblemTypeSub == 6" FalseCondition="5437396425313240876" TrueCondition="5281662883028853445" Description="" ID="4677496980118159382" Title="پیگیری پاسخ؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>721.9386199021427</Left>
      <Top>189.02911309891306</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4665298132433073492</ID>
      <zIndex>246</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$ObservorGroupID == 0" FalseCondition="4774678640932318970" TrueCondition="4686230521864238593" Description="" ID="4665298132433073492" Title="فردی؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>690.7558897558207</Left>
      <Top>68.45818561745233</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5525164813200396850</ID>
      <zIndex>248</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="-1" SuccessExecute="5423880364358011608" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_cu_SelectObservors_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ObservorID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4795628834089293376&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ObservorGroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4738786755895736067&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5525164813200396850" Title="GetExpert" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>670.56408898305108</Left>
      <Top>495.41949152542395</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5613702900178556427</ID>
      <zIndex>254</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5302493779161152393" SuccessExecute="5254198727664181009" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_InsertIntoQuestionRefer_IT_Observor @WorkflowInstanceId, $SecondReferID, $IsAutomat, $SendResult ,&amp;#xA;$DesiredUnit, $ReferralToUniversity, $ResultSecond, $SendToTazarv, $cmbDesiredOffice, $ExpertID,&amp;#xA;$InstitudeID, $UniversityID, $DescriptionInfo, $ReferedGroup☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5613702900178556427" Title="درج در questionReferObsIT" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>569.54687500000034</Left>
      <Top>638.840650954528</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5459783580603522277</ID>
      <zIndex>264</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5560964609827743998" SuccessExecute="5596747008357165667" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼Sp_Cu_GetValues_From_SaoSupportResult_Log @WorkflowInstanceId  ,$AttachmentSecond ,$IsAutomat&amp;#xA;&amp;#xA;☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendResult&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5500185179236591797&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;DesiredOffice&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5199522934282053140&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OtherOrg&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5416730154019680888&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4704085124094693244&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OrganizationId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OfficeId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendToTazarv&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5611201786585541136&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5214259940558917971&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;InstitudeID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5652333981498134328&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;UniversityID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4832702164274059749&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5374546887164210331&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5459783580603522277" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>278.00715042372872</Left>
      <Top>512.29377595452786</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4763571614905572924</ID>
      <zIndex>268</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>IFConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCIfActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" Width="100" Height="70" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCIfActivity&gt;</Content>
      <DataContext>&lt;TZIfActivity Condition="$ProblemType==10" FalseCondition="5560214495249487245" TrueCondition="4964792067306685959" Description="" ID="4763571614905572924" Title="مشکل فنی؟" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>151.578125</Left>
      <Top>63.359375</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5198528486338176756</ID>
      <zIndex>269</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5538635489968845489" SuccessExecute="5716149561716591357" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_cu_Select_ITExpert_SaoSupport @WorkflowInstanceId☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ITExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5129605007391441647&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5198528486338176756" Title="GetITExpert" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>169.65625</Left>
      <Top>231.625</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5625006272480608290</ID>
      <zIndex>270</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>HumanConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCHumanActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCHumanActivity&gt;</Content>
      <DataContext>&lt;TZHumanActivity CallTransfer="" StartNewWorkflow="-1" StartNewWorkflowList="" FormsId="21041☼5036251028853039277☼true☼☼0☼0☼-1☼False☼," Permission="4886420678401213831" HumanActivityAlarm="" HumanActivityCriticalTime="" HelpLink="" CanUserSave="True" ShowSaveMessage="True" TaskNameVariable="$TaskName" Description="" ID="5625006272480608290" Title="بررسی کارشناس IT" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>155.75</Left>
      <Top>348.43750000000006</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>4699222351407838693</ID>
      <zIndex>273</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5040996386001104846" SuccessExecute="5227597064118650544" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_InsertIntoQuestionRefer_IT_Observor @WorkflowInstanceId, $SecondReferID, $IsAutomat, $SendResult ,&amp;#xA;$DesiredUnit, $ReferralToUniversity, $ResultSecond, $SendToTazarv, $cmbDesiredOffice, $ExpertID,&amp;#xA;$InstitudeID, $UniversityID, $DescriptionInfo, $ReferedGroup☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="4699222351407838693" Title="درج در questionReferObsIT" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem></BPMS_designerItem>
      <BPMS_designerItemName></BPMS_designerItemName>
      <Left>91.66340042372849</Left>
      <Top>589.01562499999977</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5251715737943645581</ID>
      <zIndex>274</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>4</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity DesignerItemStatuseStatus="None" SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5562932731826008095" SuccessExecute="5450044623052244987" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼Sp_Cu_GetValues_From_SaoSupportResult_Log @WorkflowInstanceId  ,$AttachmentSecond ,$IsAutomat&amp;#xA;&amp;#xA;☼-1☼&amp;lt;MapResultQueries&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendResult&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5500185179236591797&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;DesiredOffice&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5199522934282053140&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OtherOrg&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5416730154019680888&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Result&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4704085124094693244&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OrganizationId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;OfficeId&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5751908769220014798&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;SendToTazarv&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5611201786585541136&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;ExpertID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5214259940558917971&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;Des&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5573052384747355346&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;InstitudeID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5652333981498134328&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;UniversityID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;4832702164274059749&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;  &amp;lt;MapResultQuery&amp;gt;&amp;#xA;    &amp;lt;ColumnName&amp;gt;GroupID&amp;lt;/ColumnName&amp;gt;&amp;#xA;    &amp;lt;ParamterId&amp;gt;5374546887164210331&amp;lt;/ParamterId&amp;gt;&amp;#xA;  &amp;lt;/MapResultQuery&amp;gt;&amp;#xA;&amp;lt;/MapResultQueries&amp;gt;☼System.Data.SqlClient" Description="" ID="5251715737943645581" Title="دریافت اطلاعات" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
    <DesignerItem>
      <BPMS_designerItem> </BPMS_designerItem>
      <BPMS_designerItemName> </BPMS_designerItemName>
      <Left>899.396000091018</Left>
      <Top>95.343749999999943</Top>
      <Width>NaN</Width>
      <Height>NaN</Height>
      <ID>5222424946461512596</ID>
      <zIndex>310</zIndex>
      <IsGroup>false</IsGroup>
      <ParentID>0</ParentID>
      <TemplateName>ADOConnectorDecoratorTemplate</TemplateName>
      <ConnectionNumber>3</ConnectionNumber>
      <ConnectionOrientation>None</ConnectionOrientation>
      <IsFirstActivity>false</IsFirstActivity>
      <Content>&lt;TZUCADOActivity SmallImage="{x:Null}" OverSmallImage="{x:Null}" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:av="http://schemas.microsoft.com/winfx/2006/xaml/presentation"&gt;&lt;av:Grid Width="100" Height="70" /&gt;&lt;/TZUCADOActivity&gt;</Content>
      <DataContext>&lt;TZADOActivity FailedExecute="5704786895356024459" SuccessExecute="5703066074903660697" ParameterId="-1" ConnectionString="SAODB" ProviderName="System.Data.SqlClient" Command="SAODB☼exec Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG @WorkflowInstanceId,1918☼-1☼&amp;lt;MapResultQueries /&amp;gt;☼System.Data.SqlClient" Description="" ID="5222424946461512596" Title="درج در جدول" BusinessActivity="" xmlns="clr-namespace:ITS.Workflow.Activities;assembly=ITS.Workflow.Activities" /&gt;</DataContext>
    </DesignerItem>
  </DesignerItems>
  <Connections>
    <Connection>
      <SourceID>5015567563898775859</SourceID>
      <SinkID>5753723988987375715</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>11</zIndex>
      <ConnectionID>5489065487432949650</ConnectionID>
      <Description></Description>
      <NextActivityId>5468590855009861775</NextActivityId>
      <Title>Manual</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5139831927998754475</SourceID>
      <SinkID>4625338406536221786</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>2</zIndex>
      <ConnectionID>4897886659626279216</ConnectionID>
      <Description></Description>
      <NextActivityId>4625338406536221786</NextActivityId>
      <Title>ناموفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5139831927998754475</SourceID>
      <SinkID>4625338406536221786</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>1</zIndex>
      <ConnectionID>5556839410945849937</ConnectionID>
      <Description></Description>
      <NextActivityId>4625338406536221786</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5015567563898775859</SourceID>
      <SinkID>5139831927998754475</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>305</zIndex>
      <ConnectionID>5723026356553011327</ConnectionID>
      <Description></Description>
      <NextActivityId>5139831927998754475</NextActivityId>
      <Title>Automatic</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5499611259131768463</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>279</zIndex>
      <ConnectionID>5372139286064602524</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5618309099746617127</SourceID>
      <SinkID>4929154375250997349</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>277</zIndex>
      <ConnectionID>4712886821426616060</ConnectionID>
      <Description></Description>
      <NextActivityId>5067084576602818641</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5753723988987375715</SourceID>
      <SinkID>5092028410463335188</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>292</zIndex>
      <ConnectionID>4678443317196619602</ConnectionID>
      <Description></Description>
      <NextActivityId>5092028410463335188</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;4635659206458993792&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;4632295450849452445&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5092028410463335188</SourceID>
      <SinkID>5679989114078456046</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>14</zIndex>
      <ConnectionID>5302282897502089693</ConnectionID>
      <Description></Description>
      <NextActivityId>5679989114078456046</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5092028410463335188</SourceID>
      <SinkID>5679989114078456046</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>15</zIndex>
      <ConnectionID>5342787630494405337</ConnectionID>
      <Description></Description>
      <NextActivityId>5679989114078456046</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5499611259131768463</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>282</zIndex>
      <ConnectionID>5231190641472298660</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4672212668007583093</SourceID>
      <SinkID>4981133139336741470</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>287</zIndex>
      <ConnectionID>4647341610673868784</ConnectionID>
      <Description></Description>
      <NextActivityId>4981133139336741470</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4672212668007583093</SourceID>
      <SinkID>4717078541720909006</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>278</zIndex>
      <ConnectionID>5068219710843932022</ConnectionID>
      <Description></Description>
      <NextActivityId>4717078541720909006</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5684762310484468949</SourceID>
      <SinkID>5163950478719452894</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>19</zIndex>
      <ConnectionID>4719886411628269161</ConnectionID>
      <Description></Description>
      <NextActivityId>5163950478719452894</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5684762310484468949</SourceID>
      <SinkID>5163950478719452894</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>18</zIndex>
      <ConnectionID>4652627495878772376</ConnectionID>
      <Description></Description>
      <NextActivityId>5163950478719452894</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5163950478719452894</SourceID>
      <SinkID>5010713951524064403</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>32</zIndex>
      <ConnectionID>5255683723494859634</ConnectionID>
      <Description></Description>
      <NextActivityId>5206771541047775559</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5163950478719452894</SourceID>
      <SinkID>5010713951524064403</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>31</zIndex>
      <ConnectionID>4842750295539146826</ConnectionID>
      <Description></Description>
      <NextActivityId>5206771541047775559</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4981133139336741470</SourceID>
      <SinkID>4691537069502571604</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>256</zIndex>
      <ConnectionID>5151929746177899511</ConnectionID>
      <Description></Description>
      <NextActivityId>5382260123750824880</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5349566102883827743</SourceID>
      <SinkID>4893967913713061711</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>25</zIndex>
      <ConnectionID>5157828918609520797</ConnectionID>
      <Description></Description>
      <NextActivityId>4893967913713061711</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5349566102883827743</SourceID>
      <SinkID>4893967913713061711</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>26</zIndex>
      <ConnectionID>5684255696953923445</ConnectionID>
      <Description></Description>
      <NextActivityId>4893967913713061711</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4893967913713061711</SourceID>
      <SinkID>5361776556386029805</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>27</zIndex>
      <ConnectionID>4839282841367080620</ConnectionID>
      <Description></Description>
      <NextActivityId>5361776556386029805</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4893967913713061711</SourceID>
      <SinkID>5361776556386029805</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>28</zIndex>
      <ConnectionID>5626710253440176300</ConnectionID>
      <Description></Description>
      <NextActivityId>5361776556386029805</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5361776556386029805</SourceID>
      <SinkID>5079146201392509584</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>29</zIndex>
      <ConnectionID>5443301505954797336</ConnectionID>
      <Description></Description>
      <NextActivityId>5079146201392509584</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5361776556386029805</SourceID>
      <SinkID>5079146201392509584</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>289</zIndex>
      <ConnectionID>4729390916724256608</ConnectionID>
      <Description></Description>
      <NextActivityId>5079146201392509584</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5010713951524064403</SourceID>
      <SinkID>5206771541047775559</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>33</zIndex>
      <ConnectionID>5507395517829462223</ConnectionID>
      <Description></Description>
      <NextActivityId>5206771541047775559</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5010713951524064403</SourceID>
      <SinkID>5206771541047775559</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>34</zIndex>
      <ConnectionID>4848894565645618606</ConnectionID>
      <Description></Description>
      <NextActivityId>5206771541047775559</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5215090122552527259</SourceID>
      <SinkID>4770762682474413495</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>294</zIndex>
      <ConnectionID>4935951212676209281</ConnectionID>
      <Description></Description>
      <NextActivityId>5499611259131768463</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5415861941485941443&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5355033646134273192</SourceID>
      <SinkID>5694342043943880870</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>219</zIndex>
      <ConnectionID>4661941662985861976</ConnectionID>
      <Description></Description>
      <NextActivityId>4624835887466905387</NextActivityId>
      <Title>مشاهده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5079146201392509584</SourceID>
      <SinkID>4874627853814910225</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>114</zIndex>
      <ConnectionID>5170032806609989880</ConnectionID>
      <Description></Description>
      <NextActivityId>4874627853814910225</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5415861941485941443&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4874627853814910225</SourceID>
      <SinkID>4943917596592846603</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>38</zIndex>
      <ConnectionID>5150060103628628923</ConnectionID>
      <Description></Description>
      <NextActivityId>4943917596592846603</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4874627853814910225</SourceID>
      <SinkID>4943917596592846603</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>39</zIndex>
      <ConnectionID>5381837448641267262</ConnectionID>
      <Description></Description>
      <NextActivityId>4943917596592846603</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4943917596592846603</SourceID>
      <SinkID>5041617862714217451</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>42</zIndex>
      <ConnectionID>5343388427725150378</ConnectionID>
      <Description></Description>
      <NextActivityId>5041617862714217451</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4943917596592846603</SourceID>
      <SinkID>4770762682474413495</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>266</zIndex>
      <ConnectionID>4647672263967365986</ConnectionID>
      <Description></Description>
      <NextActivityId>5499611259131768463</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5041617862714217451</SourceID>
      <SinkID>4951026755247257135</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>45</zIndex>
      <ConnectionID>5217439850891722212</ConnectionID>
      <Description></Description>
      <NextActivityId>4951026755247257135</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4951026755247257135</SourceID>
      <SinkID>5115720641574310845</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>90</zIndex>
      <ConnectionID>5191373052686157261</ConnectionID>
      <Description></Description>
      <NextActivityId>5545361208398158663</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5301958918738439373</SourceID>
      <SinkID>5107383616337365724</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>64</zIndex>
      <ConnectionID>5650182896043160826</ConnectionID>
      <Description></Description>
      <NextActivityId>5284967632413517826</NextActivityId>
      <Title>مشاهده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5652978255305006445</SourceID>
      <SinkID>5584769963438550243</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>303</zIndex>
      <ConnectionID>5316387041664277980</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5652978255305006445</SourceID>
      <SinkID>5584769963438550243</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>250</zIndex>
      <ConnectionID>5762523089312090931</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5266308649884482765</SourceID>
      <SinkID>5745961671592323669</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>53</zIndex>
      <ConnectionID>5013803809003146916</ConnectionID>
      <Description></Description>
      <NextActivityId>5745961671592323669</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5266308649884482765</SourceID>
      <SinkID>5745961671592323669</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>54</zIndex>
      <ConnectionID>5121250817330473848</ConnectionID>
      <Description></Description>
      <NextActivityId>5745961671592323669</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4992885876247864781</SourceID>
      <SinkID>5107383616337365724</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>63</zIndex>
      <ConnectionID>5121105529035098258</ConnectionID>
      <Description></Description>
      <NextActivityId>5284967632413517826</NextActivityId>
      <Title>مشاهده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5190687566293051164</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>185</zIndex>
      <ConnectionID>5721107465206823065</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5190687566293051164</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>223</zIndex>
      <ConnectionID>5362388479723076925</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5427263783413837374</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>184</zIndex>
      <ConnectionID>5094054403266693838</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5427263783413837374</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>225</zIndex>
      <ConnectionID>5184131765316672643</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5694342043943880870</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>187</zIndex>
      <ConnectionID>5001401237197601202</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5694342043943880870</SourceID>
      <SinkID>5497091488868967879</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>186</zIndex>
      <ConnectionID>5035754403754435707</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4717078541720909006</SourceID>
      <SinkID>5618309099746617127</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>302</zIndex>
      <ConnectionID>4804649651280475494</ConnectionID>
      <Description></Description>
      <NextActivityId>5618309099746617127</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4754359725994327484</SourceID>
      <SinkID>5355033646134273192</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>60</zIndex>
      <ConnectionID>4804250203125168999</ConnectionID>
      <Description></Description>
      <NextActivityId>5355033646134273192</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4754359725994327484</SourceID>
      <SinkID>5355033646134273192</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>61</zIndex>
      <ConnectionID>5207404439679418917</ConnectionID>
      <Description></Description>
      <NextActivityId>5355033646134273192</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5584769963438550243</SourceID>
      <SinkID>5285061181035697002</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>304</zIndex>
      <ConnectionID>5735835823890701636</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5584769963438550243</SourceID>
      <SinkID>5285061181035697002</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>93</zIndex>
      <ConnectionID>5275130336275928631</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4951026755247257135</SourceID>
      <SinkID>4670963591703013812</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>165</zIndex>
      <ConnectionID>4870467240336467455</ConnectionID>
      <Description></Description>
      <NextActivityId>4839850536441130380</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4670963591703013812</SourceID>
      <SinkID>4839850536441130380</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>67</zIndex>
      <ConnectionID>5389018005799768871</ConnectionID>
      <Description></Description>
      <NextActivityId>4839850536441130380</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4670963591703013812</SourceID>
      <SinkID>4839850536441130380</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>68</zIndex>
      <ConnectionID>5418592112458785551</ConnectionID>
      <Description></Description>
      <NextActivityId>4839850536441130380</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5298529172830865861</SourceID>
      <SinkID>4992885876247864781</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>70</zIndex>
      <ConnectionID>5595023352378722396</ConnectionID>
      <Description></Description>
      <NextActivityId>4992885876247864781</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5298529172830865861</SourceID>
      <SinkID>4992885876247864781</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>71</zIndex>
      <ConnectionID>5416478939695113504</ConnectionID>
      <Description></Description>
      <NextActivityId>4992885876247864781</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5055565066443855289</SourceID>
      <SinkID>5301958918738439373</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>73</zIndex>
      <ConnectionID>4828607747795174437</ConnectionID>
      <Description></Description>
      <NextActivityId>5301958918738439373</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5055565066443855289</SourceID>
      <SinkID>5301958918738439373</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>74</zIndex>
      <ConnectionID>5392935750087509879</ConnectionID>
      <Description></Description>
      <NextActivityId>5301958918738439373</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5619704170837597416</SourceID>
      <SinkID>5504272185711950109</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>76</zIndex>
      <ConnectionID>5660104099779986192</ConnectionID>
      <Description></Description>
      <NextActivityId>5504272185711950109</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5619704170837597416</SourceID>
      <SinkID>5504272185711950109</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>77</zIndex>
      <ConnectionID>5332403289093025475</ConnectionID>
      <Description></Description>
      <NextActivityId>5504272185711950109</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5104210001984538360</SourceID>
      <SinkID>5619704170837597416</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>79</zIndex>
      <ConnectionID>4785085212647387816</ConnectionID>
      <Description></Description>
      <NextActivityId>5619704170837597416</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5104210001984538360</SourceID>
      <SinkID>5619704170837597416</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>80</zIndex>
      <ConnectionID>4871424703789135820</ConnectionID>
      <Description></Description>
      <NextActivityId>5619704170837597416</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5339819734454359695</SourceID>
      <SinkID>5055565066443855289</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>82</zIndex>
      <ConnectionID>5674200616183191492</ConnectionID>
      <Description></Description>
      <NextActivityId>5055565066443855289</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5339819734454359695</SourceID>
      <SinkID>5055565066443855289</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>83</zIndex>
      <ConnectionID>4738492993050271357</ConnectionID>
      <Description></Description>
      <NextActivityId>5055565066443855289</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5278376508287612305</SourceID>
      <SinkID>5298529172830865861</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>85</zIndex>
      <ConnectionID>4842839144750521174</ConnectionID>
      <Description></Description>
      <NextActivityId>5298529172830865861</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5278376508287612305</SourceID>
      <SinkID>5298529172830865861</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>86</zIndex>
      <ConnectionID>4687011683029553499</ConnectionID>
      <Description></Description>
      <NextActivityId>5298529172830865861</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5285061181035697002</SourceID>
      <SinkID>5665864811938951239</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>241</zIndex>
      <ConnectionID>5663243833641302468</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5285061181035697002</SourceID>
      <SinkID>5665864811938951239</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>138</zIndex>
      <ConnectionID>4749498047978144212</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4759343114811969265</SourceID>
      <SinkID>5269871589935450743</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>253</zIndex>
      <ConnectionID>5140170443891504849</ConnectionID>
      <Description></Description>
      <NextActivityId>5269871589935450743</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4759343114811969265</SourceID>
      <SinkID>5269871589935450743</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>96</zIndex>
      <ConnectionID>5093828666556037765</ConnectionID>
      <Description></Description>
      <NextActivityId>5269871589935450743</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5643618019361205468</SourceID>
      <SinkID>5650666589796262347</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>200</zIndex>
      <ConnectionID>5672690477047930684</ConnectionID>
      <Description></Description>
      <NextActivityId>4815901315475223242</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5643618019361205468</SourceID>
      <SinkID>5650666589796262347</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>201</zIndex>
      <ConnectionID>4995169893956383883</ConnectionID>
      <Description></Description>
      <NextActivityId>4815901315475223242</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5498317292194614929</SourceID>
      <SinkID>5114583902507171422</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>100</zIndex>
      <ConnectionID>5467931880747666300</ConnectionID>
      <Description></Description>
      <NextActivityId>5114583902507171422</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5498317292194614929</SourceID>
      <SinkID>5114583902507171422</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>101</zIndex>
      <ConnectionID>4689053689716037012</ConnectionID>
      <Description></Description>
      <NextActivityId>5114583902507171422</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5618240044106389737</SourceID>
      <SinkID>5063301051687647965</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>194</zIndex>
      <ConnectionID>4727006717591355663</ConnectionID>
      <Description></Description>
      <NextActivityId>4704799026601478347</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5618240044106389737</SourceID>
      <SinkID>5063301051687647965</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>193</zIndex>
      <ConnectionID>5753887089304062363</ConnectionID>
      <Description></Description>
      <NextActivityId>4704799026601478347</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4770762682474413495</SourceID>
      <SinkID>4855161686984350557</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>134</zIndex>
      <ConnectionID>5178622284301500989</ConnectionID>
      <Description></Description>
      <NextActivityId>4855161686984350557</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4770762682474413495</SourceID>
      <SinkID>4855161686984350557</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>104</zIndex>
      <ConnectionID>5364999731532273803</ConnectionID>
      <Description></Description>
      <NextActivityId>4855161686984350557</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4855161686984350557</SourceID>
      <SinkID>5499611259131768463</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>281</zIndex>
      <ConnectionID>5092178921443328702</ConnectionID>
      <Description></Description>
      <NextActivityId>5499611259131768463</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4855161686984350557</SourceID>
      <SinkID>5499611259131768463</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>280</zIndex>
      <ConnectionID>5379649203982755138</ConnectionID>
      <Description></Description>
      <NextActivityId>5499611259131768463</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4691537069502571604</SourceID>
      <SinkID>4885767263008986889</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>107</zIndex>
      <ConnectionID>5739410998256115516</ConnectionID>
      <Description></Description>
      <NextActivityId>5382260123750824880</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4691537069502571604</SourceID>
      <SinkID>4885767263008986889</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>108</zIndex>
      <ConnectionID>5449833878948113335</ConnectionID>
      <Description></Description>
      <NextActivityId>4885767263008986889</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4780690261883765166</SourceID>
      <SinkID>5292191757363494855</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>111</zIndex>
      <ConnectionID>4943519304785951526</ConnectionID>
      <Description></Description>
      <NextActivityId>5292191757363494855</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4780690261883765166</SourceID>
      <SinkID>5292191757363494855</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>112</zIndex>
      <ConnectionID>5369923185081225464</ConnectionID>
      <Description></Description>
      <NextActivityId>5292191757363494855</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5325114414053339885</SourceID>
      <SinkID>4874627853814910225</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>251</zIndex>
      <ConnectionID>5664678388662351620</ConnectionID>
      <Description></Description>
      <NextActivityId>4874627853814910225</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5415861941485941443&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5292191757363494855</SourceID>
      <SinkID>5325114414053339885</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>136</zIndex>
      <ConnectionID>5233197817035527291</ConnectionID>
      <Description></Description>
      <NextActivityId>5325114414053339885</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5292191757363494855</SourceID>
      <SinkID>5325114414053339885</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>135</zIndex>
      <ConnectionID>5030418250571642042</ConnectionID>
      <Description></Description>
      <NextActivityId>5325114414053339885</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4879776166545765439</SourceID>
      <SinkID>5434119298241760436</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>117</zIndex>
      <ConnectionID>4871303422262120587</ConnectionID>
      <Description></Description>
      <NextActivityId>5434119298241760436</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4879776166545765439</SourceID>
      <SinkID>5434119298241760436</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>118</zIndex>
      <ConnectionID>5267789107781368275</ConnectionID>
      <Description></Description>
      <NextActivityId>5434119298241760436</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5434119298241760436</SourceID>
      <SinkID>5439006806990558238</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>120</zIndex>
      <ConnectionID>4919267437231474284</ConnectionID>
      <Description></Description>
      <NextActivityId>5439006806990558238</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5434119298241760436</SourceID>
      <SinkID>5439006806990558238</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>121</zIndex>
      <ConnectionID>5268591451256238558</ConnectionID>
      <Description></Description>
      <NextActivityId>5439006806990558238</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4929154375250997349</SourceID>
      <SinkID>4879776166545765439</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>124</zIndex>
      <ConnectionID>5065647182081478496</ConnectionID>
      <Description></Description>
      <NextActivityId>4879776166545765439</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4929154375250997349</SourceID>
      <SinkID>4879776166545765439</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>125</zIndex>
      <ConnectionID>5731698657902413569</ConnectionID>
      <Description></Description>
      <NextActivityId>4879776166545765439</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5115720641574310845</SourceID>
      <SinkID>4679648670566512511</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>126</zIndex>
      <ConnectionID>5223090153873205128</ConnectionID>
      <Description></Description>
      <NextActivityId>4679648670566512511</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5115720641574310845</SourceID>
      <SinkID>4679648670566512511</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>127</zIndex>
      <ConnectionID>4646506181333072519</ConnectionID>
      <Description></Description>
      <NextActivityId>4679648670566512511</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4679648670566512511</SourceID>
      <SinkID>5407822482687002080</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>129</zIndex>
      <ConnectionID>5162794018895763616</ConnectionID>
      <Description></Description>
      <NextActivityId>5407822482687002080</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4679648670566512511</SourceID>
      <SinkID>5407822482687002080</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>130</zIndex>
      <ConnectionID>5408633014857341912</ConnectionID>
      <Description></Description>
      <NextActivityId>5407822482687002080</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5407822482687002080</SourceID>
      <SinkID>5196530943346596456</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>132</zIndex>
      <ConnectionID>5757295191972070254</ConnectionID>
      <Description></Description>
      <NextActivityId>5196530943346596456</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5407822482687002080</SourceID>
      <SinkID>5196530943346596456</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>133</zIndex>
      <ConnectionID>5107641066185665137</ConnectionID>
      <Description></Description>
      <NextActivityId>5196530943346596456</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5665864811938951239</SourceID>
      <SinkID>4850891310934175052</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>238</zIndex>
      <ConnectionID>4737109724749103861</ConnectionID>
      <Description></Description>
      <NextActivityId>4850891310934175052</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5665864811938951239</SourceID>
      <SinkID>4850891310934175052</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>143</zIndex>
      <ConnectionID>4961725366564722661</ConnectionID>
      <Description></Description>
      <NextActivityId>4850891310934175052</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4762888134799951694</SourceID>
      <SinkID>4665043229069601680</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>158</zIndex>
      <ConnectionID>5745158642202750361</ConnectionID>
      <Description></Description>
      <NextActivityId>4665043229069601680</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4665043229069601680</SourceID>
      <SinkID>4762888134799951694</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>159</zIndex>
      <ConnectionID>5410880072870431787</ConnectionID>
      <Description></Description>
      <NextActivityId>4762888134799951694</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>None</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5099313230308642538</SourceID>
      <SinkID>4964570722228573170</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>156</zIndex>
      <ConnectionID>4793472656933718355</ConnectionID>
      <Description></Description>
      <NextActivityId>4964570722228573170</NextActivityId>
      <Title>شرط1</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4964570722228573170</SourceID>
      <SinkID>5565252718209581563</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>150</zIndex>
      <ConnectionID>4845162227299160914</ConnectionID>
      <Description></Description>
      <NextActivityId>5565252718209581563</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5565252718209581563</SourceID>
      <SinkID>5062801922170816519</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>149</zIndex>
      <ConnectionID>4897643664769848473</ConnectionID>
      <Description></Description>
      <NextActivityId>5062801922170816519</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4964570722228573170</SourceID>
      <SinkID>5062801922170816519</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>152</zIndex>
      <ConnectionID>5124872320286503892</ConnectionID>
      <Description></Description>
      <NextActivityId>5062801922170816519</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5062801922170816519</SourceID>
      <SinkID>5122564908230475032</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>157</zIndex>
      <ConnectionID>4872290177681070924</ConnectionID>
      <Description></Description>
      <NextActivityId>5122564908230475032</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5062801922170816519</SourceID>
      <SinkID>4762888134799951694</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>151</zIndex>
      <ConnectionID>5155048454709208598</ConnectionID>
      <Description></Description>
      <NextActivityId>4762888134799951694</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5122564908230475032</SourceID>
      <SinkID>4762888134799951694</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>153</zIndex>
      <ConnectionID>4983642074329590931</ConnectionID>
      <Description></Description>
      <NextActivityId>4762888134799951694</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5565252718209581563</SourceID>
      <SinkID>5062801922170816519</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>154</zIndex>
      <ConnectionID>5567750467280353007</ConnectionID>
      <Description></Description>
      <NextActivityId>5062801922170816519</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5122564908230475032</SourceID>
      <SinkID>4762888134799951694</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>155</zIndex>
      <ConnectionID>5011865060222762411</ConnectionID>
      <Description></Description>
      <NextActivityId>4762888134799951694</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4850891310934175052</SourceID>
      <SinkID>5099313230308642538</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>160</zIndex>
      <ConnectionID>5005516578786031452</ConnectionID>
      <Description></Description>
      <NextActivityId>5099313230308642538</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4762888134799951694</SourceID>
      <SinkID>5623973085900822712</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>162</zIndex>
      <ConnectionID>5102899312318289071</ConnectionID>
      <Description></Description>
      <NextActivityId>5623973085900822712</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5623973085900822712</SourceID>
      <SinkID>5004814135001212382</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>207</zIndex>
      <ConnectionID>5741020508027397269</ConnectionID>
      <Description></Description>
      <NextActivityId>5286980171096020355</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4791655403373269591</SourceID>
      <SinkID>4929154375250997349</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>164</zIndex>
      <ConnectionID>4919713433415299997</ConnectionID>
      <Description></Description>
      <NextActivityId>4929154375250997349</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4791655403373269591</SourceID>
      <SinkID>4754359725994327484</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>283</zIndex>
      <ConnectionID>5752964818673032057</ConnectionID>
      <Description></Description>
      <NextActivityId>4754359725994327484</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5504272185711950109</SourceID>
      <SinkID>4791655403373269591</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>262</zIndex>
      <ConnectionID>5160774698574792271</ConnectionID>
      <Description></Description>
      <NextActivityId>4791655403373269591</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4839850536441130380</SourceID>
      <SinkID>4993045018730173055</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>260</zIndex>
      <ConnectionID>5134113557789913370</ConnectionID>
      <Description></Description>
      <NextActivityId>4993045018730173055</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4993045018730173055</SourceID>
      <SinkID>5266308649884482765</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>259</zIndex>
      <ConnectionID>5047962150635819920</ConnectionID>
      <Description></Description>
      <NextActivityId>5266308649884482765</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4993045018730173055</SourceID>
      <SinkID>5115720641574310845</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>167</zIndex>
      <ConnectionID>4980176302785248482</ConnectionID>
      <Description></Description>
      <NextActivityId>5115720641574310845</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5166716401783958103</SourceID>
      <SinkID>4977248618101654400</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>188</zIndex>
      <ConnectionID>5440918738676200812</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5166716401783958103</SourceID>
      <SinkID>4652769508339853640</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>189</zIndex>
      <ConnectionID>5573254695394679644</ConnectionID>
      <Description></Description>
      <NextActivityId>4652769508339853640</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4652769508339853640</SourceID>
      <SinkID>5148196714002621267</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>190</zIndex>
      <ConnectionID>5303604085766499262</ConnectionID>
      <Description></Description>
      <NextActivityId>5148196714002621267</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5148196714002621267</SourceID>
      <SinkID>4977248618101654400</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>191</zIndex>
      <ConnectionID>5352545263158006297</ConnectionID>
      <Description></Description>
      <NextActivityId>4977248618101654400</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5497091488868967879</SourceID>
      <SinkID>5166716401783958103</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>192</zIndex>
      <ConnectionID>5019786668416607131</ConnectionID>
      <Description></Description>
      <NextActivityId>5166716401783958103</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5063301051687647965</SourceID>
      <SinkID>5567215101742416508</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>195</zIndex>
      <ConnectionID>5034858452306341789</ConnectionID>
      <Description></Description>
      <NextActivityId>5567215101742416508</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5567215101742416508</SourceID>
      <SinkID>5440186918469079659</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>196</zIndex>
      <ConnectionID>5180418036184468551</ConnectionID>
      <Description></Description>
      <NextActivityId>5440186918469079659</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5440186918469079659</SourceID>
      <SinkID>4954346896474870712</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>197</zIndex>
      <ConnectionID>5701710247666733795</ConnectionID>
      <Description></Description>
      <NextActivityId>4954346896474870712</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4954346896474870712</SourceID>
      <SinkID>4704799026601478347</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>198</zIndex>
      <ConnectionID>5453508394017562257</ConnectionID>
      <Description></Description>
      <NextActivityId>4704799026601478347</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5567215101742416508</SourceID>
      <SinkID>4704799026601478347</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>199</zIndex>
      <ConnectionID>5364594260443108740</ConnectionID>
      <Description></Description>
      <NextActivityId>4704799026601478347</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5650666589796262347</SourceID>
      <SinkID>5296387129021651963</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>202</zIndex>
      <ConnectionID>5396595816734747903</ConnectionID>
      <Description></Description>
      <NextActivityId>5296387129021651963</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5296387129021651963</SourceID>
      <SinkID>5658028149739277229</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>203</zIndex>
      <ConnectionID>5235000870245212265</ConnectionID>
      <Description></Description>
      <NextActivityId>5658028149739277229</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5296387129021651963</SourceID>
      <SinkID>4815901315475223242</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>204</zIndex>
      <ConnectionID>5673699499109909721</ConnectionID>
      <Description></Description>
      <NextActivityId>4815901315475223242</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5658028149739277229</SourceID>
      <SinkID>5402399780784269949</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>205</zIndex>
      <ConnectionID>4731536617929247245</ConnectionID>
      <Description></Description>
      <NextActivityId>5402399780784269949</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5402399780784269949</SourceID>
      <SinkID>4815901315475223242</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>206</zIndex>
      <ConnectionID>5480600912945864551</ConnectionID>
      <Description></Description>
      <NextActivityId>4815901315475223242</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5004814135001212382</SourceID>
      <SinkID>5216916326269152624</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>208</zIndex>
      <ConnectionID>5559072422113497816</ConnectionID>
      <Description></Description>
      <NextActivityId>5216916326269152624</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5216916326269152624</SourceID>
      <SinkID>5676384835005747597</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>209</zIndex>
      <ConnectionID>4819792848141416660</ConnectionID>
      <Description></Description>
      <NextActivityId>5676384835005747597</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5216916326269152624</SourceID>
      <SinkID>5286980171096020355</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>210</zIndex>
      <ConnectionID>5539919198993883938</ConnectionID>
      <Description></Description>
      <NextActivityId>5286980171096020355</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5676384835005747597</SourceID>
      <SinkID>5625766007388430366</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>211</zIndex>
      <ConnectionID>5179477039405698243</ConnectionID>
      <Description></Description>
      <NextActivityId>5625766007388430366</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5625766007388430366</SourceID>
      <SinkID>5286980171096020355</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>212</zIndex>
      <ConnectionID>5089061033479068057</ConnectionID>
      <Description></Description>
      <NextActivityId>5286980171096020355</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5043876278556955928</SourceID>
      <SinkID>5652978255305006445</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>215</zIndex>
      <ConnectionID>4820866586012627477</ConnectionID>
      <Description></Description>
      <NextActivityId>5652978255305006445</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5430818956966307071</SourceID>
      <SinkID>5043876278556955928</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>218</zIndex>
      <ConnectionID>5757343143941297459</ConnectionID>
      <Description></Description>
      <NextActivityId>5043876278556955928</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5043876278556955928</SourceID>
      <SinkID>5377314205876849660</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>217</zIndex>
      <ConnectionID>4745892831978487132</ConnectionID>
      <Description></Description>
      <NextActivityId>5377314205876849660</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5439006806990558238</SourceID>
      <SinkID>5694342043943880870</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>220</zIndex>
      <ConnectionID>5537946835329092126</ConnectionID>
      <Description></Description>
      <NextActivityId>5694342043943880870</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5439006806990558238</SourceID>
      <SinkID>5694342043943880870</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>261</zIndex>
      <ConnectionID>5203560539260422201</ConnectionID>
      <Description></Description>
      <NextActivityId>5694342043943880870</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4885767263008986889</SourceID>
      <SinkID>5349566102883827743</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>258</zIndex>
      <ConnectionID>4981980760912044531</ConnectionID>
      <Description></Description>
      <NextActivityId>5349566102883827743</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5196530943346596456</SourceID>
      <SinkID>5190687566293051164</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>221</zIndex>
      <ConnectionID>4702056224115520037</ConnectionID>
      <Description></Description>
      <NextActivityId>5190687566293051164</NextActivityId>
      <Title>عدم ارسال</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5196530943346596456</SourceID>
      <SinkID>5190687566293051164</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>222</zIndex>
      <ConnectionID>5224110876645206837</ConnectionID>
      <Description></Description>
      <NextActivityId>5190687566293051164</NextActivityId>
      <Title>ارسال شده</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5107383616337365724</SourceID>
      <SinkID>5427263783413837374</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>224</zIndex>
      <ConnectionID>5198703854626563497</ConnectionID>
      <Description></Description>
      <NextActivityId>5427263783413837374</NextActivityId>
      <Title>خروجی</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5618309099746617127</SourceID>
      <SinkID>5104210001984538360</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>226</zIndex>
      <ConnectionID>5237299746530449787</ConnectionID>
      <Description></Description>
      <NextActivityId>5104210001984538360</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5745961671592323669</SourceID>
      <SinkID>5339819734454359695</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>227</zIndex>
      <ConnectionID>5035633784151563353</ConnectionID>
      <Description></Description>
      <NextActivityId>5339819734454359695</NextActivityId>
      <Title></Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5745961671592323669</SourceID>
      <SinkID>5278376508287612305</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>228</zIndex>
      <ConnectionID>4997217513426515443</ConnectionID>
      <Description></Description>
      <NextActivityId>5278376508287612305</NextActivityId>
      <Title></Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4717078541720909006</SourceID>
      <SinkID>4759343114811969265</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>229</zIndex>
      <ConnectionID>5565706635913417364</ConnectionID>
      <Description></Description>
      <NextActivityId>4759343114811969265</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5269871589935450743</SourceID>
      <SinkID>5643618019361205468</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>230</zIndex>
      <ConnectionID>4737134651675439399</ConnectionID>
      <Description></Description>
      <NextActivityId>5643618019361205468</NextActivityId>
      <Title>اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5269871589935450743</SourceID>
      <SinkID>5643618019361205468</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>231</zIndex>
      <ConnectionID>4954207834171404113</ConnectionID>
      <Description></Description>
      <NextActivityId>5643618019361205468</NextActivityId>
      <Title>عدم اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5041617862714217451</SourceID>
      <SinkID>5498317292194614929</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>232</zIndex>
      <ConnectionID>5509489452814179433</ConnectionID>
      <Description></Description>
      <NextActivityId>5498317292194614929</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5114583902507171422</SourceID>
      <SinkID>5618240044106389737</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>233</zIndex>
      <ConnectionID>5495557724778916256</ConnectionID>
      <Description></Description>
      <NextActivityId>5618240044106389737</NextActivityId>
      <Title>اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5114583902507171422</SourceID>
      <SinkID>5618240044106389737</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>234</zIndex>
      <ConnectionID>5340308654688368337</ConnectionID>
      <Description></Description>
      <NextActivityId>5618240044106389737</NextActivityId>
      <Title>عدم اجرا</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4885767263008986889</SourceID>
      <SinkID>4780690261883765166</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>257</zIndex>
      <ConnectionID>5381478036622543736</ConnectionID>
      <Description></Description>
      <NextActivityId>4780690261883765166</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4625338406536221786</SourceID>
      <SinkID>4906336203136839137</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>236</zIndex>
      <ConnectionID>5338687302280169979</ConnectionID>
      <Description></Description>
      <NextActivityId>4906336203136839137</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4906336203136839137</SourceID>
      <SinkID>5430818956966307071</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>237</zIndex>
      <ConnectionID>5019600208951688451</ConnectionID>
      <Description></Description>
      <NextActivityId>5430818956966307071</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4803612339895948588</SourceID>
      <SinkID>5215090122552527259</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>300</zIndex>
      <ConnectionID>5598879358681467181</ConnectionID>
      <Description></Description>
      <NextActivityId>5215090122552527259</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4803612339895948588</SourceID>
      <SinkID>4981242400227183039</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>298</zIndex>
      <ConnectionID>4920621543089916662</ConnectionID>
      <Description></Description>
      <NextActivityId>4981242400227183039</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4981242400227183039</SourceID>
      <SinkID>4894579617628947937</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>255</zIndex>
      <ConnectionID>5463588131594488920</ConnectionID>
      <Description></Description>
      <NextActivityId>4894579617628947937</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation>&lt;DataGridValidations&gt;
  &lt;Validation&gt;
    &lt;ValidationId&gt;5415861941485941443&lt;/ValidationId&gt;
    &lt;FormId&gt;21041&lt;/FormId&gt;
  &lt;/Validation&gt;
&lt;/DataGridValidations&gt;</Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4894579617628947937</SourceID>
      <SinkID>4770762682474413495</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>267</zIndex>
      <ConnectionID>5025808440799396744</ConnectionID>
      <Description></Description>
      <NextActivityId>4770762682474413495</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5189651015325098723</SourceID>
      <SinkID>4803612339895948588</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>299</zIndex>
      <ConnectionID>5297077507165535026</ConnectionID>
      <Description></Description>
      <NextActivityId>4803612339895948588</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4665298132433073492</SourceID>
      <SinkID>5012698392437218490</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>247</zIndex>
      <ConnectionID>4686230521864238593</ConnectionID>
      <Description></Description>
      <NextActivityId>5012698392437218490</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4665298132433073492</SourceID>
      <SinkID>5669317155888546760</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>306</zIndex>
      <ConnectionID>4774678640932318970</ConnectionID>
      <Description></Description>
      <NextActivityId>5669317155888546760</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5525164813200396850</SourceID>
      <SinkID>4665298132433073492</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>249</zIndex>
      <ConnectionID>5423880364358011608</ConnectionID>
      <Description></Description>
      <NextActivityId>4665298132433073492</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4677496980118159382</SourceID>
      <SinkID>4803612339895948588</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>308</zIndex>
      <ConnectionID>5437396425313240876</ConnectionID>
      <Description></Description>
      <NextActivityId>4803612339895948588</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4850891310934175052</SourceID>
      <SinkID>4677496980118159382</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>307</zIndex>
      <ConnectionID>5415496456400713378</ConnectionID>
      <Description></Description>
      <NextActivityId>4677496980118159382</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4981133139336741470</SourceID>
      <SinkID>5684762310484468949</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>263</zIndex>
      <ConnectionID>4914635716658133846</ConnectionID>
      <Description></Description>
      <NextActivityId>5684762310484468949</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5206771541047775559</SourceID>
      <SinkID>4874627853814910225</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>252</zIndex>
      <ConnectionID>4691999983037577737</ConnectionID>
      <Description></Description>
      <NextActivityId>4874627853814910225</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5012698392437218490</SourceID>
      <SinkID>5613702900178556427</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>291</zIndex>
      <ConnectionID>5259799349322105594</ConnectionID>
      <Description></Description>
      <NextActivityId>5613702900178556427</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5669317155888546760</SourceID>
      <SinkID>5613702900178556427</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>309</zIndex>
      <ConnectionID>5204433466934238900</ConnectionID>
      <Description></Description>
      <NextActivityId>5613702900178556427</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5613702900178556427</SourceID>
      <SinkID>5459783580603522277</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>285</zIndex>
      <ConnectionID>5254198727664181009</ConnectionID>
      <Description></Description>
      <NextActivityId>5459783580603522277</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5613702900178556427</SourceID>
      <SinkID>5459783580603522277</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>265</zIndex>
      <ConnectionID>5302493779161152393</ConnectionID>
      <Description></Description>
      <NextActivityId>5459783580603522277</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5459783580603522277</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>286</zIndex>
      <ConnectionID>5596747008357165667</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5459783580603522277</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>284</zIndex>
      <ConnectionID>5560964609827743998</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5679989114078456046</SourceID>
      <SinkID>4763571614905572924</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>295</zIndex>
      <ConnectionID>5100656714893933154</ConnectionID>
      <Description></Description>
      <NextActivityId>4763571614905572924</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5679989114078456046</SourceID>
      <SinkID>4763571614905572924</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>296</zIndex>
      <ConnectionID>5018523667333738379</ConnectionID>
      <Description></Description>
      <NextActivityId>4763571614905572924</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4763571614905572924</SourceID>
      <SinkID>5189651015325098723</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>297</zIndex>
      <ConnectionID>5560214495249487245</ConnectionID>
      <Description></Description>
      <NextActivityId>5189651015325098723</NextActivityId>
      <Title>نادرست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4763571614905572924</SourceID>
      <SinkID>5198528486338176756</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>301</zIndex>
      <ConnectionID>4964792067306685959</ConnectionID>
      <Description></Description>
      <NextActivityId>5198528486338176756</NextActivityId>
      <Title>درست</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5198528486338176756</SourceID>
      <SinkID>5625006272480608290</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>271</zIndex>
      <ConnectionID>5716149561716591357</ConnectionID>
      <Description></Description>
      <NextActivityId>5625006272480608290</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5198528486338176756</SourceID>
      <SinkID>5625006272480608290</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>272</zIndex>
      <ConnectionID>5538635489968845489</ConnectionID>
      <Description></Description>
      <NextActivityId>5625006272480608290</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5625006272480608290</SourceID>
      <SinkID>4699222351407838693</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Bottom</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>290</zIndex>
      <ConnectionID>5079589702874031852</ConnectionID>
      <Description></Description>
      <NextActivityId>4699222351407838693</NextActivityId>
      <Title>ثبت</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4699222351407838693</SourceID>
      <SinkID>5251715737943645581</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>275</zIndex>
      <ConnectionID>5227597064118650544</ConnectionID>
      <Description></Description>
      <NextActivityId>5251715737943645581</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4699222351407838693</SourceID>
      <SinkID>5251715737943645581</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>276</zIndex>
      <ConnectionID>5040996386001104846</ConnectionID>
      <Description></Description>
      <NextActivityId>5251715737943645581</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5251715737943645581</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>293</zIndex>
      <ConnectionID>5562932731826008095</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>نا موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5251715737943645581</SourceID>
      <SinkID>4672212668007583093</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>288</zIndex>
      <ConnectionID>5450044623052244987</ConnectionID>
      <Description></Description>
      <NextActivityId>4672212668007583093</NextActivityId>
      <Title>موفق</Title>
      <Value></Value>
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>4677496980118159382</SourceID>
      <SinkID>5222424946461512596</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>311</zIndex>
      <ConnectionID>5281662883028853445</ConnectionID>
      <Description />
      <NextActivityId>5222424946461512596</NextActivityId>
      <Title>درست</Title>
      <Value />
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5222424946461512596</SourceID>
      <SinkID>5525164813200396850</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Left</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>312</zIndex>
      <ConnectionID>5703066074903660697</ConnectionID>
      <Description />
      <NextActivityId>5525164813200396850</NextActivityId>
      <Title>موفق</Title>
      <Value />
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
    <Connection>
      <SourceID>5222424946461512596</SourceID>
      <SinkID>5525164813200396850</SinkID>
      <BPMNewStep></BPMNewStep>
      <SourceConnectorName>Right</SourceConnectorName>
      <SinkConnectorName>Top</SinkConnectorName>
      <SourceArrowSymbol>None</SourceArrowSymbol>
      <SinkArrowSymbol>Arrow</SinkArrowSymbol>
      <zIndex>313</zIndex>
      <ConnectionID>5704786895356024459</ConnectionID>
      <Description />
      <NextActivityId>5525164813200396850</NextActivityId>
      <Title>نا موفق</Title>
      <Value />
      <Kind>Exit</Kind>
      <Validation></Validation>
      <SaveMessage></SaveMessage>
      <ContinueByCallTransfer>false</ContinueByCallTransfer>
      <ContinueStartWorflowFromHA>false</ContinueStartWorflowFromHA>
    </Connection>
  </Connections>
  <Parameters>
    <Parameter>
      <ID>4795720070479808806</ID>
      <Name>SubsetRefer</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4761552531232016649</ID>
      <Name>refereId</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4656243688660777640</ID>
      <Name>RegisteredGroup</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5340628198769156907</ID>
      <Name>RegisteredUser</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5185298331503389160</ID>
      <Name>Isconfirmed</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4709416400049023481</ID>
      <Name>SubsetId</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4909749106365187769</ID>
      <Name>OrganizationId</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5119275183439000772</ID>
      <Name>PL_PortalLogID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5481975548472856767</ID>
      <Name>StatusID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4628227573080803659</ID>
      <Name>IsEdited</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4624038228458470510</ID>
      <Name>IsCancel</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5394843293937210158</ID>
      <Name>OnlyEmail</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5632725652335759021</ID>
      <Name>OnlySMS</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5032894516671958522</ID>
      <Name>Text</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5258908701320087664</ID>
      <Name>Both</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5257977154521948043</ID>
      <Name>ApplierEmail</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5538939670604997851</ID>
      <Name>IsAutomat</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5127421865626688020</ID>
      <Name>Descript</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5440808819763184062</ID>
      <Name>OfficeID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5749109370960274398</ID>
      <Name>OrganID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5759578382888991340</ID>
      <Name>ApplierMobile</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4903377208807737207</ID>
      <Name>RegDate</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5518803313678431636</ID>
      <Name>RegTime</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5681153490470800943</ID>
      <Name>PL_PortalUserID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5101148325991036149</ID>
      <Name>FullName</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4915167348216933527</ID>
      <Name>FollowUpCode</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4683807795276323147</ID>
      <Name>TaskName</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4685877624631256695</ID>
      <Name>MainSubjectID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4660987194035506110</ID>
      <Name>SideSubject</Name>
      <Value>0</Value>
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5710913655900594389</ID>
      <Name>GUID</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5500185179236591797</ID>
      <Name>SendResult</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5416730154019680888</ID>
      <Name>DesiredUnit</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5199522934282053140</ID>
      <Name>DesiredOffice</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4704085124094693244</ID>
      <Name>cmbResult</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5410664933669157193</ID>
      <Name>cmbDesiredUnit</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5751908769220014798</ID>
      <Name>cmbDesiredOffice</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5688283105553776774</ID>
      <Name>OreinProblem</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4635903430984750997</ID>
      <Name>QuestionProblem</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5517303748452609367</ID>
      <Name>ProblemType</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5607988555014458378</ID>
      <Name>PortalEntryID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5305303899668709726</ID>
      <Name>Email</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4864472286525018705</ID>
      <Name>MobileNumber</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5406478022168974661</ID>
      <Name>PortalName</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5636909980517002567</ID>
      <Name>PortalDes</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5374546887164210331</ID>
      <Name>ReferedGroup</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5639443057853924965</ID>
      <Name>FirstRefer</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5008597864531390565</ID>
      <Name>FinalResult</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4749049630855314398</ID>
      <Name>Attachment</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5248515133110302934</ID>
      <Name>AttachmentTitle</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5573052384747355346</ID>
      <Name>FinalDescript</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5259953627560440632</ID>
      <Name>FirstExpert</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5284838067383089349</ID>
      <Name>NationalCode</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4905939780520136075</ID>
      <Name>ResultSecond</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5281938850536744029</ID>
      <Name>AttachmentSecond</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5083293721686730547</ID>
      <Name>FinalDesSecond</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4797135798787943673</ID>
      <Name>SecondReferID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5381315451910707650</ID>
      <Name>ExpertID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5283929832899489863</ID>
      <Name>TextMessage</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4892567329320323540</ID>
      <Name>PriorityID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>5</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5416544190251967166</ID>
      <Name>PortalUserName</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5074393740122216236</ID>
      <Name>SideShow</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5491170038842798723</ID>
      <Name>EmailRes</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5181265043090875979</ID>
      <Name>MobileRes</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5402886700803850317</ID>
      <Name>MobileReset</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5637692892908518925</ID>
      <Name>EmailReset</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue> </DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4926767464341374231</ID>
      <Name>IsSurvey</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4826554401727306362</ID>
      <Name>SurveyText</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>''''</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5300361362913226832</ID>
      <Name>AppMobile</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>''''</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5124646284842754215</ID>
      <Name>descriptemty</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>true</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4881604134686163892</ID>
      <Name>PortalID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Public</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4755973138899128644</ID>
      <Name>ExpertGroupID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4738786755895736067</ID>
      <Name>ObservorGroupID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4795628834089293376</ID>
      <Name>ObservorID</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4937017526211341057</ID>
      <Name>SendResultInfo</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5035166923049630106</ID>
      <Name>ReferralToOrganization</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5094187621771333101</ID>
      <Name>ReferralToUniversity</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5320885208726423155</ID>
      <Name>IsNotInCertainUniversities</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4770311836277663579</ID>
      <Name>ProblemTypeSub</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Public</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5129605007391441647</ID>
      <Name>ITExpert</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5258556490836489646</ID>
      <Name>SendToTazarv</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5615491879991672090</ID>
      <Name>DescriptionInfo</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>''''</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4808417478930550165</ID>
      <Name>InstitudeID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4861471879777382440</ID>
      <Name>UniversityID</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5611201786585541136</ID>
      <Name>NeedTazarvSupport</Name>
      <Value>false</Value>
      <ParameterType>Bit</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>false</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4832702164274059749</ID>
      <Name>University</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5354894206024267804</ID>
      <Name>Description</Name>
      <Value />
      <ParameterType>NVarChar</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>''''</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5652333981498134328</ID>
      <Name>Institude</Name>
      <Value>0</Value>
      <ParameterType>Int</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>5214259940558917971</ID>
      <Name>Expert</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
    <Parameter>
      <ID>4989206508980579794</ID>
      <Name>txtGroupIDInfo</Name>
      <Value>0</Value>
      <ParameterType>BigInt</ParameterType>
      <AccessLevel>Private</AccessLevel>
      <Description></Description>
      <DefaultValue>0</DefaultValue>
    </Parameter>
  </Parameters>
  <Permissions>
    <Permission>
      <ID>5627111493590920407</ID>
      <Name>کاربر سامانه سجاد</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5639443057853924965</ParameterId>
    </Permission>
    <Permission>
      <ID>4987312281844816726</ID>
      <Name>کاربر مربوطه مدیریت سازمان</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5259953627560440632</ParameterId>
    </Permission>
    <Permission>
      <ID>5123372079034883419</ID>
      <Name>اغازگر</Name>
      <Type>Plural</Type>
      <IsStartPermission>True</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId>گروه پرسش و پاسخ</GroupId>
      <GroupGUID>bbb00970-a2e7-4752-8103-6573b14ae1d3</GroupGUID>
      <ParameterId />
    </Permission>
    <Permission>
      <ID>5584280607072738523</ID>
      <Name>کارشناس پشتیبان سامانه سجاد</Name>
      <Type>Plural</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId>پیشتیبانان سامانه سجاد</GroupId>
      <GroupGUID>c24f4e18-c47e-4a4a-8342-4deeb9866de8</GroupGUID>
      <ParameterId />
    </Permission>
    <Permission>
      <ID>5299052617432131194</ID>
      <Name>گروه ارجاع گیرنده</Name>
      <Type>Plural</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5374546887164210331</ParameterId>
    </Permission>
    <Permission>
      <ID>4802737424414406224</ID>
      <Name>فناوری اطلاعات</Name>
      <Type>Plural</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId>پشتیبانی سامانه جامع امور دانشجویان</GroupId>
      <GroupGUID>a6dec91a-8f74-4bf5-beec-f2acedd52964</GroupGUID>
      <ParameterId />
    </Permission>
    <Permission>
      <ID>4922299304271650305</ID>
      <Name>کاربر ارجاع گیرنده</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>4761552531232016649</ParameterId>
    </Permission>
    <Permission>
      <ID>5440811842417883169</ID>
      <Name>کاربر ثبت کننده</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5340628198769156907</ParameterId>
    </Permission>
    <Permission>
      <ID>4705316877560878449</ID>
      <Name>h</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5374546887164210331</ParameterId>
    </Permission>
    <Permission>
      <ID>4921597879240552456</ID>
      <Name>کارشناس ارجاع گیرنده</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5381315451910707650</ParameterId>
    </Permission>
    <Permission>
      <ID>5707197081783210608</ID>
      <Name>SABOUNIA</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId>SABOUNIA</UserId>
      <UserGUID>60472146-ac6d-44bb-a71f-81a12e4c2aae</UserGUID>
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId />
    </Permission>
    <Permission>
      <ID>4965599692467491054</ID>
      <Name>گروه مربوطه مدیریت سازمان</Name>
      <Type>Plural</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>4755973138899128644</ParameterId>
    </Permission>
    <Permission>
      <ID>5742634669489320799</ID>
      <Name>کاربر دانشگاه یا سازمان</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>4795628834089293376</ParameterId>
    </Permission>
    <Permission>
      <ID>5160115988394170729</ID>
      <Name>گروه دانشگاه یا سازمان</Name>
      <Type>Plural</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>4738786755895736067</ParameterId>
    </Permission>
    <Permission>
      <ID>5679300244628402356</ID>
      <Name>دانشجو پورتال</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId>Admin</UserId>
      <UserGUID>fa79b472-83f5-4b4b-b3da-42e631959ed6</UserGUID>
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId />
    </Permission>
    <Permission>
      <ID>4886420678401213831</ID>
      <Name>کارشناس IT</Name>
      <Type>Single</Type>
      <IsStartPermission>False</IsStartPermission>
      <Description></Description>
      <UserId />
      <UserGUID />
      <RoleId />
      <RoleGUID />
      <GroupId />
      <GroupGUID />
      <ParameterId>5129605007391441647</ParameterId>
    </Permission>
  </Permissions>
  <Forms>
    <Form>
      <ID>21041</ID>
    </Form>
  </Forms>
</Workflow>','1403/11/08 11:14:18',  N'<BPMS_Workflow>
  <GUID>d5318180-8a61-4d5f-8cb9-e719587f8a0d</GUID>
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
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4656243688660777640 AND WorkflowId = 2000045 AND ComponentId = 4684984903127663695 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353899,4656243688660777640,2000045,4684984903127663695,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4656243688660777640,WorkflowId = 2000045,ComponentId = 4684984903127663695,FormId = 21041 WHERE ParameterComponenetId = 200353899
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5340628198769156907 AND WorkflowId = 2000045 AND ComponentId = 5231956594990321764 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353900,5340628198769156907,2000045,5231956594990321764,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5340628198769156907,WorkflowId = 2000045,ComponentId = 5231956594990321764,FormId = 21041 WHERE ParameterComponenetId = 200353900
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5185298331503389160 AND WorkflowId = 2000045 AND ComponentId = 5668558491494590571 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353901,5185298331503389160,2000045,5668558491494590571,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5185298331503389160,WorkflowId = 2000045,ComponentId = 5668558491494590571,FormId = 21041 WHERE ParameterComponenetId = 200353901
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4709416400049023481 AND WorkflowId = 2000045 AND ComponentId = 5021001924506054425 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353902,4709416400049023481,2000045,5021001924506054425,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4709416400049023481,WorkflowId = 2000045,ComponentId = 5021001924506054425,FormId = 21041 WHERE ParameterComponenetId = 200353902
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4909749106365187769 AND WorkflowId = 2000045 AND ComponentId = 4684984903127663695 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353903,4909749106365187769,2000045,4684984903127663695,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4909749106365187769,WorkflowId = 2000045,ComponentId = 4684984903127663695,FormId = 21041 WHERE ParameterComponenetId = 200353903
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5598418831578553810 AND WorkflowId = 2000045 AND ComponentId = 5656188629762278570 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353904,5598418831578553810,2000045,5656188629762278570,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5598418831578553810,WorkflowId = 2000045,ComponentId = 5656188629762278570,FormId = 21041 WHERE ParameterComponenetId = 200353904
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5119275183439000772 AND WorkflowId = 2000045 AND ComponentId = 4798298711155420350 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353905,5119275183439000772,2000045,4798298711155420350,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5119275183439000772,WorkflowId = 2000045,ComponentId = 4798298711155420350,FormId = 21041 WHERE ParameterComponenetId = 200353905
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5257977154521948043 AND WorkflowId = 2000045 AND ComponentId = 5410123904378380874 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353906,5257977154521948043,2000045,5410123904378380874,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5257977154521948043,WorkflowId = 2000045,ComponentId = 5410123904378380874,FormId = 21041 WHERE ParameterComponenetId = 200353906
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4685877624631256695 AND WorkflowId = 2000045 AND ComponentId = 5734364465859836924 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353907,4685877624631256695,2000045,5734364465859836924,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4685877624631256695,WorkflowId = 2000045,ComponentId = 5734364465859836924,FormId = 21041 WHERE ParameterComponenetId = 200353907
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4660987194035506110 AND WorkflowId = 2000045 AND ComponentId = 4783877636946764447 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353908,4660987194035506110,2000045,4783877636946764447,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4660987194035506110,WorkflowId = 2000045,ComponentId = 4783877636946764447,FormId = 21041 WHERE ParameterComponenetId = 200353908
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5127421865626688020 AND WorkflowId = 2000045 AND ComponentId = 5588901027094583235 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353909,5127421865626688020,2000045,5588901027094583235,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5127421865626688020,WorkflowId = 2000045,ComponentId = 5588901027094583235,FormId = 21041 WHERE ParameterComponenetId = 200353909
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5440808819763184062 AND WorkflowId = 2000045 AND ComponentId = 5021001924506054425 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353910,5440808819763184062,2000045,5021001924506054425,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5440808819763184062,WorkflowId = 2000045,ComponentId = 5021001924506054425,FormId = 21041 WHERE ParameterComponenetId = 200353910
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5749109370960274398 AND WorkflowId = 2000045 AND ComponentId = 4684984903127663695 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353911,5749109370960274398,2000045,4684984903127663695,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5749109370960274398,WorkflowId = 2000045,ComponentId = 4684984903127663695,FormId = 21041 WHERE ParameterComponenetId = 200353911
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5759578382888991340 AND WorkflowId = 2000045 AND ComponentId = 5684013610708670363 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353912,5759578382888991340,2000045,5684013610708670363,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5759578382888991340,WorkflowId = 2000045,ComponentId = 5684013610708670363,FormId = 21041 WHERE ParameterComponenetId = 200353912
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4903377208807737207 AND WorkflowId = 2000045 AND ComponentId = 5392809815104644429 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353913,4903377208807737207,2000045,5392809815104644429,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4903377208807737207,WorkflowId = 2000045,ComponentId = 5392809815104644429,FormId = 21041 WHERE ParameterComponenetId = 200353913
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5518803313678431636 AND WorkflowId = 2000045 AND ComponentId = 5447864216398602997 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353914,5518803313678431636,2000045,5447864216398602997,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5518803313678431636,WorkflowId = 2000045,ComponentId = 5447864216398602997,FormId = 21041 WHERE ParameterComponenetId = 200353914
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5681153490470800943 AND WorkflowId = 2000045 AND ComponentId = 4819760547104058387 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353915,5681153490470800943,2000045,4819760547104058387,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5681153490470800943,WorkflowId = 2000045,ComponentId = 4819760547104058387,FormId = 21041 WHERE ParameterComponenetId = 200353915
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5101148325991036149 AND WorkflowId = 2000045 AND ComponentId = 5279528291598107148 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353916,5101148325991036149,2000045,5279528291598107148,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5101148325991036149,WorkflowId = 2000045,ComponentId = 5279528291598107148,FormId = 21041 WHERE ParameterComponenetId = 200353916
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5751908769220014798 AND WorkflowId = 2000045 AND ComponentId = 5525857097060403882 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353917,5751908769220014798,2000045,5525857097060403882,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5751908769220014798,WorkflowId = 2000045,ComponentId = 5525857097060403882,FormId = 20295 WHERE ParameterComponenetId = 200353917
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5410664933669157193 AND WorkflowId = 2000045 AND ComponentId = 5195609748428162630 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353918,5410664933669157193,2000045,5195609748428162630,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5410664933669157193,WorkflowId = 2000045,ComponentId = 5195609748428162630,FormId = 20295 WHERE ParameterComponenetId = 200353918
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4704085124094693244 AND WorkflowId = 2000045 AND ComponentId = 4948200665753577473 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353919,4704085124094693244,2000045,4948200665753577473,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4704085124094693244,WorkflowId = 2000045,ComponentId = 4948200665753577473,FormId = 20295 WHERE ParameterComponenetId = 200353919
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5199522934282053140 AND WorkflowId = 2000045 AND ComponentId = 5319920761961862933 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353920,5199522934282053140,2000045,5319920761961862933,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5199522934282053140,WorkflowId = 2000045,ComponentId = 5319920761961862933,FormId = 20295 WHERE ParameterComponenetId = 200353920
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5416730154019680888 AND WorkflowId = 2000045 AND ComponentId = 5139528391810745165 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353921,5416730154019680888,2000045,5139528391810745165,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5416730154019680888,WorkflowId = 2000045,ComponentId = 5139528391810745165,FormId = 20295 WHERE ParameterComponenetId = 200353921
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5500185179236591797 AND WorkflowId = 2000045 AND ComponentId = 5581934880622446261 AND FormId = 20295 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353922,5500185179236591797,2000045,5581934880622446261,20295) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5500185179236591797,WorkflowId = 2000045,ComponentId = 5581934880622446261,FormId = 20295 WHERE ParameterComponenetId = 200353922
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5688283105553776774 AND WorkflowId = 2000045 AND ComponentId = 4676825254353781655 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353923,5688283105553776774,2000045,4676825254353781655,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5688283105553776774,WorkflowId = 2000045,ComponentId = 4676825254353781655,FormId = 21041 WHERE ParameterComponenetId = 200353923
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4635903430984750997 AND WorkflowId = 2000045 AND ComponentId = 4858775235086145070 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353924,4635903430984750997,2000045,4858775235086145070,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4635903430984750997,WorkflowId = 2000045,ComponentId = 4858775235086145070,FormId = 21041 WHERE ParameterComponenetId = 200353924
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5517303748452609367 AND WorkflowId = 2000045 AND ComponentId = 4659311251708217602 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353925,5517303748452609367,2000045,4659311251708217602,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5517303748452609367,WorkflowId = 2000045,ComponentId = 4659311251708217602,FormId = 21041 WHERE ParameterComponenetId = 200353925
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5607988555014458378 AND WorkflowId = 2000045 AND ComponentId = 5624003739167460820 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353926,5607988555014458378,2000045,5624003739167460820,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5607988555014458378,WorkflowId = 2000045,ComponentId = 5624003739167460820,FormId = 21041 WHERE ParameterComponenetId = 200353926
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5305303899668709726 AND WorkflowId = 2000045 AND ComponentId = 5410123904378380874 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353927,5305303899668709726,2000045,5410123904378380874,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5305303899668709726,WorkflowId = 2000045,ComponentId = 5410123904378380874,FormId = 21041 WHERE ParameterComponenetId = 200353927
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4864472286525018705 AND WorkflowId = 2000045 AND ComponentId = 5684013610708670363 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353928,4864472286525018705,2000045,5684013610708670363,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4864472286525018705,WorkflowId = 2000045,ComponentId = 5684013610708670363,FormId = 21041 WHERE ParameterComponenetId = 200353928
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5636909980517002567 AND WorkflowId = 2000045 AND ComponentId = 5588901027094583235 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353929,5636909980517002567,2000045,5588901027094583235,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5636909980517002567,WorkflowId = 2000045,ComponentId = 5588901027094583235,FormId = 21041 WHERE ParameterComponenetId = 200353929
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5406478022168974661 AND WorkflowId = 2000045 AND ComponentId = 5307054846183699357 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353930,5406478022168974661,2000045,5307054846183699357,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5406478022168974661,WorkflowId = 2000045,ComponentId = 5307054846183699357,FormId = 21041 WHERE ParameterComponenetId = 200353930
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4749049630855314398 AND WorkflowId = 2000045 AND ComponentId = 4931141982883407186 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353931,4749049630855314398,2000045,4931141982883407186,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4749049630855314398,WorkflowId = 2000045,ComponentId = 4931141982883407186,FormId = 21041 WHERE ParameterComponenetId = 200353931
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5248515133110302934 AND WorkflowId = 2000045 AND ComponentId = 4812790960432435113 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353932,5248515133110302934,2000045,4812790960432435113,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5248515133110302934,WorkflowId = 2000045,ComponentId = 4812790960432435113,FormId = 21041 WHERE ParameterComponenetId = 200353932
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5573052384747355346 AND WorkflowId = 2000045 AND ComponentId = 5656188629762278570 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353933,5573052384747355346,2000045,5656188629762278570,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5573052384747355346,WorkflowId = 2000045,ComponentId = 5656188629762278570,FormId = 21041 WHERE ParameterComponenetId = 200353933
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5284838067383089349 AND WorkflowId = 2000045 AND ComponentId = 4911623689532144782 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353934,5284838067383089349,2000045,4911623689532144782,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5284838067383089349,WorkflowId = 2000045,ComponentId = 4911623689532144782,FormId = 21041 WHERE ParameterComponenetId = 200353934
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5538939670604997851 AND WorkflowId = 2000045 AND ComponentId = 4839663788828962407 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353935,5538939670604997851,2000045,4839663788828962407,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5538939670604997851,WorkflowId = 2000045,ComponentId = 4839663788828962407,FormId = 21041 WHERE ParameterComponenetId = 200353935
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5281938850536744029 AND WorkflowId = 2000045 AND ComponentId = 5591128339706187262 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353936,5281938850536744029,2000045,5591128339706187262,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5281938850536744029,WorkflowId = 2000045,ComponentId = 5591128339706187262,FormId = 21041 WHERE ParameterComponenetId = 200353936
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5083293721686730547 AND WorkflowId = 2000045 AND ComponentId = 5656188629762278570 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353937,5083293721686730547,2000045,5656188629762278570,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5083293721686730547,WorkflowId = 2000045,ComponentId = 5656188629762278570,FormId = 21041 WHERE ParameterComponenetId = 200353937
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4797135798787943673 AND WorkflowId = 2000045 AND ComponentId = 4949257785239518214 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353938,4797135798787943673,2000045,4949257785239518214,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4797135798787943673,WorkflowId = 2000045,ComponentId = 4949257785239518214,FormId = 21041 WHERE ParameterComponenetId = 200353938
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4892567329320323540 AND WorkflowId = 2000045 AND ComponentId = 5274322539269778963 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353939,4892567329320323540,2000045,5274322539269778963,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4892567329320323540,WorkflowId = 2000045,ComponentId = 5274322539269778963,FormId = 21041 WHERE ParameterComponenetId = 200353939
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5320885208726423155 AND WorkflowId = 2000045 AND ComponentId = 5425298620874923793 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353940,5320885208726423155,2000045,5425298620874923793,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5320885208726423155,WorkflowId = 2000045,ComponentId = 5425298620874923793,FormId = 21041 WHERE ParameterComponenetId = 200353940
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4905939780520136075 AND WorkflowId = 2000045 AND ComponentId = 4948200665753577473 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353941,4905939780520136075,2000045,4948200665753577473,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4905939780520136075,WorkflowId = 2000045,ComponentId = 4948200665753577473,FormId = 21041 WHERE ParameterComponenetId = 200353941
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5008597864531390565 AND WorkflowId = 2000045 AND ComponentId = 4948200665753577473 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353942,5008597864531390565,2000045,4948200665753577473,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5008597864531390565,WorkflowId = 2000045,ComponentId = 4948200665753577473,FormId = 21041 WHERE ParameterComponenetId = 200353942
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5094187621771333101 AND WorkflowId = 2000045 AND ComponentId = 5139528391810745165 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353943,5094187621771333101,2000045,5139528391810745165,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5094187621771333101,WorkflowId = 2000045,ComponentId = 5139528391810745165,FormId = 21041 WHERE ParameterComponenetId = 200353943
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5258556490836489646 AND WorkflowId = 2000045 AND ComponentId = 4731394453799451628 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353944,5258556490836489646,2000045,4731394453799451628,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5258556490836489646,WorkflowId = 2000045,ComponentId = 4731394453799451628,FormId = 21041 WHERE ParameterComponenetId = 200353944
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 5615491879991672090 AND WorkflowId = 2000045 AND ComponentId = 5409369756743812385 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353945,5615491879991672090,2000045,5409369756743812385,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 5615491879991672090,WorkflowId = 2000045,ComponentId = 5409369756743812385,FormId = 21041 WHERE ParameterComponenetId = 200353945
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4808417478930550165 AND WorkflowId = 2000045 AND ComponentId = 5208403737968325202 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353946,4808417478930550165,2000045,5208403737968325202,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4808417478930550165,WorkflowId = 2000045,ComponentId = 5208403737968325202,FormId = 21041 WHERE ParameterComponenetId = 200353946
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4861471879777382440 AND WorkflowId = 2000045 AND ComponentId = 5610076180504582867 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353947,4861471879777382440,2000045,5610076180504582867,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4861471879777382440,WorkflowId = 2000045,ComponentId = 5610076180504582867,FormId = 21041 WHERE ParameterComponenetId = 200353947
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblParameterComponent ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblParameterComponent WHERE  ParameterId = 4989206508980579794 AND WorkflowId = 2000045 AND ComponentId = 5214184851893828049 AND FormId = 21041 ) 
 INSERT INTO Workflow.TblParameterComponent(ParameterComponenetId,ParameterId,WorkflowId,ComponentId,FormId ) VALUES (200353948,4989206508980579794,2000045,5214184851893828049,21041) 
 ELSE UPDATE Workflow.TblParameterComponent SET ParameterId = 4989206508980579794,WorkflowId = 2000045,ComponentId = 5214184851893828049,FormId = 21041 WHERE ParameterComponenetId = 200353948
GO
----------
 SET IDENTITY_INSERT Workflow.TblParameterComponent OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140843,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140843
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140844,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140844
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140845,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,2, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140845
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140846,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140846
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140847,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140847
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140848,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,1,0,2, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140848
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'1' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200140849,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'1',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'1',IsPublished = NULL WHERE ActivityAccessPermissionId = 200140849
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141102,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141102
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141103,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141103
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141104,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141104
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141105,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141105
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141106,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,1,0,2, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141106
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141107,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141107
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141108,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141108
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'2' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141109,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'2',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'2',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141109
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141384,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141384
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141385,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141385
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141386,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141386
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141387,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141387
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141388,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,1,0,2, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141388
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141389,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141389
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141734,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141734
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141736,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141736
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'3' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200141737,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'3',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'3',IsPublished = NULL WHERE ActivityAccessPermissionId = 200141737
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144660,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144660
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144661,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144661
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144662,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144662
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144663,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144663
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144664,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144664
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144665,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144665
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144666,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144666
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200144667,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200144667
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5283005780016994196 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5401303478583947617 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'4' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145037,2000045,5283005780016994196,NULL,NULL,NULL,5401303478583947617,0,0,1, N'4',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5283005780016994196,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5401303478583947617,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'4',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145037
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5283005780016994196 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5401303478583947617 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145267,2000045,5283005780016994196,NULL,NULL,NULL,5401303478583947617,0,0,1, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5283005780016994196,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5401303478583947617,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145267
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5283005780016994196 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5401303478583947617 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145306,2000045,5283005780016994196,NULL,NULL,NULL,5401303478583947617,0,0,1, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5283005780016994196,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5401303478583947617,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145306
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145382,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145382
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145383,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145383
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145384,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145384
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145385,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145385
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145386,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145386
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145387,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145387
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145388,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145388
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145389,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145389
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145390,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145390
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145391,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145391
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145392,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145392
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145393,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145393
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'5' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145394,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'5',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'5',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145394
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145395,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145395
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145396,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145396
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145397,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145397
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145398,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145398
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145399,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145399
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145400,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145400
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145401,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145401
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145402,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145402
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'6' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145403,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'6',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'6',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145403
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145450,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145450
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145451,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145451
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145452,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145452
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145453,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145453
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145454,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145454
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145455,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145455
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145456,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145456
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145457,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145457
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'7' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145458,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'7',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'7',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145458
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145498,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145498
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145499,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145499
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145500,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145500
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145501,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145501
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145502,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145502
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145503,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145503
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145504,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145504
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145505,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145505
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'8' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145506,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'8',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'8',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145506
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145516,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145516
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145517,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145517
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145518,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145518
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145519,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145519
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145520,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145520
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145521,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145521
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145522,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145522
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145523,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145523
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'9' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145524,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'9',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'9',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145524
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145534,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145534
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145535,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145535
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145536,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145536
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145537,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145537
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145538,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145538
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145539,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145539
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145540,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145540
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145541,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145541
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'10' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145542,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'10',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'10',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145542
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145552,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145552
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145553,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145553
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145554,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145554
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145555,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145555
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145556,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145556
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145557,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145557
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145558,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145558
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145559,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145559
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'11' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145560,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'11',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'11',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145560
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145997,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145997
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145998,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145998
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200145999,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200145999
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146000,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146000
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146001,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146001
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146002,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146002
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146003,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146003
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146004,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146004
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'12' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146005,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'12',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'12',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146005
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146995,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146995
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146996,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146996
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146997,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146997
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146998,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146998
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200146999,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200146999
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200147000,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200147000
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200147001,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200147001
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200147002,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200147002
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200147003,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200147003
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'13' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200147004,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'13',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'13',IsPublished = NULL WHERE ActivityAccessPermissionId = 200147004
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149480,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149480
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149481,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149481
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149482,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149482
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149483,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149483
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149484,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149484
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149485,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149485
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149486,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149486
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149487,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149487
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149488,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149488
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'14' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200149489,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'14',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'14',IsPublished = NULL WHERE ActivityAccessPermissionId = 200149489
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195062,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195062
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195063,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195063
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195064,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195064
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195065,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195065
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195066,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195066
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195067,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195067
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195068,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195068
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195069,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195069
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195070,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195070
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'15' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200195071,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'15',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'15',IsPublished = NULL WHERE ActivityAccessPermissionId = 200195071
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197588,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197588
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197589,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197589
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197590,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197590
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197591,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197591
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197592,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197592
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197593,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197593
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197594,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197594
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197595,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197595
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197596,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197596
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'17' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200197597,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'17',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'17',IsPublished = NULL WHERE ActivityAccessPermissionId = 200197597
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199471,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199471
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199472,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199472
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199473,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199473
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199474,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199474
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199475,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199475
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199476,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199476
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199477,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199477
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199478,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199478
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199479,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199479
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'18' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199480,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'18',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'18',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199480
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199531,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199531
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199532,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199532
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199533,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199533
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199534,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199534
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199535,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199535
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199536,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199536
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199537,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199537
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199538,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199538
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199539,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199539
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'19' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200199540,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'19',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'19',IsPublished = NULL WHERE ActivityAccessPermissionId = 200199540
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200440,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200440
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200441,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200441
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200442,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200442
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200443,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200443
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200444,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200444
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200445,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200445
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200446,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200446
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200447,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200447
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200448,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200448
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'20' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200200449,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'20',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'20',IsPublished = NULL WHERE ActivityAccessPermissionId = 200200449
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204897,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204897
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204898,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204898
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204899,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204899
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204900,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204900
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204901,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204901
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204902,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204902
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204903,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204903
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204904,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204904
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204905,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204905
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204906,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204906
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'21' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200204907,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'21',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'21',IsPublished = NULL WHERE ActivityAccessPermissionId = 200204907
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200206537,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200206537
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200206538,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200206538
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200206539,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200206539
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213042,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213042
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213043,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213043
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213044,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213044
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213045,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213045
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213046,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213046
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213047,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213047
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213048,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213048
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213049,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213049
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213050,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213050
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213051,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213051
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'23' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200213052,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'23',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'23',IsPublished = NULL WHERE ActivityAccessPermissionId = 200213052
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217976,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217976
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217977,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217977
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217978,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217978
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217982,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217982
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217983,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217983
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217984,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217984
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217985,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217985
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'22' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200217986,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'22',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'22',IsPublished = NULL WHERE ActivityAccessPermissionId = 200217986
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219076,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219076
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219077,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219077
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219078,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219078
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219079,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219079
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219080,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219080
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219081,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219081
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219082,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219082
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219083,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219083
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219084,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219084
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219085,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219085
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'24' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219086,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'24',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'24',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219086
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219499,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219499
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219500,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219500
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219501,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219501
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219502,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219502
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219503,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219503
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219504,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219504
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219505,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219505
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219506,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219506
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219507,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219507
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219508,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219508
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'25' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200219509,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'25',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'25',IsPublished = NULL WHERE ActivityAccessPermissionId = 200219509
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226123,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226123
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226124,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226124
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226125,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226125
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226126,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226126
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226127,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226127
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226128,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226128
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226129,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226129
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226130,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226130
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226131,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226131
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226132,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226132
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'27' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200226133,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'27',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'27',IsPublished = NULL WHERE ActivityAccessPermissionId = 200226133
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227726,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227726
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227727,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227727
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227728,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227728
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227729,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227729
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227730,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227730
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227731,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227731
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227732,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227732
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227733,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227733
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227734,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227734
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227735,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227735
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'26' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200227736,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'26',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'26',IsPublished = NULL WHERE ActivityAccessPermissionId = 200227736
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231190,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231190
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231191,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231191
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231192,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231192
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231193,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231193
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231194,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231194
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231195,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231195
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231196,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231196
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231197,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231197
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231198,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231198
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231199,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231199
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'28' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231200,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'28',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'28',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231200
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4949331707039661401 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5761552061192811898 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231858,2000045,4949331707039661401,NULL,NULL,NULL,5761552061192811898,1,0,2, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4949331707039661401,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5761552061192811898,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231858
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231859,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231859
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231860,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231860
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231861,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231861
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231862,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231862
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231863,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231863
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231864,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231864
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231865,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231865
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231866,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231866
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231867,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231867
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231868,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231868
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231869,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231869
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4965599692467491054 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4755973138899128644 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231870,2000045,4965599692467491054,NULL,NULL,NULL,4755973138899128644,1,0,2, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4965599692467491054,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4755973138899128644,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231870
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5742634669489320799 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4795628834089293376 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231871,2000045,5742634669489320799,NULL,NULL,NULL,4795628834089293376,0,0,1, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5742634669489320799,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4795628834089293376,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231871
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5160115988394170729 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4738786755895736067 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231872,2000045,5160115988394170729,NULL,NULL,NULL,4738786755895736067,1,0,2, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5160115988394170729,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4738786755895736067,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231872
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5679300244628402356 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'30' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200231873,2000045,5679300244628402356,1,NULL,NULL,NULL,0,0,0, N'30',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5679300244628402356,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'30',IsPublished = NULL WHERE ActivityAccessPermissionId = 200231873
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232579,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232579
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232580,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232580
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232581,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232581
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232582,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232582
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232583,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232583
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232584,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232584
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232585,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232585
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232586,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232586
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232587,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232587
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232588,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232588
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232589,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232589
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4965599692467491054 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4755973138899128644 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'29' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200232590,2000045,4965599692467491054,NULL,NULL,NULL,4755973138899128644,1,0,2, N'29',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4965599692467491054,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4755973138899128644,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'29',IsPublished = NULL WHERE ActivityAccessPermissionId = 200232590
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4949331707039661401 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5761552061192811898 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242610,2000045,4949331707039661401,NULL,NULL,NULL,5761552061192811898,1,0,2, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4949331707039661401,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5761552061192811898,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242610
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5627111493590920407 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5639443057853924965 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242611,2000045,5627111493590920407,NULL,NULL,NULL,5639443057853924965,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5627111493590920407,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5639443057853924965,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242611
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4987312281844816726 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5259953627560440632 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242612,2000045,4987312281844816726,NULL,NULL,NULL,5259953627560440632,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4987312281844816726,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5259953627560440632,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242612
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5123372079034883419 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 852 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 1 AND Kind = 0 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242613,2000045,5123372079034883419,NULL,NULL,852,NULL,1,1,0, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5123372079034883419,UserId = NULL , RoleId = NULL , GroupId = 852,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 1,Kind = 0,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242613
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5584280607072738523 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 923 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242614,2000045,5584280607072738523,NULL,NULL,923,NULL,1,0,0, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5584280607072738523,UserId = NULL , RoleId = NULL , GroupId = 923,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242614
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5299052617432131194 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242615,2000045,5299052617432131194,NULL,NULL,NULL,5374546887164210331,1,0,2, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5299052617432131194,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242615
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4802737424414406224 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND GroupId = 55 AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242616,2000045,4802737424414406224,NULL,NULL,55,NULL,1,0,0, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4802737424414406224,UserId = NULL , RoleId = NULL , GroupId = 55,ParameterId = NULL , IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242616
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4922299304271650305 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4761552531232016649 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242617,2000045,4922299304271650305,NULL,NULL,NULL,4761552531232016649,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4922299304271650305,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4761552531232016649,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242617
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5440811842417883169 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5340628198769156907 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242618,2000045,5440811842417883169,NULL,NULL,NULL,5340628198769156907,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5440811842417883169,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5340628198769156907,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242618
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4705316877560878449 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5374546887164210331 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242619,2000045,4705316877560878449,NULL,NULL,NULL,5374546887164210331,0,0,2, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4705316877560878449,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5374546887164210331,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242619
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4921597879240552456 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5381315451910707650 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242620,2000045,4921597879240552456,NULL,NULL,NULL,5381315451910707650,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4921597879240552456,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5381315451910707650,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242620
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5707197081783210608 AND UserId = 51 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242621,2000045,5707197081783210608,51,NULL,NULL,NULL,0,0,0, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5707197081783210608,UserId = 51,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242621
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4965599692467491054 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4755973138899128644 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242622,2000045,4965599692467491054,NULL,NULL,NULL,4755973138899128644,1,0,2, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4965599692467491054,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4755973138899128644,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242622
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5742634669489320799 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4795628834089293376 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242623,2000045,5742634669489320799,NULL,NULL,NULL,4795628834089293376,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5742634669489320799,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4795628834089293376,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242623
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5160115988394170729 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 4738786755895736067 AND IsAssignToAll = 1 AND IsStartActivityAccessPermission = 0 AND Kind = 2 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242624,2000045,5160115988394170729,NULL,NULL,NULL,4738786755895736067,1,0,2, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5160115988394170729,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 4738786755895736067,IsAssignToAll = 1,IsStartActivityAccessPermission = 0,Kind = 2,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242624
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 5679300244628402356 AND UserId = 1 AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ISNULL(ParameterId,'') = '' AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 0 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242625,2000045,5679300244628402356,1,NULL,NULL,NULL,0,0,0, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 5679300244628402356,UserId = 1,RoleId = NULL , GroupId = NULL , ParameterId = NULL , IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 0,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242625
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission ON 
GO
 IF NOT EXISTS (SELECT * FROM Workflow.TblActivityAccessPermission WHERE  WorkflowId = 2000045 AND PermissionId = 4886420678401213831 AND ISNULL(UserId,'') = '' AND ISNULL(RoleId,'') = '' AND ISNULL(GroupId,'') = '' AND ParameterId = 5129605007391441647 AND IsAssignToAll = 0 AND IsStartActivityAccessPermission = 0 AND Kind = 1 AND Version = N'31' AND ISNULL(IsPublished , '0') = '0'  ) 
 INSERT INTO Workflow.TblActivityAccessPermission(ActivityAccessPermissionId,WorkflowId,PermissionId,UserId,RoleId,GroupId,ParameterId,IsAssignToAll,IsStartActivityAccessPermission,Kind,Version,IsPublished ) VALUES (200242626,2000045,4886420678401213831,NULL,NULL,NULL,5129605007391441647,0,0,1, N'31',NULL) 
 ELSE UPDATE Workflow.TblActivityAccessPermission SET WorkflowId = 2000045,PermissionId = 4886420678401213831,UserId = NULL , RoleId = NULL , GroupId = NULL , ParameterId = 5129605007391441647,IsAssignToAll = 0,IsStartActivityAccessPermission = 0,Kind = 1,Version = N'31',IsPublished = NULL WHERE ActivityAccessPermissionId = 200242626
GO
----------
 SET IDENTITY_INSERT Workflow.TblActivityAccessPermission OFF 
GO
