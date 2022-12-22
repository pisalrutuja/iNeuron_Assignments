use "BLABLABLA";

create or replace table Brilliant_British_cars (
  InvoiceDate string,
  Make	varchar(100),
  CountryName	varchar(100),
  IsDealer	varchar(100),
  SalePrice	integer,
  CostPrice	integer,
  TotalDiscount	integer,
  DeliveryCharge	integer,
  SpareParts	integer,
  LaborCost	integer,
  ClientName	varchar(100),
  Model	varchar(100),
  Color	varchar(100),
  ReportingYear	integer,
  ReportingMonth	integer,
  Registration_Date	string,
  VehicleType	varchar(100),
  InvoiceNumber	varchar(100),
  CountryISOCode	varchar(20),
  OuterPostode	varchar(20),
  Region varchar(100)
);


PUT file://<file_path>/BrilliantBritishCars.csv @BRILLIANT_BRITISH_CARS/ui1671516923426

COPY INTO "BLABLABLA"."PUBLIC"."BRILLIANT_BRITISH_CARS" 
FROM @/ui1671516923426 FILE_FORMAT = '"BLABLABLA"."PUBLIC"."CSV_FORMAT"' ON_ERROR = 'ABORT_STATEMENT' 
PURGE = TRUE ;

CREATE FILE FORMAT "BLABLABLA"."PUBLIC".CSV_utf8 TYPE = 'CSV' COMPRESSION = 'AUTO' FIELD_DELIMITER = ',' RECORD_DELIMITER = '\n' 
SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = 'NONE' TRIM_SPACE = FALSE ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE 
ESCAPE = 'NONE' ESCAPE_UNENCLOSED_FIELD = '\134' DATE_FORMAT = 'AUTO' TIMESTAMP_FORMAT = 'AUTO' NULL_IF = ('\\N') encoding = 'iso-8859-1';

select * from Brilliant_British_cars;

alter table Brilliant_British_cars rename to RJ_Brilliant_British_cars;


create or replace table Car_Make_and_Model_Matrix(
  Make	varchar(50),
  Marque	varchar(50),
  Sales  integer
);

alter table Car_Make_and_Model_Matrix rename to RJ_Car_Make_and_Model_Matrix;

create or replace table Cr_Sales_Data(
  StockID integer,	
  Make	varchar(50),
  Model	varchar(50),
  ColorID	integer,
  VehicleType	varchar(50),
  CostPrice	integer,
  SpareParts	integer,
  LaborCost	integer,
  Registration_Date	date,
  Mileage	 integer,
  VehicleAgeInYears integer
);

alter table Cr_Sales_Data rename to RJ_Cr_Sales_Data;


create or replace table Countries(
  CountryID	integer,
  CountryName	varchar(50),
  CountryName_Local	varchar(50),
  CountryFlagURL varchar(50)
);

alter table Countries rename to RJ_Countries;

create or replace table Insurance_Complain_Admin(
  ID integer,
  ComplainDate	string,
  CompletionDate	string,
  CustomerID	integer,
  BrokerID	integer,
  ProductID	integer,
  ComplainPriorityID  integer,	
  ComplainTypeID	integer,
  ComplainSourceID	integer,
  ComplainCategoryID	integer,
  ComplainStatusID	integer,
  AdministratorID	string,
  ClientSatisfaction	varchar(50),
  ExpectedReimbursement  integer
);

alter table Insurance_Complain_Admin rename to RJ_Insurance_Complain_Admin;

select * from Insurance_Complain_Admin;

create or replace table Invoices_And_Invoice_Lines(
  InvoiceLineID	integer,
  InvoiceID	integer,
  StockID integer,
  SalePrice	integer,
  LineItem integer
);

alter table Invoices_And_Invoice_Lines rename to RJ_Invoices_And_Invoice_Lines;

select * from Invoices_And_Invoice_Lines;

create or replace table my_property_sales(
  ID	integer,
  Area	varchar(100),
  NEIGHBORHOOD	varchar(100),
  BUILDING_CLASS_CATEGORY	varchar(100),
  ADDRESS	varchar(100),
  ZIP_CODE	integer,
  LAND_SQUARE_FEET	string,
  GROSS_SQUARE_FEET	string,
  YEAR_BUILT	integer,
  SALE_DATE	varchar(100),
  SALES_PRICE integer
);

