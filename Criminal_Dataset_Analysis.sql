
-- 1. Display all records from the CriminalCases table.
--Create Database SA_Criminal_DB;
Select * 
from south_africa_criminal_database;

-- 2. Count the total number of cases in the table.
Select Count(*) 
from south_africa_criminal_database;

-- 3. Count the number of cases in each province.
--Select Distinct Province 
--from south_africa_criminal_database;

Select Province, Count(*) AS Casenumber 
from south_africa_criminal_database 
Group By (Province);

Select Count(Province) AS NW 
from south_africa_criminal_database 
Where Province = 'North West';

Select Count(*) AS NC 
from south_africa_criminal_database
Where Province = 'Northern Cape';

Select Count(*) AS WC 
from south_africa_criminal_database 
Where Province = 'Western Cape';

Select Count(Province) AS KZN 
from south_africa_criminal_database 
Where Province = 'KwaZulu-Natal';

Select Count(*) AS EC 
from south_africa_criminal_database 
Where Province = 'Eastern Cape';

Select Count(*) AS L 
from south_africa_criminal_database 
Where Province = 'Limpopo';

Select Count(*) AS G 
from south_africa_criminal_database 
Where Province = 'Gauteng';

Select Count(*) AS MP 
from south_africa_criminal_database 
Where Province = 'Mpumalanga';

Select Count(*) AS FS 
from south_africa_criminal_database 
Where Province = 'Free State';

-- 4. Retrieve all cases where the crime type is Fraud.
Select * 
from south_africa_criminal_database 
Where CrimeType = 'Fraud';

-- 6. Display all cases classified as High or Critical risk.
Select * 
from south_africa_criminal_database 
Where RiskLevel = 'High' or RiskLevel = 'Critical'

-- 5. Count the number of cases for each crime type.
--Select Distinct CrimeType from south_africa_criminal_database;
Select Count(*) AS Fraud 
from south_africa_criminal_database 
Where CrimeType = 'Fraud';

Select Count(*) AS Identity_Theft 
from south_africa_criminal_database 
Where CrimeType = 'Identity Theft';

Select Count(*) AS Money_Laundering from south_africa_criminal_database Where CrimeType = 'Money Laundering';
Select Count(*) AS Cybercrime from south_africa_criminal_database Where CrimeType = 'Cybercrime';
Select Count(*) AS Vehicle_Theft from south_africa_criminal_database Where CrimeType = 'Vehicle Theft';
Select Count(*) AS Drug_Trafficking from south_africa_criminal_database Where CrimeType = 'Drug Trafficking';
Select Count(*) AS Corrpution from south_africa_criminal_database Where CrimeType = 'Corruption';
Select Count(*) AS Armed_Robery from south_africa_criminal_database Where CrimeType = 'Armed Robbery';

-- 7. Calculate the average Financial Score of all suspects.
Select AVG(FinancialScore) AS FinacialScore_AVG from south_africa_criminal_database

-- 8. Find the highest Estimated Fraud Amount recorded.
Select MAX(EstimatedFraudAmount_ZAR) AS Max_Fraud_Value from south_africa_criminal_database Where CrimeType = 'Fraud'

-- 9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.
Select Top 10 EstimatedFraudAmount_ZAR from south_africa_criminal_database ORDER By EstimatedFraudAmount_ZAR DESC;

-- 10. Display all cases where the suspect was arrested.
Select * from south_africa_criminal_database where Arrested = 1;

-- 11. Count how many suspects were arrested versus not arrested.
Select Count(*) As Arrested from south_africa_criminal_database where Arrested = 1;
Select Count(*) AS 'Not Arrested'from south_africa_criminal_database where Arrested = 0;

-- 12. Count the number of cases associated with each bank.
Select Distinct BankInvolved from south_africa_criminal_database;
Select Count(*) As Capitec
from south_africa_criminal_database where BankInvolved ='Capitec';
Select Count(*) AS 'Standard Bank'
from south_africa_criminal_database where BankInvolved = 'Standard Bank';
Select Count(*) As Nedbank
from south_africa_criminal_database where BankInvolved ='Nedbank';
Select Count(*) AS 'African Bank'
from south_africa_criminal_database where BankInvolved = 'African Bank';
Select Count(*) AS FNB
from south_africa_criminal_database where BankInvolved ='FNB';
Select Count(*) AS ABSA from south_africa_criminal_database where BankInvolved ='ABSA';

-- 13. Calculate the total Estimated Fraud Amount per province.
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_NW from south_africa_criminal_database Where Province = 'North West';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_NC from south_africa_criminal_database Where Province = 'Northern Cape';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_WC from south_africa_criminal_database Where Province = 'Western Cape';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_KZN from south_africa_criminal_database Where Province = 'KwaZulu Natal';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_EC from south_africa_criminal_database Where Province = 'Eastern Cape';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_L from south_africa_criminal_database Where Province = 'Limpopo';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_G from south_africa_criminal_database Where Province = 'Gauteng';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_MP from south_africa_criminal_database Where Province = 'Mpumalanga';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_FS from south_africa_criminal_database Where Province = 'Free State';

