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