alter table my_property_sales rename to RJ_my_property_sales;

select * from my_property_sales;

create or replace table P6_Amazing_mart_EU(
  Order_ID	varchar(100),
  Order_Date	date,
  Customer_Name	varchar(100),
  City	varchar(100),
  Country	varchar(100),
  Region	varchar(100),
  Segment	varchar(100),
  Ship_Date	date,
  Ship_Mode	varchar(100),
  State	varchar(100),
  lon	integer,
  lat   integer
);

alter table P6_Amazing_mart_EU rename to RJ_P6_Amazing_mart_EU;

select * from P6_Amazing_mart_EU; 

create or replace table P6_Euro_Debt_Crises(
  Creditor  varchar(50),	
  Debtor	varchar(50),
  Amount	integer,
  Risk varchar(50)
);

alter table P6_Euro_Debt_Crises rename to RJ_P6_Euro_Debt_Crises;

select * from P6_Euro_Debt_Crises;

create or replace table Long_Term_Unemployment(
  Age	varchar(50),
  Gender	varchar(50),
  Period	varchar(50),
  Unemployed integer
);

alter table Long_Term_Unemployment rename to RJ_Long_Term_Unemployment;

select * from Long_Term_Unemployment;

create or replace table Office_Supplies(
  OrderDate	string,
  Region	string,
  Rep	string,
  Item	string,
  Units	integer,
  Unit_Price integer
);

alter table Office_Supplies rename to RJ_Office_Supplies;

select * from RJ_Office_Supplies;

create or replace table RJ_P6__SuperStore_US(
  Row_ID	integer,
  Order_Priority	varchar(50),
  Discount	integer,
  Unit_Price	integer,
  Shipping_Cost	integer,
  Customer_ID	integer,
  Customer_Name	varchar(100),
  Ship_Mode	varchar(100),
  Customer_Segment	varchar(100),
  Product_Category	varchar(100),
  Product_Sub_Category	varchar(100),
  Product_Container	varchar(100),
  Product_Name	varchar(100),
  Product_Base_Margin	integer,
  Country	varchar(50),
  Region	varchar(50),
  State_or_Province	varchar(50),
  City	varchar(50),
  Postal_Code	integer,
  Order_Date	date,
  Ship_Date	date,
  Profit	integer,
  Quantity_ordered_new	integer,
  Sales	integer,
  Order_ID  integer
);

select * from RJ_P6__SuperStore_US;


create or replace table RJ_UK_Bank_Customers(
  Customer_ID	integer,
  Name	string,
  Surname	string,
  Gender	string,
  Age	integer,
  Region	string,
  Job_Classification	string,
  Date_Joined	string,
  Balance integer 
);

select * from RJ_UK_Bank_Customers;

create or replace table SaleData(
  InvoiceDate	string,
  Make	string,
  CountryName	string,
  IsDealer	string,
  SalePrice	integer,
  CostPrice	integer,
  TotalDiscount	integer,
  DeliveryCharge	integer,
  SpareParts	integer,
  LaborCost	integer,
  ClientName	string,
  Model	string,
  Color	string,
  ReportingYear	integer,
  ReportingMonth	integer,
  Registration_Date	string,
  VehicleType	string,
  InvoiceNumber string
);

create or replace table RJ_Sample_Superstore(
  Row_ID	integer,
  Order_ID	string,
  Order_Date	date,
  Ship_Date	date,
  Ship_Mode	string,
  Customer_ID	string,
  Customer_Name	string,
  Segment	string,
  Country_or_Region	string,
  City	string,
  State	string,
  Postal_Code	integer,
  Region	string,
  Product_ID	string,
  Category	string,
  Sub_Category	string,
  Product_Name	string,
  Sales	integer,
  Quantity	integer,
  Discount	integer,
  Profit integer
);

create or replace table RJ_Store_cities(
  store_id  string,	
  storetype_id	string,
  store_szie	string,
  city_id	string,
  state_stateabr_city	string,
  lat_long string
);


