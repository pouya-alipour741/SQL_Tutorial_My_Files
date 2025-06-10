
--changed forms and wfs : 580, 581, 591, 592, 31328, 31329, 31331 - wf: فرآیند ثبت درخواست منابع انسانی 


---debug tools

--drop table if exists #tbl

--go

--create table #tbl 
--(
--	MainSubject nvarchar(100),
--	MainBranch int,
--	ParentID int
--)
--insert into #tbl
--exec sp_cu_TreeView_frm31328

--go

--WITH Hierarchy AS (
--    -- Anchor: root node
--    SELECT 
--        MainSubject,
--        MainBranch,
--        ParentID,
--        CAST(MainSubject AS NVARCHAR(MAX)) AS Path
--    FROM #tbl
--    WHERE ParentID = -1

--    UNION ALL

--    -- Recursive step: find children
--    SELECT 
--        t.MainSubject,
--        t.MainBranch,
--        t.ParentID,
--        CAST(h.Path + N' > ' + t.MainSubject AS NVARCHAR(MAX)) AS Path
--    FROM #tbl t
--    JOIN Hierarchy h ON t.ParentID = h.MainBranch
--)

--SELECT MainSubject, Path AS MainSubjectPath,MainBranch,ParentID
--FROM Hierarchy
--ORDER BY MainBranch;