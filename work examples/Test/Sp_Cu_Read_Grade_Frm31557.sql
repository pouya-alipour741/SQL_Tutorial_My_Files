USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Read_Grade_Frm31557]    Script Date: 12/15/2024 2:42:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec Sp_Cu_Read_Grade_Frm31557 @cmbEducationPlace=N'-1',@ReqGradeID=N'1',@GUID=N'9f4477a3-45fe-4d74-9874-4bbf9519b4fb'
ALTER PROCEDURE [dbo].[Sp_Cu_Read_Grade_Frm31557]
@cmbEducationPlace AS INT,
@ReqGradeID bigint,
@GUID nvarchar(100)
AS
    BEGIN
	if @cmbEducationPlace=1 --داخل     
		BEGIN
		if @ReqGradeID=7 --کارشناسی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))--سوابق تحصیلی نزده
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (1,6,16) 
		end
		else
		select cast(1 as bit) as VisibleRes
		end
		----------------------------------------------------------
		else if @ReqGradeID=8--کارشناسی ارشد ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2)))--سوابق تحصیلی نزده
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (2,7,4)
		end

		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))--کارشناسی ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))--مقاطع قبلی کارشناسی ناپیوسته
        begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (1,6,16) 
		end
		else
		begin
		select cast(1 as bit) as VisibleRes
        end
		end
		-------------------------------------------------------------
		else if @ReqGradeID=9--دکتری تخصصی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (3,4,8) and EducationPlace=1) or (gradeid in (4,5,6,8) and EducationPlace=2)))--سوابق تحصیلی نزده
        begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (3,4,8) 
		end

		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (8) and EducationPlace=1) or (gradeid in (4,5) and EducationPlace=2)))--کارشناسی ارشد ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2)))
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (2,7,4)
		end

		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))--کارشناسی ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))
        begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (1,6,16) 
		end

		else
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(1 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (-1) 		
		end
		end	
		
		else
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(1 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (-1) 		
		end
		end
		---------------------------------------------------------
		else if @ReqGradeID=17--دکتري دستياري
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (5,9,4) and EducationPlace=1) or (gradeid=7 and EducationPlace=2)))--سوابق تحصیلی نزده
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (5,9,4) 
		end

		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (9) and EducationPlace=1) or (gradeid in (7) and EducationPlace=2)))--دکتری تخصصی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (3,4,8) and EducationPlace=1) or (gradeid in (4,5,6,8) and EducationPlace=2)))--ارشد
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (3,4,8)
		end
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (8) and EducationPlace=1) or (gradeid in (4,5) and EducationPlace=2)))--کارشناسی ارشد ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2)))--کارشناسی
        begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (2,7,4) 
		end
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))--کارشناسی ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))
        begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (1,6,16) 
		end
		end
		else
		begin
		select cast(1 as bit) as VisibleRes
		end
		end		
		end
		--------------
		----
		----
		-----
		----
		ELSE if @cmbEducationPlace = 2 --خارج
		BEGIN
		if @ReqGradeID=7--کارشناسی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))--سوابق تحصیلی نزده
        begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID=1
		end
		else
		begin
		select cast(1 as bit) as VisibleRes
		end
		end
		---------------------------------
		else if @ReqGradeID=8--کارشناسی ارشد ناپیوسته
		BEGIN
		IF not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2)))--سوابق تحصیلی نزده
		begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (2,3)
		end
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))--کارشناسی ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))--مقاطع قبلی کارشناسی ناپیوسته
		BEGIN
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID=1
		END
		else
		begin
		select cast(1 as bit) as VisibleRes
		end
		END
		---------------------------------
		else if @ReqGradeID=9--دکتری تخصصی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (3,4,8) and EducationPlace=1) or (gradeid in (4,5,6,8) and EducationPlace=2)))--سوابق تحصیلی نزده
        begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (4,5,6,8)
		end
        
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (8) and EducationPlace=1) or (gradeid in (4,5) and EducationPlace=2)))--کارشناسی ارشد ناپیوسته
		begin
		if not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2))) 
		begin 
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (2,3)
		end
		if exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		           where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))
				   and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))
		begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (1)
		end

		else
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(1 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (-1) 		
		end
		end
		
		else
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(1 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (-1) 		
		end
		end
		-----------------------------------
		else if @ReqGradeID=17--دکتري دستياري
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (5,9,4) and EducationPlace=1) or (gradeid=7 and EducationPlace=2)))--سوابق تحصیلی نزده
		begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (7)
		end

		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (9) and EducationPlace=1) or (gradeid in (7) and EducationPlace=2)))--دکتری تخصصی ناپیوسته
		begin
		if not exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		              where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (3,4,8) and EducationPlace=1) or (gradeid in (4,5,6,8) and EducationPlace=2)))--ارشد
		begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (4,5,6,8)
		end
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (8) and EducationPlace=1) or (gradeid in (4,5) and EducationPlace=2)))--کارشناسی ارشد ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (2,7,4) and EducationPlace=1) or (gradeid in (2,3) and EducationPlace=2)))--کارشناسی
        begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID in (2,3)
		end
		else if exists(select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		               where GUID=@GUID and ReqGradeID=@ReqGradeID and (gradeid in (7) and EducationPlace=1))--کارشناسی ناپیوسته
		        and not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords 
		                        where GUID=@GUID and ReqGradeID=@ReqGradeID and ((gradeid in (1,6,16) and EducationPlace=1) or (gradeid=1 and EducationPlace=2)))
        begin
		SELECT  Commision_GradeID EducationGradeID,
                Commision_GradeName AS EducationGradeTitle,cast(0 as bit) as VisibleRes
        FROM    Tbl_Cu_Base_Grade_StudentGetCertificateCode
        WHERE   ISNULL(IsActiver, 0) = 1 and Commision_GradeID=1
		end
		end
		else
		begin
		select cast(1 as bit) as VisibleRes
		end
		end
		END


		else
		begin
		SELECT S.EducationGradeID,S.EducationGradeTitle,cast(0 as bit) as VisibleRes FROM Tbl_Cu_EducationGrade S
		where EducationGradeID in (-1) 
		end
    end
