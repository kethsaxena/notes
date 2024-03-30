- 👋 Hi, I’m @Praketa Saxena, engineer at Matrix for Morgan n Stanley
- 👀 I’m interested in building cool, accounatble projects


# __Notes__
1. [Week19Feb2024](#Week19Feb2024)
2. [Databricks](#Databricks)
3. [LINKS](#links)
4. [CONTACTS](#cinfo) 

## Week19Feb2024
 1. O
 2. Cybersecurity Training 
 3. Databricks Training
## Week26Feb2024

## Databricks
### Pre-Req 
1. Cloud computing virtual machines, object storage
2. Data warehouses and data lakes
3. Basic SQL concepts (select, filter, groupby, join, etc)
4. Spark SQL and PySpark 
    - Beginner programming experience with Python (syntax, conditions, loops, functions)
    - Beginner programming experience with the Spark DataFrame API (PySpark)
    - Configure DataFrameReader and DataFrameWriter to read and write data (PySpark)
    - Express query transformations using DataFrame methods and Column expressions (PySpark)
    - Navigate the Spark documentation to identify built-in functions for various transformations and data types (PySpark)

    - Databricks Runtime: This course runs on DBR 11.3. Please use this DBR when working through this course.
### Data Analysis with Data bricks

### Data Engineering with Data bricks 
#### AIM
- Databricks Lakehouse Platform 
- Data Science & Engineering Workspace
- Create and Manage clusters using the UI
- Run multi-cell notebooks
- Integrate Git support 

#### UI 
- REPOS 
    - Git interation --> Github Token

#### Admin Computer resources 
Workloads --> Cluster 

1. Workloads
    - Notebook 
    - Job 
    - Pipeline 
2. Cluster 
    - It is a group of nodes or VM instances
    - Typical cluster pattern
                 -- Node1  
        - Driver -- Node2
                 -- Node3
    - Type of Databricks Cluster 
        1. All Purpose cluter
            - for: interactive notebooks
            - diff: config info saved for 70 Clusters for upto 30 Days 
        2. Job Cluster 
            - for: running automated jobs
            - diff: config info saved for last 30  terminated clusters
    - Cluster Cinfuguration 
        - Cluster mode 
            1. Standard (Multi-Node)
                - Default mode
                - requires atleast two VM instances
            
            2. Single node 
                - Usually for light exploratory analysis 
        - Databricks Runtime Environment 
            1. STandard Runtime for apache spark 
            2. Machine learning Augmented with tensor flow, Keras, PyTorch, and XGboost
            3. Optional Photon plug to speed up SQL workloads 
    - Access Modes
        1. Single User         | Yes Visibility to user 
        2. Shared              | for Premium  
        3. No Isolation Shared |
        4. Custom 
    - Cluster Policies 
        - Admin User needed 
        - Typical Adjustments
            1. Standardize Cluster config
            2. Provide templates for different use cases 
            3. Simplify user exeprience 
            4. Prevent excessive use and control cost
            5. Enforce correct tagging for book keeping DS workloads

### UDFs
1. SQL UDF 

### Managed Data with Delta Lake 
1. Delta lake Transactional Guarantees 
2. Use Delta Lake Data Definition Language(DDL)
3. CTAS
4. Use SQL to perform complete and incremental udpates

Data lakehouse on top of cloud storage
- Optimised for Object storage 
- Built for scalable metadata Handling

- Decouples Compute and Object Storage

- Delta Lake bring ACID to object storage

Atomicity 
Consistency 
Isolation
Durability 

### Version and Optimize Delta Table 
### Build Data pipelines with Delta Live Tables 
1. Delta Live tables (DLT)
 - LIVE keyword
 - STREAMING LIVE TABLE
    - It is STATEFUL
    - ensures eaxctly-once processing
    - Inputs are only read once 

 - SQL to DLT 
    1. Create Live Table .DBC Notebooks
    2. Create a pipeline using workflows 
    3. START the pipeline

 - Dev DLT vs Prod DLT
 - CONSTRAINTS with EXPECTATIONS  then ACTION
    - ACTION
     1. Track
     2. Drop
     3. Abort 

 - Why use STREAMING Tables ?
   - for ingestion
   - for Autoloader using cloud_files that keeps track of Files that are read
   - STREAM function to stream data from Table 
     - RULES FOR STREAM function
       1. Must be Append only source
       2. Not define an aggregate function
       3. be a table on which you have executed DML
   - How can I use Parameters ?
    1. Modularize your code with Parameters
   - CDC - Change Data Capture 
      - with APPLY Changes INTO LIVE.cities
         - A sequence that can be used to order changes 
### 3.1 Databricks Workflows 
- Two Main Task Orchestration services : DLT or Datbricks workflows 
![DLT Vs WKFLOW](images\image.png)

- WORKFLOW
  1. Orchestration of dependent Jobs
  2. Machine learning task 
  3. Arbitary Code , External API calls , Custom Task 
  4. DLT Notebooks as a task in workflow 

  #### WROKFLOW PATTERNS
  1. Sequence 
  2. Funnel
  3. Fan-out

  - Shared Job clusters
  - reduce cost & speed initial cost time 
  - 
### 6.0 Data Data Governance 
1. Availability 
2. Usability
3. Integrity 
4. Security

Data Access Control 
Data Access Audit 
Data Lineage 
Data Dsicovery 

Unity Catalog 
 - Central hub for auditing Data Assets 
 1. Metastore 
 2. Additive to Hive_metastore 
 3. The assets in Hive_metastore have special reference to assets 
 4. 3 Level Namespace : CATALOG --> SCHEMA  --> TABLE + VIEW + FUNCTIONS 

 #### TABLE 
  - Managed table 
    - Table are created in location on Metastore 
    - Dropping the Data deletes DATA + METADATA 
  - External table 
    - Dropping the data does not delete the data files only the Metadata 
    -  
 
 #### VIEW 
  - Read only , cannot modify the data

UNITY CATALOG ARCHITECTURE 

METASTORE 
 1. BOX1-Store Crdentials   
 2. BOX2-External Location
 3. BOX3-Catalog 
 4. BOX4-Shared - Delta Shaing across organizations
 5. BOX5-Recipient - user or the members that share the delta table with  

IDENTITY FEDERATION 

DATA ACCESS CONTOL 

Defined once Principle 
|User/Group management|Metastore|Access Control|  


Query Lifecycle 
1. User --> `Send Query` --> Compute 
2. Compute(EC3 or Server Node): `Checks namespace , metadata and grants` : Unity Catalog   
3. Unity Catalog : `Retrieves IAM Role or Service Principle | Retruns Token + Signed URL`: Compute 
4. Compute: `Requests data from URL with Short Lived Token`: Audit Log 
5.  


### Advanced Data Engineering 
1. Describe the computational model used by spark structured streaming 
2. Configure required option to perform a streaming on a source
3. Describe end to end fault tolerance 
4. Create an aggregation and  watermark on a streaming dataset  


#### Streaming data concepts

1. Bounded and Unbounded datasets 
2. Comapre and Contrast Streaming and Batch data processing
3. Challenges of streaming processing 

Streaming: COntinuous and Unbounded data 
 - DB Changes data feeds
 - Clickstreams
 - Machine and Application Log
 - Application Events
 - Mobile and IOT Data 

 Stream Processing USe case
  - Real time Reporting 
  - Notifications 
  - Incremental ETL
  - Update Data to serve in real time
  - Real time decision making 
  - Online machine learning 

1. Bounded and Unbounded datasets 
                   BOUNDED 
- Has a finite and unchanging structure at the time of processing 
- The order is static 
- Analogy: Vehicles in a parking lot 

                   UNBOUNDED 
- Has an infinite and continuously  changing structure at time of processing
- The order not always sequential
- Vehicles on a highway 




### Data Engineering Associate Exam Guide 

1. Databricks Lake house Platform
2. ELT with Apache Spark
3. Incremental Data Processing 
4. Production Pipelines
5. Data Governance

1. Databricks Tooling(20%)
    1. Web app
    2. clusters
    3. jobs
    4. DBSQL 
    5. relational Entitites 
    6. Repos
    7. Spark API 
    8. Delta LAKE API 
    9. Databricks CLI 
    10. Databricks REST API 
        - ![Databricks Tooling:](images\03_ToolingAPI.PNG)
2. Datbricks API
    1. DButils
    2. ML Flow
    3. magic commands
3. Apache Spark 
4. Delta Lake
5. Databricks CLI 
6. REST API 
![Web App:Tooling](images\02_WebApp.png)

1. Self Assessment on Databricks Tooling(20%)
 - Identify potential execution problems by examning event logs
 - Orhcestrate multiple tasks as a DAG
 - Configure dashboards for visually reporting and monitoring
 - Identify differences between managed and external tables during dropping and renaming 
 - Load and model a registered in MLflow as part of ETL pipeline 
 - Run Bash commands on driver 
2. Data Processing Topic (30%)
  a) Building batch-processed ETL pipelines
    - Processing upstream CDC data
    - Propogating changes from batch jobs
    - Gold table output
    - Detetcting changes in the Lakehouse 
    - Join order & hints for performance
    - Optimising partition size for writes 
  b) Building incrementally processed ETL pipelines 
    - Structured Streaming concepts
    - Watermark / Window 
    - Checkpointing 
    - Stream trigger intervals
    - Stream- static joins
    - Autocompaction / AutoOptimize
  c) Optimising Workloads 
   - ![Optimize Workloads:](images\04_OptimiWorkloads.PNG)
  d) Deduplicating data 
  e) Using Change Data Capture(CDC) to propogate changes 
3. Data Modeliing (20%)
 - Lakehouse Concepts
   - Bronze-silver-gold Architecture
    ![bsg:](images\05_BSGArchitecture.PNG)
   - Database,tables, views 
    ![DTV:](images\06_BSGArchitecture.PNG) 
   - Optimizing physical layout
    ![DTV:](images\07_Optimising.PNG)
   
 - General data modelling concepts
   - Keys, constraints, lookup tables, slowly changing dimensions 
    ![08_GDM](images\06_BSGArchitecture.PNG)  
4. Security and Governance (10%)
    ![09_SnG](images\09_SecurityNGovernance.PNG) 
5. Monitoring and Logging (10%)
    ![10_MonLog](images\10_MonitoringNLogging.PNG)




## LINKS

1. HSA
3. 401K 
3. [SALESFORCE:Karla Morrobel](karla.morrobel@matrix-ifs.com) 
4. [Trinet](https://identity.trinet.com/)