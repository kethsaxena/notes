- 👋 Hi, I’m @kethsaxena
- 👀 I’m interested in JAVA,C++,Bash & Python projects
- 🌱 I’m currently learning ... watchdog, log roation , distributed computing
- 💞️ I’m looking to collaborate on ...making python faster and building projects on GraalVM 
- 📫 How to reach me ...please don't 


# __Interview Questions__
1.  [Hadoop](#hadoop)
2.  [Java](#java)
3.  [Scala](#scala)
4.  [Spark](#spark)
5.  [SQL](#sql)
6.  [Python](#python)
7.  [Javascript](#javascript)
8.  [DS](#datastructures)
9.  [FrontEnd](#fecoding Angular)
10. [UI-Design] (#UIDes)
11. [GCP](#gcp)
12. [Requirements](#req)
13. [DevopsINFRA](#devops) 

## HADOOP
 - Hadoop 3.2.x requires Java 8 and works only with Java 8
 - Hadoop 3.3 compiles with Java 8 and works only with Java 11
## JAVA 

1. What is the difference between JDK,JRE,JVM ?
    - BASICS
        - JDK 🚶 
            - is the full suite develper needs to develop and test apps
            - JRE + javac(Compiler) + DEBUGGER + ARCHIVER
        - JRE 🧠 + ❤️ + 🧬  
            - runtime environment includes JVM + libraries 
        - JVM 🧠   
            - is the the Java VirtuaL Machine that exceutes bytecode
        - What is difference between == and .equals? 
            - == compares memory .equals compares content of Objects 
        - static keyword is used to define members 
            - fields
            - methods 
            - nested class
            - that are members of the class rather than to instances of the class 
        - Constructor 
            - 
    - Junit 
        - @Test to label if some function  is a unit test 
        - These methods are public and void 
        - methods🚨
            - assertEquals()
            - assertTrue()
            - assertArrayEquals()
        - @Before, @After, @BeforeClass, @AfterClass
        - ❗IMP: No Failure = Success 
      
    - 
### CODING QUESTIONS

1. Find the second largest number in the array ?

import java.util.*;

public class MyClass {
    public static void main(String args[]) {
      List<Integer> myInt = new ArrayList<Integer>();
      myInt.add(1);
      myInt.add(7);
      myInt.add(2);
      myInt.add(3);
      myInt.add(4);
      myInt.add(8);
      
      
      
      int MaxNum =0;
      int MaxNumIndex =0;
      int SecondLargestNum =0;
      for(int i =0; i <myInt.size();i++){
          if(MaxNum <= myInt.get(i)){
              MaxNum=myInt.get(i);
              MaxNumIndex= i;
          }
      }
      
      myInt.remove(MaxNumIndex);
      
      for(int i =0; i <myInt.size();i++){
          System.out.println(myInt.get(i));
          if(SecondLargestNum <= myInt.get(i)){
              SecondLargestNum=myInt.get(i);
          }
          
      }
      
      System.out.println("Second Largest Number:"+SecondLargestNum);
      
    }
}


2. Question 2: Find if two strings are anagrams of each other ?


a-1
s-2
l-1
m-1
e-1
n=1 

test('salesmen', 'nameless') == true;
test('abcd', 'dabc') == true;

test('anagram', 'grammer') == false;
test('aabc', 'abcc') == false;


import java.util.*

public class myAnagram{
  
  
  boolean isAnagram(String srcStr, String tarStr)
  {
  	boolean assertFlag=False;
    //STEP1
    if(srcStr.length!=tarStr.length){return false;}
    
    //STEP 2 CHECK IF SORTED IS CORRECT
    char a[] =pip i srcStr.toCharArray();
    char b[] = tarStr.toCharArray();
    boolean isSortFlag = Arrays.equals(Arrays.sort(a),Arrays.sort(b)); 
    
    assertFlag =isSortFlag;
    
    //STEP3 CHARACTERS IN STRING 
    HashMap<Character, counter> mycharMapSRC = new HashMap<Character, counter>;
    HashMap<Character, counter> mycharMapTAR = new HashMap<Character, counter>;
    
    //src
    for(int i=0; i<=a.size;a++){
       if(mycharMapSRC.contains(a[i])){
         mycharMapSRC.put(a[i],mycharMapSRC.get(a[i])+1);
       }
       else
       {
       	mycharMapSRC.put(a[i],1);
       }
       	
    }   
    
    //tar
     for(int i=0; i<=b.size;a++){
       if(mycharMapTAR.contains(a[i])){
         mycharMapTAR.put(a[i],mycharMapTAR.get(a[i])+1);
       }
       else
       {
       	mycharMapTAR.put(a[i],1);
       }   	
    }   
    
    
    boolean isHashmapEqual  = assertTrue(mycharMapSRC.equals(mycharMapTAR));
    
    return assertFlag=isHashmapEqual;

  }
  public static void main()
  {
  
    myAnagram()
    //STEP 1
    // first the length of the two strings 
    
    //STEP 2 Split the strings into an array 
  
    
    //STEP 3 Count the unique occurances of the character in the string array
    
    
  }
    
    
    
}


Question 3: Given a 2D array, print it in spiral form.


### Bitwise operators 
## SCALA 
--- 
1. Question 1: Transpose the following Data set ?  
    
    DATA
    
    |name|subject|marks
    |----|-------|----
    |abc |History|75
    |abc |Biology|72
    |abc |Maths  |78
    |pqr |History|65
    |pqr |Biology|89
    |pqr |Maths  |90

    SOLUTION

    1. Read The File 
    2. Write Function to Transpose Data
    3. Show Final Dataset

    CODE SNIPPET 

        val data = "path to file"

        "select name,subject,sum(marks) from data group by name,subject"

        2) STEP 2 

        def Transposedata(dataframe,columns,pivotCol):
            columnValues = list(map(lamda x:x), column)

        TRANSPOSE 

        val pivotDF  = data.groupby("name").pivot("subject").sum("marks")
        pivotDF.show()
    
2. Question 2: Write code to reverse every alternate string of given sentence?

    DATA
    e.g.
    i/p : We love our country
    o/p : ew love ruo country
    
    SOLUTION

        val x  = "We love our country"
        def myReverse(s:String): String = {
            s.reverse 
        }
        x.zipWithIndex.filter(_._2 % 2 == 0).map(s=>reverse(s))
---
## SPARK
1. [Spark Run Modes](#spark-run-modes)
 ### Spark Run Modes
  - Interactive Mode
    - spark-shell
    - notebook
  - Submit Job
    - spark-submit 
    - REST API      
 - Compression Algorithm for paqruet data 
    1. UNCOMPRESSED = 0;
    2. SNAPPY = 1;
    3. GZIP = 2;
    4. LZO = 3;
    5. BROTLI = 4; // Added in 2.4
    6. LZ4 = 5;    // Added in 2.4
    7. ZSTD = 6;   // Added in 2.4
JVM Parameters:
-Dlog4j.configuration=file:log4j.properties -Dlogfile.name=hello-spark -Dspark.yarn.app.container.log.dir=app-logs
 - Creating RDD
     1. Spark Context
     2. Hive Context 
 - Transformations
     - do not execute immediately
     - but build up the Logical execution plan called the DAG
 - narrow transformation
     1. map 
     2. flatmap - can yield more values !  
     3. filter
     4. union 
 - wide transformation 
     1. groupByKey 
     2. reduceByKey - to aggregate values by a key value
     3. join
 - Other Transformations
     - distinct 
     - sample 
     - union, intersect, subtract, cartesian 
-  Actions 
    - Result in an RDD to Driver program
    - Or to external database 
     - collect
     - count 
     - countByValue
     - take 
     - top
     - reduce
  - Lazy Evaluation - 

## SQL
 - Window Functions 
 - CTE 

###

1. DDL
2. DML 
    UPDATE 
     - UPDATE with CASE 

            UPDATE TableName
            SET gender = CASE 
                            WHEN gender = 'M' THEN 'W' 
                            WHEN gender = 'W' THEN 'M'
                         ELSE gender END

2. DIMENSION MODELLING 


SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.subject_name) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations
ON Students.student_id = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name;
### Functions

1. COALESCE - used to handle **null** values. If there is null value in column and you want to include in result set, you can COALESCE(Column Name, int or String value)

 spark-submit --class guru.learningjournal.spark.examples.HelloSpark /mnt/c/projects/scalaProjects/02_sparkExamples/SparkProgrammingInScala/01-HelloSpark/target/scala-2.13/hellospark_2.13-0.1.jar Dlog4j.configuration=file:log4j.properties Dlogfile.name=hello spark Dspark.yarn.app.container.log.dir =app logs

spark-submit  --master local --class guru.learningjournal.spark.examples.HelloSpark --files /mnt/c/projects/scalaProjects/02_sparkExamples/SparkProgrammingInScala/01-HelloSpark/log4j.properties /mnt/c/projects/scalaProjects/02_sparkExamples/SparkProgrammingInScala/01-HelloSpark/data/sample.csv /target/scala-2.13/hellospark_2.13-0.1.jar 
## python
1. regex 
    - search 
    - match 
    2. 


## javascript

1. Installation 
 
 - install nvm shell script
 - install node LTS versio
 - install Angular CLI 

2. ng
    - Basic Angular coommands 🐥
        - ng build: create distribution folder called dist👨‍🍼
        - ng e2e: End to End Test 
            - Protactor, Cypress, Nightwatch JS 
            - Cypress 
        - ng generate ⌛
        - ng lint:run code quality checks 🔍
        - ng new: create a starter project🥇
        - ng test - unit test ✅❌⚠️
        - ng serve - Builds and serves your app 🧑‍💻️
      - Testing framework Jasmine uses Karma or Karma server to run test
          - Frontend World typically has Specification instead of unit tests
          - Unit Test run these specifications by by specifying them ".spec.ts" files 
          - Angular CLI hadnles test by default specififed in angular.json 
              - or Developer can use ```ng generate``` to create custom  Karma.conf.js   
      - Folder Structure 📂 --- 📂
          -  src
              - app: contains your components
              - assets: contains your graphics pcitures 
              - enviornment:
              - package.json contains your angualr dependencies 
                  - downloaded to node_modules folder 
      - Components
          - Divide The UI into Components 
          - A component has 3 parts: HTML Component + CSS + Typescript
              - Must Have Attributes using Decroators 
              - Decorators used to specify a JS class is Angular Component
          - 
## datastructure

1. Array 
2. LinkedList 
3. Stack
4. Queue
5. Hash Table   
6. Tree
7. Graph  


## UIDes
1. Free hand Lines
    - Smoothing 
    - Node tool
2. Curved Line and bezier Curves  

## gcp
Section 1: Digital Transformation with Google Cloud (~17% of the exam)

1.1 Why Cloud Technology is Transforming Business

       ●  Explain why and how the cloud is revolutionizing businesses.

            a. Define the terms: cloud, cloud technology, data, digital transformation, cloud-native, open source, open standard.

            b. Describe the differences between cloud technology and traditional or on-premises technology.

            c. Explain the benefits of cloud technology to a business’ digital transformation: this technology is scalable, flexible, agile, secure, cost-effective and offers strategic value.

            d. Describe the primary benefits of on-premises infrastructure, public cloud, private cloud, hybrid cloud, and multicloud and differentiate between them.

            e. Describe the main business transformation benefits of Google Cloud: intelligence, freedom, collaboration, trust, and sustainability.

            f. Describe the implications and risks for organizations that do not adopt new technology.

            g. Describe the drivers and challenges that lead organizations to undergo a digital transformation.

            h. Describe the transformation cloud and how it accelerates an organization’s digital transformation through app and infrastructure modernization, data democratization, people connections, and trusted transactions.

1.2 Fundamental Cloud Concepts

       ●  Explain general cloud concepts.

            a. Describe how transitioning to a cloud infrastructure affects flexibility, scalability, reliability, elasticity, agility, and total cost of ownership (TCO). Apply these concepts to various business use cases.
              
               -- TCO: Cloud Adoption Vs Running their Own 

            b. Explain how an organization’s transition from an on-premises environment to the cloud shifts their capital expenditures (CapEx) to operational expenditures (OpEx), and how that affects their total cost of ownership (TCO).
              -- CapEx: One time Cost 
              -- OpEx: Recurring Cost
                   -- Yearly Website hosting
                   -- Domain Registeration
              Power, Cooling Floor Space, Management
               - Budgeting is OnDemand  

            c. Identify when private, hybrid, or multicloud infrastructures best apply to different business use cases.
               --

            d. Define basic network infrastructure terminology, including: IP address; internet service provider (ISP); domain name server (DNS), regions, and zones; fiber optics; subsea cables; network edge data centers, latency; and bandwidth.

            e. Discuss how Google Cloud supports digital transformation with global infrastructure and data centers connected by a fast, reliable network.
              -- OnPrem 🚘 |           IAAS ⏱️ 🚘          |             PAAS 🤙🚖                           | SAAS 🚌
              
             IAAS                   
             - Infinite scalable INFRA                                     
             - Reliable  
             - Felxible                                                                                 
                                                                           
             PAAS
                  - CloudRun, BigQuery 
                  - Reduces Development Time   
                  - Vendors manage Maintenance of Underlying Infra      
             SAAS
                  - Full Web Application                                                                          
                  - Low maintenance  
                  - Without Owning Infrastructure 
                  - Reduces management                                                    
                                
              Security 

                  Cloud Provider
                    - Hardware 
                    - Network
                    - Physical Activity                
                  Customer
                    - Configurations 
                    - Access Policies 
                    - User data                
                                                
            How to decide 
            1. Business Needs
            2. Required Functionaloty 
            3. Available Expertise
            
          Summary 
              -Cloud Computing
              - Choosing the best CCM
              -  The shared responsibility 

1.3 Cloud Computing Models and Shared Responsibility

       ●  Discuss the benefits and tradeoffs of using infrastructure as a service (IaaS); platform as a service (PaaS); and software as a service (SaaS).

            a. Define IaaS, PaaS, and SaaS.

            b. Compare and contrast the benefits and tradeoffs of IaaS, PaaS, and SaaS including total cost of ownership (TCO), flexibility, shared responsibilities, management level, and necessary staffing and technical expertise.

            c. Determine which computing model (IaaS, PaaS, SaaS) applies to various business scenarios and use cases.

            d. Describe the cloud shared responsibility model. Compare which responsibilities are the cloud provider’s, and which responsibilities are the customer’s for on-premises and cloud computing models (IaaS, PaaS, SaaS).

Section 2: Exploring Data Transformation with Google Cloud (~16% of the exam)

2.1 The Value of Data

       ●  Describe the intrinsic role that data plays in an organizations’ digital transformation.

            a. Explain how data generates business insights, drives decision making, and creates new value.

            b. Differentiate between basic data management concepts, in particular: databases; data warehouses; data lakes.

            c. Explain how organizations can create value by using their current data, collecting new data, and sourcing data externally.

            d. Describe how the cloud unlocks business value from all types of data, including structured data and previously untapped unstructured data.

            e. Discuss the main data value chain concepts and terms.

            f. Explain how data governance is essential to a successful data journey.

2.2 Google Cloud Data Management Solutions

       ●  Determine which Google Cloud data management products are applicable to different business use cases.

            a. Differentiate between Google Cloud data management options including data type and common business use case, including: Cloud Storage; Cloud Spanner; Cloud SQL; Cloud Bigtable; BigQuery; Firestore.

            b. Define key data management concepts and terms, including: relational; non-relational; object storage; structured query language (SQL); NoSQL.

            c. Describe the benefits of using BigQuery as a serverless, managed data warehouse and analytics engine that can be used in a multicloud environment.

            d. Differentiate between storage classes in Cloud Storage regarding cost and frequency of access, including: Standard; Nearline; Coldline; Archive.

            e. Describe the ways that an organization can migrate or modernize their current database in the cloud.

2.3 Making Data Useful and Accessible

       ●  Discuss how smart analytics, business intelligence tools, and streaming analytics can add value in different business use cases.

            a. Describe how Looker democratizes access to data by empowering individuals to self-serve business intelligence and create insights.

            b. Discuss the value of analyzing and visualizing data from BigQuery in Looker to create real-time reports, dashboards, and integrating data into workflows.

            c. Describe how streaming analytics in real time makes data more useful and generates business value.

            d. Describe the main Google Cloud products that modernize data pipelines, including Pub/Sub and Dataflow.

Section 3: Innovating with Google Cloud Artificial Intelligence (~16% of the exam)

3.1 AI and ML Fundamentals

       ●  Discuss the main AI and ML concepts, and explain how ML can create business value.

            a. Define artificial intelligence (AI) and machine learning (ML).

            b. Differentiate the capabilities of AI and ML from data analytics and business intelligence.

            c. Discuss the types of problems that ML can solve.

            d. Explain the business value ML creates, including: ability to work with large datasets; scaling business decisions; and unlocking unstructured data.

            e. Explain why high-quality, accurate data is essential for successful ML models.

            f. Discuss the importance of explainable and responsible AI

3.2 Google Cloud’s AI and ML solutions

       ●  Discuss the range of Google Cloud AI and ML solutions and products available, and how to select the most appropriate solution for different business use cases.

            a. Explain which decisions and tradeoffs organizations need to consider when selecting Google Cloud AI/ML solutions and products, including: speed; effort; differentiation; required expertise.

            b. Discuss which Google Cloud AI and ML solutions and products might apply given different business use cases, including: pre-trained APIs; AutoML; build custom models.

3.3 Building and using Google Cloud AI and ML solutions

       ●  Explain how Google Cloud’s pre-trained API, AutoML, and custom AI/ML products can create business value.

            a. Discuss how BigQuery ML lets users create and execute machine learning models in BigQuery by using standard SQL queries.

            b. Select which Google Cloud pre-trained API best applies to different business use cases, including: Natural Language API, Vision API, Cloud Translation API, Speech-to-Text API, and Text-to-Speech API.

            c. Explain how an organization can create business value by using their own data to train custom ML models with AutoML.

            d. Discuss how building custom models by using Google Cloud’s Vertex AI can create opportunities for business differentiation.

            e. Recognize TensorFlow as an end-to-end open source set of tools for building and training machine learning models and that Cloud Tensor Processing Unit (TPU) is Google’s proprietary hardware optimized for TensorFlow and ML performance. 

Section 4: Modernize Infrastructure and Applications with Google Cloud (~17% of the exam)

4.1 Cloud modernization and migration

       ●  Explain why modernization and migration to the cloud are important steps in an organization’s transformation journey, and how each application might have a different path.

            a. Discuss benefits of infrastructure modernization and application modernization by using Google Cloud.

            b. Define the main cloud migration terms, including: workload; retire; retain; rehost; lift and shift; replatform; move and improve; refactor; reimagine.

4.2 Computing in the cloud

       ●  Discuss the options for and advantages of running compute workloads in the cloud.

            a. Define the main cloud compute terms, including: virtual machines (VMs); containerization; containers; microservices; serverless computing; preemptible VMs; Kubernetes, autoscaling, load balancing.

            b. Describe the benefits and business value of running compute workloads in the cloud.

            c. Explain the choices and constraints between different compute options.

            d. Discuss the business value of using Compute Engine to create and run virtual machines on Google’s infrastructure.

            e. Discuss the business value of choosing a rehost migration path for specialized legacy applications.

4.3 Serverless computing

       ●  Discuss the advantages of serverless computing in application modernization.

            a. Explain the benefits of serverless computing.

            b. Discuss the business value of using serverless computing Google Cloud products, including: Cloud Run; App Engine; Cloud Functions.

4.4 Containers in the cloud

       ●  Discuss the advantages of using containers in application modernization.

            a. Discuss the advantages of modern cloud application development.

            b. Differentiate between virtual machines and containers.

            c. Discuss the main benefits of containers and microservices for application modernization.

            d. Discuss the business value of using Google Cloud products to deploy containers, including: Google Kubernetes Engine (GKE); Cloud Run.

4.5 The value of APIs

       ●  Explain the business value of application programming interfaces (APIs).

            a. Define application programming interface (API).

            b. Explain how organizations can create new business opportunities by exposing and monetizing public-facing APIs.

            c. Discuss the business value of using Apigee API Management.

4.6 Hybrid and multi-cloud

       ●  Discuss the business reasons for choosing hybrid or multi-cloud strategies and how Anthos enables these strategies.

            a. Discuss the reasons and use cases for why organizations choose a hybrid cloud or multi-cloud strategy.

            b. Describe the business value of using Anthos as a single control panel for the management of hybrid or multicloud infrastructure.

Section 5: Trust and Security with Google Cloud (~17% of the exam)

5.1 Trust and security in the cloud

       ●  Discuss fundamental cloud security concepts.

            a. Describe today’s top cybersecurity threats and business implications.

            b. Differentiate between cloud security and traditional on-premises security. 

            c. Describe the importance of control, compliance, confidentiality, integrity, and availability in a cloud security model.

            d. Define key security terms and concepts. 

5.2 Google’s trusted infrastructure

       ●  Explain the business value of Google’s defense-in-depth multilayered approach to infrastructure security.

            a. Describe the benefits of Google designing and building its own data centers, using purpose-built servers, networking, and custom security hardware / software.

            b. Describe the role of encryption in securing an organization’s data and the ways that it can protect data exposed to risks in different states.

            c. Differentiate between authentication, authorization, and auditing.

            d. Describe the benefits of using two-step verification (2SV) and IAM.

            e. Describe how an organization can protect against network attacks using Google products, including distributed denial-of-service (DDoS) using Google Cloud Armor.

            f. Define Security Operations (SecOps) in the cloud and describe its business benefits.

5.3 Google Cloud’s trust principles and compliance

       ●  Describe how Google Cloud earns and maintains customer trust in the cloud.

            a. Discuss how Google Cloud's trust principles are a commitment to our shared responsibility for protecting and managing an organization’s data in the cloud.

            b. Describe how sharing transparency reports and undergoing independent third-party audits support customer trust in​​Google.

            c. Describe​​why data sovereignty and data residency may be requirements and how Google Cloud offers organizations the ability to control where their data is stored.

            d. Describe how Google Cloud compliance resource center and Compliance Reports Manager support industry and regional compliance needs.

Section 6: Scaling with Google Cloud Operations (~17% of the exam)

6.1 Financial governance and managing cloud costs

       ●  Discuss how Google Cloud supports an organization's financial governance and ability to control their cloud costs.

            a. Discuss how using cloud financial governance best practices provides predictability and control for cloud resources.

            b. Define important cloud cost-management terms and concepts.

            c. Discuss the benefits of using the resource hierarchy to control access.

            d. Describe the benefit of controlling cloud consumption using resource quota policies and budget threshold rules.

            e. Discuss how organizations can visualize their cost data by using Cloud Billing Reports.

6.2 Operational excellence and reliability at scale

       ●  Discuss the fundamental concepts of modern operations, reliability, and resilience in the cloud.

            a. Describe the benefits of modernizing operations by using Google Cloud.

            b. Define important cloud operations terms.

            c. Describe the importance of designing resilient, fault-tolerant, and scalable infrastructure and processes for high availability and disaster recovery.

            d. Define key cloud reliability, DevOps, and SRE terms.

            e. Describe how organizations benefit from using Google Cloud Customer Care to support their cloud adoption.

            f. Describe the life of a support case during the Google Cloud Customer Care process.

6.3 Sustainability with Google Cloud

       ●  Discuss how Google Cloud helps organizations meet sustainability goals and reduce environmental impact.

           a. Describe Google Cloud’s commitment to sustainability and reducing environmental impact.

           b. Discuss how Google Cloud provides products to support organizations’ sustainability goals.
## req
1. Have you implemented real-time matching algorithms in previous projects?Have you implemented real-time matching algorithms in previous projects? 
2. Are you familiar with technologies and frameworks that support instant connectivity in web or mobile applications?Are you familiar with technologies and frameworks that support instant connectivity in web or mobile applications? 
3. Can you successfully design and implement a matching algorithm in less than 3-months from scratch?(No data)Can you successfully design and implement a matching algorithm in less than 3-months from scratch?(No data) 
4. Are you familiar with technologies and frameworks that support instant connectivity in web or mobile applications?Are you familiar with technologies and frameworks that support instant connectivity in web or mobile applications? 
5. Ideal candidates must have an entrepreneurial mindset. As an early-stage startup, our compensation plan currently consists solely of equity and deferred salary. Would this arrangement work for you? 

## devops
### ORACLE VM 
