# __Notes__
1. [Databricks SQL](#dbSQL)
2. [Data management](#DM)
3. [SQLLakehouse](#LakehouseSQL)
4. [Data Visualization and Dashboarding](#DVD)


## dbSQL
## Databricks SQL 
   - DB warehouse offers scalable compute resources decoupled from storage
   - If you using Unity Catalog
       - tables use a three-tier namespace with the following format: <catalog-name>.<schema-name>.<table-name>
    - Else can use a default tier namespace
    - DB waareHouse 
        - A SQL warehouse is a compute resource that lets you query and explore data on Databricks.
    - DB Serverless SQL, the Databricks platform manages a pool of compute instances that are ready to be assigned to a user whenever a workload is initiated
    - https://www.databricks.com/blog/best-practices-cost-management-databricks
    - DBU Number of Nodes * computational power of the underlying VM instance
    - Unit Testing 
        - https://docs.databricks.com/en/notebooks/testing.html 
    - Materilised Views 
        - https://docs.databricks.com/en/sql/user/materialized-views.html
        - Databricks differ from other implementations as the results returned reflect the state of data when the materialized view was last refreshed rather than always updating results when the materialized view is queried.
    - VACUUM 
    - OPTIMIZE


## DM
## Data Management 

## LakehouseSQL
## SQLLakehouse

## DVD
## Data visualization and Dashboarding 
  1. https://docs.databricks.com/en/notebooks/dashboards.html 
  - Typically add NOTEBOOK visualizations to new or Existing dashboards 
  - Create a scheduled job to refresh a dashboard
  - ALERTS: https://docs.databricks.com/en/sql/user/alerts/index.html 
  - Dashboard Parameters: https://docs.databricks.com/en/dashboards/parameters.html
  2. Training: https://files.training.databricks.com/distributions/data-analysis-with-databricks/v1.1.5/site/DAWD-03-4-Demo-Notifying-Stakeholders.html 

## FLASH CARDS
- https://quizlet.com/gb/854855748/databricks-data-analyst-exam-flash-cards/  
