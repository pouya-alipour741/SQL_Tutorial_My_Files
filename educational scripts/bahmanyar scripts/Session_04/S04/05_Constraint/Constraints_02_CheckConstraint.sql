-- year > 1360
Go
--code >= 0 and code < = 1000
Go
--SellEndDate > = SellStartDate OR SellEndDate IS NULL
Go
-- to require entries in the zip column to be 5 digits, type:
		--zip LIKE '[0-9][0-9][0-9][0-9][0-9]'
Go
--note:
--Make sure to enclose any non-numeric constraint values in single quotation marks (').
Go
--Create TABLE TestCheckConstraint( 
--	Code int Null ,
--	ColumnC varchar Null,
--    ColumnD int NULL CONSTRAINT CHK_ColumnD_DocExc CHECK (ColumnD > 10 AND ColumnD < 50));
GO
--ALTER TABLE TestCheckConstraint 
--   ADD ColumnD int NULL 
--   CONSTRAINT CHK_ColumnD_DocExc 
--   CHECK (ColumnD > 10 AND ColumnD < 50);
GO
--ALTER TABLE TestCheckConstraint 
--   ADD ColumnC int NULL 
--   CONSTRAINT CHK_ColumnC_DocExc 
--   CHECK (ColumnD LIKE '[0-9][0-9][0-9][0-9][0-9]');
GO
--Sample:
--CONSTRAINT CK_emp_id CHECK (emp_id LIKE 
--										'[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' 
--										OR emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]')
Go
--What is [FM]?
--[FM]=Fill Mode  00123 ==> 123
--				  'June     ' ==> 'June'
--The Fill Mode modifier(FM):
	-- toggles the suppression of blank padding in character format elements like "MONTH" 
	--and leading zeros in numeric format elements like "YYYY"
Go
--Without [FM]:
	Create TABLE test100( 
						Code int Null ,
						ColumnC varchar(3) Null CONSTRAINT CHK_Columnc_DocExc CHECK (ColumnC Like '[0-9][0-9][0-9]'),
						ColumnD int NULL
						 );
GO
--With [FM]:
	Create TABLE test100( 
						Code int Null ,
						ColumnC char(3) Null CONSTRAINT CHK_Columnc_DocExc CHECK (ColumnC Like '[0-9][0-9][0-9][FM]'),
						ColumnD int NULL 
						);
GO
--Samples:
--CHECK (
--			emp_id IN ('1389', '0736', '0877', '1622', '1756')
--			OR emp_id LIKE '99[0-9][0-9]'
--		)