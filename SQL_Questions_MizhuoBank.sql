- customer
- orders table 
cust_id 

custid, first+lname, numberOrders, totalAmt 

select custid,
concat(First,Last), 
count(distinct orderID) as Orders 
sum(amt) as Total_amt
from 
() as combined_table 
group by 1,2;

ou have employee table
emp: EmpId, EMpName, DeptId, HireDate, MgrId, salary
a) By Mistake, duplicate records exists in a table, how can we delete the copy of a record?



select EmpId, EMpName. DeptId,HireDate,MgrId,salary
from
(select EmpId, EMpName, DeptId, HireDate,MgrId,salary
 ,ROW_NUMBER() over (partition by EmpId,DeptId) RowNumber 
from Emp_Details) a
where a.RowNumber = 1;


You are working for OTT platform, where signupdate is trial date, subscription date is you subscribed for OTT 
and termination date is you cancelled subscription
| CustId    | signupdate | subscriptiondate | terminationdate |
| 13343128  | 2020-02-13 | 2020-02-14       | NULL            |
| 13343124  | 2020-02-13 | 2020-02-14       | NULL            |
| 13343100  | 2020-02-13 | 2020-02-14       | NULL            |
| 13343090  | 2020-02-13 | NULL             |  2020-02-13    |
 
a) What are some data checks to do?
b) How many new subscribers have we received every month starting Jan 2017?


--Assuiming we have table above call OTT_table 
SELECT YEAR(subscriptiondate) as YYYY,
MONTH(subscriptiondate) as MOM
COUNT(distinct CustId)  as NewSubscribers
FROM  (
    select month(subscriptiondate) as MOM,CustId 
        from OTT_DATA as a left join 
    select month(subscriptiondate) as MOM,CustId 
        from OTT_DATA as B
            on  a.MOM = (b. MOM - 1) 
            and  a. CustId is Null

)  as NewCust;

   
GROUP BY 1,2;


df['Total'] = df.apply(lambda x: x['Val'].sum())

airflow 
spark 