-- 14. Retrieve all suspects older than 50 years.
Select Fullname from south_africa_criminal_database where age > 50;

-- 15. Calculate the average age of suspects per province.
Select AVG(Age) AS AGE_NW from south_africa_criminal_database Where Province = 'North West';
Select AVG(Age) AS AGE_NC from south_africa_criminal_database Where Province = 'Northern Cape';
Select AVG(Age) AS AGE_WC from south_africa_criminal_database Where Province = 'Western Cape';
Select AVG(Age) AS AGE_KZN from south_africa_criminal_database Where Province = 'KwaZulu-Natal';
Select AVG(Age) AS AGE_EC from south_africa_criminal_database Where Province = 'Eastern Cape';
Select AVG(Age) AS AGE_L from south_africa_criminal_database Where Province = 'Limpopo';
Select AVG(Age) AS AGE_G from south_africa_criminal_database Where Province = 'Gauteng';
Select AVG(Age) AS AGE_MP from south_africa_criminal_database Where Province = 'Mpumalanga';
Select AVG(Age) AS AGE_FS from south_africa_criminal_database Where Province = 'Free State';

-- 16. Display all cases recorded from 2020 onwards.
Select * from south_africa_criminal_database where  Left(CrimeDate,4) = 2020;

-- 17. Count how many cases resulted in a Convicted status.
Select Count(*) As ConvictedCases 
from south_africa_criminal_database
where CaseStatus = 'Convicted';

-- 18. Retrieve all suspects with more than three previous offenses.
Select Fullname
From south_africa_criminal_database
Where PreviousOffenses>3;

-- 19. Show the distribution of cases by Risk Level.
Select Distinct Risklevel from south_africa_criminal_database;
Select count(*) As 'High'
from south_africa_criminal_database
where RiskLevel = 'High';
Select count(*) AS'Low'
from south_africa_criminal_database
where RiskLevel = 'Low';
Select count(*)  As 'Medium'
from south_africa_criminal_database
where RiskLevel = 'Medium';
Select count(*) AS 'Critical'
from south_africa_criminal_database
where RiskLevel = 'Critical';

-- 20. Calculate the total Estimated Fraud Amount across all cases.
Select SUM(Cast(EstimatedFraudAmount_ZAR As bigint)) As Total_Estimated_Fraud_ZAR
From south_africa_criminal_database;

-- 21. Identify the province with the highest number of cases.

-- 22. Retrieve the youngest suspect in the dataset.
SELECT * 
FROM south_africa_criminal_database
WHERE Age = (SELECT MIN(Age) FROM south_africa_criminal_database);

-- 23. Retrieve the oldest suspect in the dataset.
SELECT * 
FROM south_africa_criminal_database
WHERE Age = (SELECT MAX(Age) FROM south_africa_criminal_database);

-- 24. Count the number of cases handled by each investigating officer.
Select Distinct [InvestigatingOfficer]
from south_africa_criminal_database;
Select Count(*) AS Mabena
from south_africa_criminal_database
Where InvestigatingOfficer = 'Officer Mabena';
Select Count(*) AS Naidoo
from south_africa_criminal_database
Where InvestigatingOfficer = 'Officer Naidoo';
Select Count(*) AS Smith
from south_africa_criminal_database
Where InvestigatingOfficer = 'Officer Smith';
Select Count(*) AS Moyo
from south_africa_criminal_database
Where InvestigatingOfficer = 'Officer Moyo';
Select Count(*) AS Nkosi
from south_africa_criminal_database
Where InvestigatingOfficer = 'Officer Nkosi';

-- 25. Calculate the average Estimated Fraud Amount per crime type.
Select Distinct Crimetype from south_africa_criminal_database;
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Fraud from south_africa_criminal_database Where CrimeType = 'Fraud';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Identitiy_Theft from south_africa_criminal_database Where CrimeType  = 'Identiy Theft';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Money_Laundering from south_africa_criminal_database Where CrimeType  = 'Money Laundering';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Cybercrime from south_africa_criminal_database Where CrimeType = 'Cybercrime';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Vehicle_Theft from south_africa_criminal_database Where CrimeType  = 'Vehicle Theft';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Drug_Trafficking from south_africa_criminal_database Where CrimeType  = 'Drug Trafficking';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Corruption from south_africa_criminal_database Where CrimeType  = 'Corruption';
Select Sum(EstimatedFraudAmount_ZAR) AS Esti_Fraud_Amount_Armed_robbery from south_africa_criminal_database Where CrimeType  = 'Armed Robbery';

-- 26. Display all cases occurring in Gauteng province.
Select Distinct Crimetype from south_africa_criminal_database where province = 'Gauteng';

-- 27. Retrieve all Fraud cases classified as High risk.
Select * from south_africa_criminal_database where (CrimeType = 'Fraud' and RiskLevel = 'High');

-- 28. Count the number of cases per year based on CrimeDate.

-- 29. Display all suspects with a Financial Score below 500.
select *
from south_africa_criminal_database
where FinancialScore < 500;

-- 30. Identify the most common Crime Type in the dataset.
Select Crimetype, count(Crimetype)
from south_africa_criminal_database
Group BY CrimeType
Order By Count (CrimeType);