CREATE DATABASE BankLoans;
Use BankLoans;

#Year-wise loan amount stats:
SELECT YEAR(last_pymnt_d) AS Year, SUM(loan_amnt) AS Total_Loan_Amount FROM Loans GROUP BY Year;

#Grade and sub-grade wise revol_bal:
SELECT grade, sub_grade, SUM(revol_bal) AS total_revol_bal FROM Loans GROUP BY grade, sub_grade;

#Total Payment for Verified Status Vs Non Verified Status:
SELECT verification_status, SUM(total_pymnt) AS total_payment FROM Loans GROUP BY verification_status;

#State-wise and last_credit_pull_d wise loan status:
SELECT addr_state, last_credit_pull_d, loan_status, COUNT(*) AS loan_count FROM Loans GROUP BY addr_state, last_credit_pull_d, loan_status;

#Home ownership vs last payment date stats:
SELECT home_ownership, last_pymnt_d, COUNT(*) AS payment_count FROM Loans GROUP BY home_ownership, last_pymnt_d;

